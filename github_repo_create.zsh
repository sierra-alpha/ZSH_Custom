# uses github api to create a new repo using https
# some files need to be comitted to the local for push command to succeed

function github_repo_create() {
    setopt verbose
    local user reponame private description curltext remotetext pushlinktext branch i j
    if [[ ARGC -lt 2 ]]; then
        echo "No arguments past to function comand should look like below:"
        echo "ghrc <username> <reponame> -p -d <description>\n"
        echo "-p                = use this option to set github repo as private"
        echo "-d (optional)     = a description and requires a description after it"
    else
        user=$1
        reponame=$2
        private=""
        description=""
        (( j = 1 ))
        for i in "$@"
        do
            if [[ "$i" == -p ]]; then
                private=", \"private\":\"true\""
            fi
            if [[ "$i" == -d ]]; then
                (( j = j + 1 ))
                description=", \"description\":\"$@[$j]\""
                (( j = j - 1 ))
            fi
            (( j++ ))
        done
        echo "User: $user Repo Name: $reponame options: $private $description"
        curltext="curl -u '${user}' https://api.github.com/user/repos -d '{\"name\":\"${reponame}\"${private}${description} }'"
        echo "Curling now\n"$curltext
        eval $curltext
        if [[ -n "$(command git show-ref origin/$(git_current_branch) 2> /dev/null)" ]]; then
            echo "Old origin exists, renamin original origin\ngit remote rename origin old-origin"
            git remote rename origin old-origin
        fi
        remotetext="git remote add origin https://github.com/${user}/${reponame}.git"
        echo "Setting remote now\n${remotetext}"
        eval $remotetext
        pushlinktext="git push --set-upstream origin $(git_current_branch)"
        echo "pushing\n${pushlinktext}"
        eval $pushlinktext
    fi
    unsetopt verbose
}