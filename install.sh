sudo apt-get update
sudo apt-get install zsh git curl vim tmux cowsay bat

# install vimplus
cd ~
git clone https://github.com/chxuan/vimplus.git ~/.vimplus
cd ~/.vimplus
./install.sh

cp vimrc ~/.vimrc

# tmux configure
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f ~/.tmux/.tmux.conf ~/.
cp ~/.tmux/.tmux.conf.local ~/.

# change default shell to zsh
chsh -s $(which zsh)

# download oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# download oh-my-zsh plugin 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp zshrc ~/.zshrc

