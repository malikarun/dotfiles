" Other Mappings
" Save with ctrl+
nnoremap <C-s> :update<CR>
inoremap <C-s> <Esc>:update<CR>

" Auto Run Commands
autocmd BufWritePre * :%s/\s\+$//e " Remove trailing spaces on save
