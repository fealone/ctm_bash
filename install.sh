HOME=$(cd $(dirname $(readlink $0 || echo $0));pwd)/home
touch ~/.sudo_as_admin_successful
git clone https://github.com/pyenv/pyenv home/.pyenv
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | bash
touch .installed
