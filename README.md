# vim
My vim config repository.

## Things to do first
### Install vim-plug
#### Vim
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
#### Neovim
No idea why but the config file (init.vim) is by default placed in
~/.config/nvim directory, while the vim-plug is stored in ~/.local/share/nvim.
The plugins installed by vim-plug are placed ~/.vim/plugged (see .vimrc).
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Install fuzzy finder binary
#### Manual
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### Symlink config file
Symlink .vimrc either from ~/.vimrc or from the config file for Neovim (for
example: ~/.local/share/nvim/init.vim).

## Things to do after .vimrc copied/symlinked
### Install all the plugins
In the vim call `:PlugInstall`. And anytime in the future you modify the list of
plugins or want to update their versions, call `:PlugUpdate`. If you remove any
plugin from the list, call `:PlugClean` to delete the files from the filesystem.

### Configure CoC plugin (if desired)
Call `:CocConfig` and paste the configuration for each programming language that
is needed:
```
{
  "languageserver": {
    "haskell": {
      "command": "haskell-language-server-wrapper",
      "args": ["--lsp"],
      "rootPatterns": ["*.cabal", "stack.yaml", "cabal.project", "package.yaml", "hie.yaml"],
      "filetypes": ["haskell", "lhaskell"]
    }
  }
}
```

### NodeJS
CoC apparently requires nodejs for working.
