# CentOSを最新化'
sudo yum -y update

# gitをインストール'
sudo yum -y install git

# rbenvをインストール'
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

# ruby-buildをインストール'
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# rbenvのパスを通す
echo '# rbenv' >> ~/.bash_profile
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

# ログインシェルを再起動し設定を反映
exec $SHELL --login