" Colorscheme color management
function! ColorGruvy()
	let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'
	colorscheme gruvbox

	set background=dark

	" Make line numbers brighter
	"
    highlight Normal guibg=none
    highlight LineNr guifg=#1383a8
endfunction

fun! ColorGruvyMaterial()
	let g:gruvbox_contrast_dark = 'hard'

	if exists('+termguicolors')
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	endif
	let g:gruvbox_invert_selection='0'
	set background=dark

	colorscheme gruvbox-material

	" Increase line num brightness
	hi LineNr guifg=#b0b0b0
endfun

fun! ColorMaterial()
	let g:material_theme_style='darker-community'
	colorscheme material
endfun

call ColorGruvy()
