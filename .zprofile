if [ -f $HOME/.zshrc -a -r $HOME/.zshrc ]; then
    ENV=$HOME/.zshrc
    export ENV
fi
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx
fi
