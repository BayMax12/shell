#1 . UPDATE UBUNTU
sudo apt-get update

#2. install vim
sudo apt-get install vim -y
sudo apt-get update

#3. install chrome : can not be installed in root mode
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable -y

#4. install atom
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom

#5 install git
sudo apt-get install git -y

#6 install gem
sudo apt-get install gem -y

#7 jekyll 
sudo apt-get install jekyll -y
sudo gem update jekyll -y

#8 install gcc/g++ multilib
sudo apt-get install gcc-multilib g++-multilib -y

#9 install zsh
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#10 install terminator
#sudo apt-get install terminator -y
# did not find useful

#11 install monaco fonts 
git clone https://github.com/BayMax12/monaco-font.git
cd monaco-font
sudo ./install-font-ubuntu.sh http://jorrel.googlepages.com/Monaco_Linux.ttf

#12 install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
