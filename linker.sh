#! /bin/bash

echo "Linking files..."
ln -sf $(pwd)/xinit ~/.xinit
ln -sf $(pwd)/Xresources ~/.Xresources
ln -sf $(pwd)/aliases ~/.aliases
ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/xserverrc ~/.xserverrc
ln -sf $(pwd)/bashrc ~/.bashrc
ln -sf $(pwd)/bin ~/bin
ln -sf $(pwd)/tmux.conf ~/.tmux.conf
ln -sf $(pwd)/settings.org ~/.emacs.d/settings.org
ln -sf $(pwd)/init.el ~/.emacs.d/init.el
ln -sf $(pwd)/zshrc ~/.zshrc
 
