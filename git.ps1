function gaa() {
    git add -A
}

function gcb($branchName) {
    git checkout -b $branchName
}

function gsw($branchName) {
    git switch $branchName
}

function gcm($message) {
    git commit -m $message
}

function gcma($message) {
    gaa
    git commit -m $message
}

function gnuke() {
    git reset --hard HEAD 
    git clean -f 
}

function gpf() {
    git push -f
}

function grh($size) {
    git reset HEAD~$size
}

function gri($size) {
    git rebase -i HEAD~$size
}

function gs() {
    gaa
    git stash
}

function gsp() {
    git stash pop
}

function gwip() {
    gca(":construction: WIP")
}