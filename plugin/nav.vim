" Navigation-related mappings
" Switch between panes
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Split panes
nnoremap <leader>v :wincmd v<CR>
nnoremap <leader>s :wincmd s<CR>

" Move panes
nnoremap <leader>H :wincmd H<CR>
nnoremap <leader>J :wincmd J<CR>
nnoremap <leader>K :wincmd K<CR>
nnoremap <leader>L :wincmd L<CR>

" Move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Terminal
nnoremap <leader>t :call ToggleTerm(15)<CR>

let g:aspayd_term_win = 0
let g:aspayd_term_buf = 0
fun! ToggleTerm(height)
	if win_gotoid(g:aspayd_term_win)
		hide
	else
		" Open a terminal window at the bottom with height 15
		botright new
		exec "resize " . a:height
		try
			exec "buffer " . g:aspayd_term_buf
		catch
				call termopen($SHELL, {"detach": 0})
				let g:aspayd_term_buf = bufnr("")
				set nonumber
				set norelativenumber
				set signcolumn=no
		endtry
		startinsert!
		let g:aspayd_term_win = win_getid()
	end

endfun

" Quickfix lists
nnoremap <C-j> :cn<CR>zz
nnoremap <C-k> :cprev<CR>zz
nnoremap <C-q> :call ToggleQFList()<CR>

let g:aspayd_qf = 0

fun! ToggleQFList()
	if g:aspayd_qf == 0
		let g:aspayd_qf = 1
		copen
	else
		let g:aspayd_qf = 0
		cclose
	end
endfun
