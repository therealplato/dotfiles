# NVM
if [ -s ~/.nvm/nvm.sh ]; then
    NVM_DIR=~/.nvm
    source ~/.nvm/nvm.sh
fi

if [[ $1 == eval ]]
then
    "$@"
set --
fi
