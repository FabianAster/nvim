map <silent> <C-n> :NERDTreeFocus <CR>


nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k

nnoremap gs <C-^> 

nnoremap gl :w<CR>:bn<CR>
nnoremap gh :w<CR>:bp<CR>
nnoremap <leader>v <C-w>v
nnoremap <leader>q :bd<CR>

nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>H :set invhlsearch<CR>

nnoremap <leader>O O<esc>
nnoremap <leader>o o<esc>

nnoremap <leader>d :CocDiagnostics<CR>

nnoremap <C-n> :CocCommand explorer<CR>


nnoremap <A-l> :diffget //3<CR>
nnoremap <A-h> :diffget //2<CR>

nnoremap <leader>r :vertical resize 

nnoremap <leader>i <C-w>v <bar> <C-w>l <bar> :term<CR>

nnoremap <leader>a :CocAction<CR>

nmap <leader>c :!cp ~/.config/nvim/templates/Makefile ./<CR>

tnoremap <Esc> <C-\><C-n>
nmap <leader><C-r> iconst<space>"filename"<space>=<space>()<space>=><space>{<newline><space><space><space><space>return<space>(<newline><space><space><space><space><div><newline><space><space><space><space></div><newline>)<newline>}<newline><newline>export<space>default<space>"filename"<esc>

nmap <leader>fo :edit ~/.config/nvim/init.vim<CR>
nmap <leader>fi :source ~/.config/nvim/init.vim<CR>

nmap <leader>c :!cp ~/.config/nvim/templates/Makefile ./<CR>

nmap <leader>t :vert term<CR>

nmap ö <Plug>Sneak_s
nmap Ö <Plug>Sneak_S

xmap ö <Plug>Sneak_s
xmap Ö <Plug>Sneak_S

omap ö <Plug>Sneak_s
omap Ö <Plug>Sneak_S

nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
