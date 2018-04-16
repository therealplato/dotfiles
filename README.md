therealplato/dotfiles
==============

plato's dotfiles

```
# zshrc sources some scripts, assuming this path:
mkdir -p $GOPATH/src/github.com/therealplato/dotfiles
git clone https://github.com/therealplato/dotfiles $GOPATH/src/github.com/therealplato/dotfiles
cd $GOPATH/src/github.com/therealplato/dotfiles

# Render output into ./generated:
./build.sh

# Render output into ./generated then copy into $HOME:
./build.sh -f
```
