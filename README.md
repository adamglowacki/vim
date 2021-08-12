# vim
My vim config repository.

## Things to do first
### Install Vundle
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### Install fuzzy finder binary
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## Things to do after .vimrc copied/symlinked
### Install all the plugins
In the vim call `:PluginInstall`. And anytime in the future you modify the list
of plugins or want to update their versions, call `:PluginUpdate`. If you remove
any plugin from the list, call `:PluginClean` to delete the files from the
filesystem.
