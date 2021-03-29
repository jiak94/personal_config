/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install zsh git curl vim tmux cowsay
cp bat /usr/local/bin


# install vimplus
pushd ~
git clone https://github.com/chxuan/vimplus.git ~/.vimplus
popd

pushd ~/.vimplus
./install.sh
popd

cp vimrc ~/.vimrc

# tmux configure
pushd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f ~/.tmux/.tmux.conf ~/.
popd

cp ~/.tmux/.tmux.conf.local ~/.

# change default shell to zsh
# chsh -s $(which zsh)

# download oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# download oh-my-zsh plugin 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp zshrc ~/.zshrc

