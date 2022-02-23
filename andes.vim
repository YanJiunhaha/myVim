" config for andes style
set tabstop=8
set shiftwidth=8
set noexpandtab
" decode verilog.log
function! DecodeIpipe()
	:%v/ipipe:/d
	:%!ipipe_decode
endfunction
command! Decode call DecodeIpipe()

