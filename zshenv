export PATH="/usr/games:/usr/local/games:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

export PATH="$HOME/.linuxbrew/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
export ANDROID_HOME=/usr/local/share/android-sdk

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/utils/google-cloud-sdk/path.zsh.inc' ]; then . '~/utils/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/utils/google-cloud-sdk/completion.zsh.inc' ]; then . '~/utils/google-cloud-sdk/completion.zsh.inc'; fi

case `lsb_release -i -s | tr '[:upper:]' '[:lower:]'` in
    Darwin)
        alias up='bubu && cd ~/.emacs.d/ && gl && mas upgrade && softwareupdate -i -a && cd -';
        ;;
    ubuntu*)
        alias up='agud -y && aga -y && agar -y && sudo snap refresh && cd ~/.emacs.d/ && gl && cd -';
        ;;
    manjaro*)
        alias up='sudo pacman -Syu && paccache -rvk3 && cd ~/.emacs.d/ && gl && cd -';
        ;;
esac
