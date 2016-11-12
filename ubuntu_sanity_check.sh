#checks broken or damaged files
sudo apt-get install debsums -y
sudo apt-get clean
sudo debsums_init
sudo debsums -cs
sudo apt-get -f install
