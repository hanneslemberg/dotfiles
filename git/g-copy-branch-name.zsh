function g-copy-branch-name() {
    branch=$(git rev-parse --abbrev-ref HEAD)
    echo $branch
    echo $branch | tr -d '\n' | tr -d ' ' | pbcopy
}
