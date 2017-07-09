export PATH="/usr/games:/usr/local/games:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

export PATH="$HOME/.linuxbrew/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
export ANDROID_HOME=/usr/local/share/android-sdk

case `uname` in
    Darwin)
        alias up='bubu && cd ~/.emacs.d/ && gl && mas upgrade && softwareupdate -i -a && cd -';
        ;;
    Linux)
        alias up='agud && aga && agar && cd ~/.emacs.d/ && gl && cd -';
        ;;
esac
