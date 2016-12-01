" content of this file is loaded BEFORE all the plugins
source ~/.vim/bundles.vim  " vundle plugins list
source ~/.vim/global.vim   " general global configuration
source ~/.vim/plugins.vim  " configuration for plugins that needs to be set BEFORE plugins are loaded
source ~/.vim/macros.vim   " some macros
if has('gui_running')
  source ~/.vim/gvimrc     " gui specific settings
end

source ~/.vim/before.vim   " local BEFORE configs

" after.vim is loaded from ./after/plugin/after.vim
" which should place it AFTER all the other plugins in the loading order
" bindings.vim and local.vim are loaded from after.vim

let g:rspec_ssh_user = "vagrant"
let g:rspec_ssh_ip = "192.168.33.10"
let g:rspec_ssh_port = "22"
let g:rspec_local_folder = "~/dev-setup/"
let g:rspec_remote_folder = "/vagrant/"

autocmd! BufWritePost * Neomake