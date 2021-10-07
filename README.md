# vim
My vim config repository.

## Things to do first
### Install vim-plug
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Install fuzzy finder binary
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## Things to do after .vimrc copied/symlinked
### Install all the plugins
In the vim call `:PlugInstall`. And anytime in the future you modify the list of
plugins or want to update their versions, call `:PlugUpdate`. If you remove any
plugin from the list, call `:PlugClean` to delete the files from the filesystem.
