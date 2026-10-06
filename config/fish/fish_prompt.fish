set -l directory (path basename $PWD)
if test "$PWD" = "$HOME"
    set directory '~'
end

set_color --bold
printf '▲ (%s) %s ' (hostname) $directory

set -l branch (command git symbolic-ref --quiet --short HEAD 2>/dev/null)
if test -n "$branch"
    set -l dirty (command git status --porcelain --ignore-submodules=dirty 2>/dev/null)
    if test -n "$dirty"
        set_color --bold red
    else
        set_color --bold green
    end
    printf '[%s] ' $branch
end

set_color normal
