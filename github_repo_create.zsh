# uses github api to create a new repo using https
# some files need to be comitted to the local for push command to succeed

function ghrc() {
    setopt verbose
    local user reponame private description curltext remotetext pushlinktext branch i
    if [[ ARGC -lt 2 ]]; then
        echo "No arguments past to function comand should look like below:"
        echo "ghrc <username> <reponame> -p -d <description>\n"
        echo "-p                = use this option to set github repo as private"
        echo "-d (optional)     = a description and requires a description after it"
        exit
    fi
    user=$1
    reponame=$2
    if [[ "$@" == -p ]]; then
        private=", \"private\":\"true\""
    else
        private=""
    fi
    description=""
    for i in {2..ARGC}
    do
        if [[ $i == -d ]]; then
            description=", \"description\":\"${(i+1)}\""
            break
        fi
    done
    echo "User: "$user" Repo Name: "$reponame" Private: "$private" Description: "$description
    curltext="curl -u '"$user"' https://api.github.com/user/repos -d '{\"name\":\"${reponame}\"${private}${description}}'"
    echo "Curling now\n"$curltext
    eval $curltext
    remotetext="git remote add origin https://github.com/"$user"/"$reponame".git"
    echo "Setting remote now\n"$remotetext
    eval $remotetext
    pushlinktext="git push --set-upstream origin "$(git_current_branch)
    echo "pushing\n"$pushlinktext
    eval $pushlinktext
    unsetopt verbose
}