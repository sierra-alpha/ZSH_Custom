# uses github api to create a new repo using https
# some files need to be comitted to the local for push command to succeed

function github_initalise_local_and_create_and_link_to_new_repo() {
    setopt verbose
    local read_file="README.md"
    echo "git init"
    git init
    if [ -s "$read_file" ]
        then
        echo "Touching $read_file"
        touch "$read_file"
        else
        echo "creating $read_file"
        echo "This is the initial $read_file" > "$read_file"
    fi
    echo "git add ."
    git add .
    echo "git commit -m \"Repo initialisation\""
    git commit -m "Repo initialisation"
    github_repo_create "$@"
    unsetopt verbose
}