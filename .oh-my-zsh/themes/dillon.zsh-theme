function precmd() {
print -rP "
[%{$fg[green]%}%t%{$reset_color%}] %{$fg[magenta]%}Dillon%{$reset_color%} in %{$fg[cyan]%}%~%{$reset_color%}:"
}

PROMPT="%{$fg[yellow]%}♔ →%{$reset_color%} "
