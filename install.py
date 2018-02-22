import os

# clear old dotfiles
files = ['.fonts', '.vimrc', '.zshrc', '.pip', '.gitconfig', '.aria2',
         '.config/autostart', '.psqlrc']
for file in files:
    try:
        os.system("rm -r ~/{}".format(file))
    except:
        pass


current_dir = os.getcwd()

for file in files:
    os.system("ln -s {} {}".format(current_dir + '/' + file, "~/" + file))


os.system("chmod +x install-build.sh")
os.system("sudo ./install-build.sh")

os.system("sudo apt-get install -y --no-install-recommends git zsh curl python-pip")

# oh my zsh
os.system("git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh")

# vim plugin
os.system("curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
os.system("sudo apt install vim")
# pyenv
os.system("curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash")

# pipenv
os.system("sudo apt-get install -y --no-install-recommends python-pip")
os.system("sudo pip install setuptools")
os.system("sudo pip install --user pipenv")

# tmux
os.system("sudo apt install tmux")
os.system("git clone https://github.com/gpakosz/.tmux.git ~/.tmux")
os.system("ln -s ~/.tmux/.tmux.conf ~/.tmux.conf")