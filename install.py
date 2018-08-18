import os

# clear old dotfiles
files = ['.fonts', '.vimrc', '.zshrc', '.pip', '.gitconfig', '.aria2',
         '.config/autostart/guake.desktop',
         '.config/Code/User/settings.js',
         '.psqlrc']
for file in files:
    try:
        os.system("rm -r ~/{}".format(file))
    except:
        pass


current_dir = os.getcwd()

for file in files:
    if "/" in file:
        dir_path = "/".join(".config/code/a.js".split("/")[:-1])
        if not os.path.exists(dir_path):
            os.mkdir("~/{}".format(dir_path))
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
os.system("pip install --user pipenv")

# tmux
os.system("sudo apt install tmux")
os.system("git clone https://github.com/gpakosz/.tmux.git ~/.tmux")

# switch to zsh
os.system("chsh -s /bin/zsh")

# google chrome browser
os.system("wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -")
os.system("echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list")
os.system("sudo apt-get update ")
os.system("sudo apt install google-chrome-stable -y")

os.system("ln -s ~/.tmux/.tmux.conf ~/.tmux.conf")

# vscode
os.system("curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg")
os.system("sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg")
cmd = """
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
"""
os.system(cmd)
os.system("sudo apt-get update")
os.system("sudo apt-get install code")

# nvm node.js
os.system("curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash")
