# kind of a bold attempt, lets see if it works ...
# don't call as an executable: use "source setup.sh" (because sudo)

sudo apt update
sudo apt install -y curl xclip
# install a suitable version of vim
sudo apt remove -y vim-gnome
sudo apt install -y vim-gnome-py2

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install vim plugins and stuff
git clone https://github.com/vim-scripts/xoria256.vim.git ~/.vim/bundle/xoria256
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/tpope/vim-eunuch.git ~/.vim/bundle/vim-eunuch
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/bundle/vim-tmux-navigator
git clone https://github.com/christoomey/vim-tmux-runner.git ~/.vim/bundle/vim-tmux-runner
git clone https://github.com/hdima/python-syntax.git ~/.vim/bundle/python-syntax
apt install -y vim-python-jedi

# screen
sudo apt install -y screen

# tmux
sudo apt install -y tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# setup all symlinks in HOME
ln -s `pwd`/.bashrc $HOME/.bashrc
ln -s `pwd`/.tmux.conf $HOME/.tmux.conf
ln -s `pwd`/.screenrc $HOME/.screenrc
ln -s `pwd`/.vimrc $HOME/.vimrc
