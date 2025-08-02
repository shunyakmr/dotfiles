git_push() {
    git add .
    git commit -m "$*"
    git push -u origin main
}

alias gp='git_push'

npp() {
    if [ -z "$1" ]; then
        "/mnt/c/Program Files/Notepad++/notepad++.exe"
    else
        local realfile
        realfile=$(readlink -f "$1")
        "/mnt/c/Program Files/Notepad++/notepad++.exe" "$(wslpath -w "$realfile")"
    fi

    echo "HELLO"
}

word() {
    if [ -z "$1" ]; then
        "/mnt/c/Program Files/Microsoft Office/root/Office16/WINWORD.EXE"
    else
        "/mnt/c/Program Files/Microsoft Office/root/Office16/WINWORD.EXE" "$(wslpath -w "$1")"
    fi
}
