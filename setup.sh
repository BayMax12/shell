#1 . UPDATE UBUNTU
sudo apt-get update
sudo apt-get upgrade -y

#done successfully

#2. install vim
sudo apt-get install vim -y
sudo apt-get update

#no trouble

#3 install wget curl
sudo apt-get install wget -y
sudo apt-get install curl -y

#no trouble 

#4. install chrome : can not be installed in root mode
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable -y --allow-unauthenticated

#wget command not reqd commented now

#5. install atom
sudo add-apt-repository ppa:webupd8team/atom -y 
sudo apt-get update
sudo apt-get install atom -y

#no hassles atom installed too

#6 install git
sudo apt-get install git -y

#sucess

#7 install gem
sudo apt-get install gem -y
#success

#8 jekyll 
sudo apt-get install jekyll -y
sudo gem update jekyll 
sudo gem install bundler
#sudo gem update jekyll -y was a failure no such option 
#corrected command

#9 install gcc/g++ multilib
sudo apt-get install gcc-multilib g++-multilib -y
#success

#10 configure git
sh git_config.sh

#11 install zsh
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
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
sudo apt-get install netbeans -y
#sudo add-apt-repository ppa:webupd8team/java 
#sudo apt-get update
#sudo apt-get install oracle-java8-installer -y
# source : https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-get-on-ubuntu-16-04


#15 install netbeans
#wget download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-linux.sh
#wget http://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-javase-linux.sh
#connection refused need to download manually 
#update : updated the command failed again
#downloaded file in same directory
#chmod +x netbeans-8.2-javase-linux.sh
#sudo sh netbeans-8.2-javase-linux.sh


#15 install netbeans + jdk
#chmod +x jdk-7u80-nb-8_0_2-linux-x64.sh
#sudo sh jdk-7u80-nb-8_0_2-linux-x64.sh

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

