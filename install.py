import os

# clear old dotfiles
files = ['.fonts', '.vimrc', '.zshrc', '.pip', '.gitconfig']
for file in files:
    os.system("rm -r ~/{}".format(file)


current_dir = os.getcwd()

for file in files:
    os.system("ln -s {} {}".format(current_dir + '/' + file, "~/" + file))

