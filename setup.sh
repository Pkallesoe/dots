#! /bin/bash
u="$USER"

echo "Linking files..."
ln -sf $(pwd)/xinit ~/.xinit
ln -sf $(pwd)/Xresources ~/.Xresources
ln -sf $(pwd)/aliases ~/.aliases
ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/xserverrc ~/.xserverrc
ln -sf $(pwd)/bashrc ~/.bashrc
ln -sf $(pwd)/bin ~/bin
ln -sf $(pwd)/tmux.conf ~/.tmux.conf
if [ "$u" == "peter" ] ; then
	ln -sf $(pwd)/xmonad.hs ~/.xmonad/xmonad.hs
fi
echo "Done linking all files"
echo ""
echo "Downloading vim plugin manager"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Setup tmux plugin system
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Prefix + I to install tmux plugins"
echo "Prefix + U to update tmux plugins"
