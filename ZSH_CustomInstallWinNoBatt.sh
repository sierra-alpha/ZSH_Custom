#sh -c "$(curl -fsSL https://raw.githubusercontent.com/Sierra-Alpha/ZSH_Custom/edit/windowsNoBattery/ZSH_CustomInstallWinNoBatt.sh)"
echo Please enter your user name
read username
echo Please enter your password
read password
sudo apt-get update -y
echo $password
sudo apt-get install zsh -y
chsh -s $(which zsh)
echo $password
exec zsh
echo 2
sudo apt-get install curl -y
sudo apt-get install git -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo y
echo $password
cd ~/.oh-my-zsh/
#git clone https://github.com/Sierra-Alpha/ZSH_Custom.git
git clone --single-branch --branch windowsNoBattery https://github.com/Sierra-Alpha/ZSH_Custom.git
mv custom custom.bak
mv ZSH_Custom custom
cd ..
mv .zshrc .zshrc.bak
ln -s ~/.oh-my-zsh/custom/.zshrc .zshrc
exec zsh
