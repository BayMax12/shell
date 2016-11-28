#1 . UPDATE UBUNTU
sudo apt-get update
sudo apt-get upgrade -y

#done successfully

#2. install vim
sudo apt-get install vim -y
sudo apt-get update

#no trouble

#3 install wget curl unrar
sudo apt-get install wget -y
sudo apt-get install curl -y
sudo apt-get install unrar -y
#no trouble 

#4. install chrome : can not be installed in root mode
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable -y --allow-unauthenticated

#wget command not reqd commented now

#5. install atom and sublime
sudo add-apt-repository ppa:webupd8team/atom -y 
sudo apt-get update
sudo apt-get install atom -y

sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo apt-get update
sudo apt-get install sublime-text-installer

#no hassles atom installed too

#6 install git
sudo apt-get install git -y

#sucess

#7 install gem
sudo apt-get install gem -y
#success

#8 jekyll 
#sudo apt-get install jekyll -y
#sudo gem update jekyll 
#sudo gem install bundler
#sudo gem update jekyll -y was a failure no such option 
#corrected command

#9 install gcc/g++ multilib
sudo apt-get install gcc-multilib g++-multilib -y
#success

#10 configure git
sh git_config.sh

#11 install zsh
#sudo apt-get install zsh -y
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#need to setup git first i guess

#12 install monaco fonts 
git clone https://github.com/BayMax12/monaco-font.git
cd monaco-font
sudo ./install-font-ubuntu.sh http://jorrel.googlepages.com/Monaco_Linux.ttf

#need to configure git before this happens

#13 install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#14 install java
sudo apt-get update
sudo apt-get install default-jre -y
sudo apt-get install default-jdk -y

#15 install netbeans
sudo apt-get install netbeans -y

#16 clone my repos
git clone https://github.com/BayMax12/dotfiles.git
git clone https://github.com/BayMax12/shell.git
git clone https://github.com/BayMax12/MyLibrary.git

#17 install tmux : terminal multiplexer
sudo apt-get install tmux -y
#^_^ awesome

#18 install unity tweak tool
sudo apt-get install unity-tweak-tool -y
sudo apt-get install gnome-tweak-tool -y

#19 install dracula terminal colors
sudo apt-get install dconf-cli -y
git clone https://github.com/GalaticStryder/gnome-terminal-colors-dracula
cd gnome-terminal-colors-dracula
sh install.sh
cd
#awesome colors

#20 theme and icon pack
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update
sudo apt-get install yosembiance-gtk-theme

sudo apt-add-repository ppa:numix/ppa -y
sudo apt-get update
sudo apt-get install numix-icon-theme numix-icon-theme-circle
