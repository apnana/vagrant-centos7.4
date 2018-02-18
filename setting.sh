sudo yum -y install openssl git vim gcc zlib zlib-devel bzip2-devel readline-devel sqlite-devel openssl-devel
# for locale(en->jp)
sudo localectl set-keymap jp106
sudo localectl set-locale LANG=ja_JP.UTF-8
# for pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
chmod 755 ~/.bash_profile
source ~/.bash_profile
chmod 644 ~/.bash_profile
# for Python3
pyenv install 3.6.4
# for virtualenv
pip install virtualenv
# for GNOME
sudo LANG=C yum groupinstall -y "GNOME Desktop"
sudo systemctl set-default graphical.target
pyenv global 3.6.4
pip install virtualenv
sudo reboot
