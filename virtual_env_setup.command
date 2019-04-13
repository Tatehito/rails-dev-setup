echo "Please Enter Virtual-Environment Directory Name."
read vspace_name

cd ./workspace
mkdir $vspace_name

# VagrantFileを作成
cd ./${vspace_name}
vagrant init bento/centos-7.3

sed -i '' -e 's/# config.vm.network "private_network", ip: "192.168.33.10"/config.vm.network "private_network", ip: "192.168.33.10"/' Vagrantfile

# 仮想マシンを起動
vagrant up