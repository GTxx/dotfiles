import os

# clear old dotfiles
os.system("rm -r ~/.fonts ~/.vimrc ~/.zshrc ~/.pip")
current_dir = os.getcwd()

os.system("ln -s {} {}".format(current_dir + '/.fonts', "~/.fonts"))
os.system("ln -s {} {}".format(current_dir + '/.vimrc', "~/.vimrc"))
os.system("ln -s {} {}".format(current_dir + '/.zshrc', "~/.zshrc"))
os.system("ln -s {} {}".format(current_dir + '/.pip', "~/.pip"))
