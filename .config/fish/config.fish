. ~/.config/fish/git.alias.fish
. ~/.config/fish/docker.alias.fish
. ~/.config/fish/misc.alias.fish

switch (uname)
case Linux
  # Need to change this
  set -g DENO_INSTALL "/Users/shub/.deno"
case Darwin
  set -g DENO_INSTALL "/Users/shub/.deno"
  # Check this for details: https://github.com/oh-my-fish/theme-budspencer/issues/57#issuecomment-551452088
  set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
  set -gx PATH /usr/local/opt/gnu-sed/libexec/gnubin $PATH
case '*'
  set -g DENO_INSTALL "/Users/shub/.deno"
end

# Theme Settings for OMF
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes

set -gx PATH ~/go/bin/ ~/.cargo/bin (echo "$DENO_INSTALL/bin") /usr/local/bin $PATH
