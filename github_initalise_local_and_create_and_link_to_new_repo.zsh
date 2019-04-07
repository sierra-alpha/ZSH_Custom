# uses github api to create a new repo using https
# some files need to be comitted to the local for push command to succeed

function github_initalise_local_and_create_and_link_to_new_repo() {
    setopt verbose
    echo "git init"
    git init
    echo "touch readme.md"
    touch readme.md
    echo "git add ."
    git add .
    echo "git commit -m \"Repo initialisation\""
    git commit -m "Repo initialisation"
    github_repo_create "$@"
    unsetopt verbose
}