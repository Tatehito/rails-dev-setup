echo 'Please enter the version of "Ruby" to install.'
read ver_ruby

echo 'Please enter the version of "Rails" to install.'
read ver_rails

echo 'Please enter Rails Project Name.'
read rails_project_name

# Rubyのインストールに必要なパッケージをインストール
sudo yum -y install bzip2 gcc openssl-devel readline-devel zlib-devel

# Rubyをインストール
rbenv install $ver_ruby

# インストールしたRubyのバージョンに切り替える
rbenv global $ver_ruby

# Railsをインストール'
rbenv exec gem install bundler
rbenv rehash
gem install -v $ver_rails rails

# SQLiteをインストール
sudo yum install sqlite-devel

# ExecJSランタイム（Node.js）のインストール
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum -y install nodejs

# 指定の名前でRailsプロジェクトを作成する
cd
rails new $rails_project_name
cd $rails_project_name

echo 'Command to start the Rails server：rails s -b 192.168.33.10'
echo 'URL：http://192.168.33.10:3000/