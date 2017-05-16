plato-dotfiles
==============

plato's dotfiles

####unix/linux:

```sh
git checkout master
export $VIM = $HOME/.vim && mkdir -p $VIM/autoload
curl -fLo $VIM/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp -r .vimrc 
```

####windows git bash:

```sh
git checkout windows
export VIM=$HOME/vimfiles && mkdir -p $VIM/autoload
curl -fLo $VIM/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
./build.sh && cp _vimrc $HOME
```