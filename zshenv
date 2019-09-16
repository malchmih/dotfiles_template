export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/malch/utils/google-cloud-sdk/path.zsh.inc' ]; then . '/home/malch/utils/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/malch/utils/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/malch/utils/google-cloud-sdk/completion.zsh.inc'; fi

case `lsb_release -i -s | tr '[:upper:]' '[:lower:]'` in
    Darwin)
        alias up='bubu && cd ~/.emacs.d/ && gl && mas upgrade && softwareupdate -i -a && cd -';
        ;;
    ubuntu*)
        alias up='agud -y && aga -y && agar -y && sudo snap refresh && cd ~/.emacs.d/ && gl && cd -';
        ;;
    manjaro*)
        alias up='yay && yay -Yc && cd ~/.emacs.d/ && gl && cd -';
        ;;
esac

alias j=just
