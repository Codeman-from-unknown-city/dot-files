eval "$(/opt/homebrew/bin/brew shellenv)"
set -x PATH $PATH /Library/Frameworks/Python.framework/Versions/3.10/bin

set -gx LDFLAGS "-L/opt/homebrew/opt/opencv@3/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/opencv@3/include"

# removes greeting
set -U fish_greeting

# aliases
alias ls=lsd
alias vim=nvim
alias top=htop
alias clang='clang -I/opt/homebrew/opt/opencv@3/include -L/opt/homebrew/opt/opencv@3/lib'

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# sets vi key bindings
function fish_user_key_bindings
    fish_default_key_bindings -M insert
    fish_vi_key_bindings --no-erase insert
end
