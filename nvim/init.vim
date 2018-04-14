"source ~/dotfiles/nvim/nvimrc.neobundle
source ~/dotfiles/nvim/nvimrc.basic
source ~/dotfiles/nvim/nvimrc.indent
source ~/dotfiles/nvim/nvimrc.plugin_settings

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/yamazaki/.config/nvim/repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('~/.config/nvim')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml_dir = expand('~/.config/nvim')

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Load TOML
  let s:toml = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

source ~/dotfiles/nvim/nvimrc.colors
source ~/dotfiles/nvim/nvimrc.keymap
