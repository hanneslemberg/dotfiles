function g-branches-clean() {
    git branch -vv -a | grep -v "\*" | grep gone | awk '{print $1}' | xargs -n 1 git branch -d
}
