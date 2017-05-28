import os

# clear old dotfiles
files = ['.fonts', '.vimrc', '.zshrc', '.pip', '.gitconfig', '.aria2',
         '.config/autostart', '.psqlrc']
for file in files:
    os.system("rm -r ~/{}".format(file))


current_dir = os.getcwd()

for file in files:
    os.system("ln -s {} {}".format(current_dir + '/' + file, "~/" + file))


os.system("chmod +x install-build.sh")
os.system("sudo ./install-build.sh")

os.system("sudo apt-get install git zsh curl")

# oh my zsh
os.system("git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh")

# vim vundle
os.system("git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim")

# pyenv
os.system("curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash")

