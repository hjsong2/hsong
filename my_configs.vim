set mouse=a
set tags=tags
set csto=0
set cst
set number
if has("cscope")
    set nocscopeverbose
    cs add cscope.out
    nmap zs :cs find s <C-R>=expand("<cword>")<CR>
    nmap zg :cs find g <C-R>=expand("<cword>")<CR>
    nmap zc :cs find c <C-R>=expand("<cword>")<CR>
    nmap zt :cs find t <C-R>=expand("<cword>")<CR>
    nmap ze :cs find e <C-R>=expand("<cword>")<CR>
    nmap zf :cs find f <C-R>=expand("<cword>")<CR>
    nmap zi :cs find i <C-R>=expand("<cword>")<CR>
    nmap zd :cs find d <C-R>=expand("<cword>")<CR>
    set cscopeverbose
endif

"resize windows
nnoremap <silent> <Leader>= :exe "resize +3"<CR>
nnoremap <silent> <Leader>- :exe "resize -3"<CR>
nnoremap <silent> <Leader>] :exe "vertical resize +8"<CR>
nnoremap <silent> <Leader>[ :exe "vertical resize -8"<CR>

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>_ :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>} :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>{ :exe "vertical resize " . (winheight(0) * 2/3)<CR>

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"Compile Helper command
"Ctrl-C
"skipped -g
"nnoremap <C-c> :w <bar> !g++ -std=c++11 % -Wall -o %.out && ./%.out
nnoremap <C-c> :w <bar> !g++-10 -std=c++2a -I/usr/local/include % -Wall -o2 && ./2
"conflicting with ctags
"nnoremap <C-t> :w <bar> !g++ -std=c++11 -lpthread % -Wall -o2 && ./2
"Relevant helping commands
"CPP
"autocmd filetype cpp nnoremap <C-c> :w <bar> !clear && g++ -std=gnu++14 -O2 % -o %:p:h/%:t:r.exe && ./%:r.exe<CR>
"C
"autocmd filetype c nnoremap <C-c> :w <bar> !gcc -std=c99 -lm % -o %:p:h/%:t:r.out && ./%:r.out<CR>
"JAVA
autocmd filetype java nnoremap <C-c> :w <bar> !javac % && java -enableassertions %:r
"autocmd filetype java nnoremap <C-c> :w <bar> !javac % && java -enableassertions %:p
"
"Python
autocmd filetype python nnoremap <C-c> :w <bar> !python %
"autocmd filetype perl nnoremap <C-c> :w <bar> !perl % <CR>
"autocmd filetype go nnoremap <C-c> :w <bar> !go build % && ./%:p <CR>
"end helper
