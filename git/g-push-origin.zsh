function g-push-origin() {
    name=$(g-copy-branch-name)

    opt=""
    if [[ "$1" == "--force" ]]; then
        opt="-f"

        echo $fg[yellow]force$fg[default] pushing $name to origin/$name
        read ok\?y/N

        if [[ "${ok}" != "y" ]]; then
            echo Cancelled.
            return
        fi

    else 
        echo pushing $name to origin/$name
    fi

    git push origin -u "${name}":"${name}" ${opt}
}
