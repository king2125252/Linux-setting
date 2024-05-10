[credential]
	helper = store
[user]
    name = Your Name
    email = your.email@example.com
[core]
    editor = vim
[diff]
    tool = vimdiff
[difftool]
	prompt = false
# 左邊 $LOCAL 是修改前的檔案狀態
# 右邊 $REMOTE 是修改後的檔案狀態
# 在difftool 時使用vimdiff
# -c 'wincmd w' 是vim的命令，會focus在右邊的檔案 
[difftool "vimdiff"]
    cmd = vimdiff $LOCAL $REMOTE -c 'wincmd w'
# 快捷鍵配置
[alias]
    st = status
    ci = commit
    br = branch
    co = checkout
    df = diff
# 顏色配置
[color "status"]
    added = green
    changed = yellow
    untracked = red

[color "diff"]
    meta = yellow
    frag = magenta
    old = red
    new = green

[color "branch"]
    current = green reverse
    local = white
    remote = yellow
[color]
    ui = auto
