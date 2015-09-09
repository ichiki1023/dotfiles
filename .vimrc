 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 NeoBundle 'scrooloose/nerdtree'  

 NeoBundle 'Shougo/unite.vim'
 NeoBundle 'Shougo/neomru.vim'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 NeoBundleCheck

 nnoremap <C-L> gt
 nnoremap <C-H> gT
 nmap <silent> <C-e>      :NERDTreeToggle<CR>
 vmap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
 omap <silent> <C-e>      :NERDTreeToggle<CR>
 imap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
 cmap <silent> <C-e> <C-u>:NERDTreeToggle<CR>

 nnoremap s <Nop>
 nnoremap sj <C-w>j
 nnoremap sk <C-w>k
 nnoremap sl <C-w>l
 nnoremap sh <C-w>h
 nnoremap sJ <C-w>J
 nnoremap sK <C-w>K
 nnoremap sL <C-w>L
 nnoremap sH <C-w>H
 nnoremap sn gt
 nnoremap sp gT
 nnoremap sr <C-w>r
 nnoremap s= <C-w>=
 nnoremap sw <C-w>w
 nnoremap so <C-w>_<C-w>|
 nnoremap sO <C-w>=
 nnoremap sN :<C-u>bn<CR>
 nnoremap sP :<C-u>bp<CR>
 nnoremap st :<C-u>tabnew<CR>
 nnoremap sT :<C-u>Unite tab<CR>
 nnoremap ss :<C-u>sp<CR>
 nnoremap sv :<C-u>vs<CR>
 nnoremap sq :<C-u>q<CR>
 nnoremap sQ :<C-u>bd<CR>
 nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
 nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

 " 入力モードで開始する
 let g:unite_enable_start_insert=1
 " バッファ一覧
 noremap <C-P> :Unite buffer<CR>
 " ファイル一覧
 noremap <C-N> :Unite -buffer-name=file file<CR>
 " 最近使ったファイルの一覧
 noremap <C-Z> :Unite file_mru<CR>
 " sourcesを「今開いているファイルのディレクトリ」とする
 noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
 " ウィンドウを分割して開く
 au FileType unite nnoremap <silent> <buffer> <expr> <C-J>
 au FileType unite inoremap <silent> <buffer> <expr> <C-J>
 " ウィンドウを縦に分割して開く
 au FileType unite nnoremap <silent> <buffer> <expr> <C-K>
 au FileType unite inoremap <silent> <buffer> <expr> <C-K>
 " ESCキーを2回押すと終了する
 au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
 au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
