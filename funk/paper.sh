#!/bin/bash


# http://stackoverflow.com/questions/30560671/passing-multiple-parameters-to-shell-script-and-parsing-them


# service="default"
# node="default"

# while getopts 's:n:' opt; do
#     case $opt in
#         s)  service="$OPTARG" ;;
#         n)  node="$OPTARG"    ;;
#         *)  exit 1            ;;
#     esac
# done

# echo "service = '${service}'"
# echo "node    = '${node}'"


## note that in order for vim to make the directory if it doesn't exist requires some tinkering with .vimrc,
# which seems to me like a cleaner way to do it than handle a `mkdir -p` here, because the dir needs to be
# written via buffer zone time thingey (because don't want to make a dir if not actually going to save the file)

# update: will try...
# function s:MkNonExDir(file, buf)
#     if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
#         let dir=fnamemodify(a:file, ':h')
#         if !isdirectory(dir)
#             call mkdir(dir, 'p')
#         endif
#     endif
# endfunction
# augroup BWCCreateDir
#     autocmd!
#     autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
# augroup END

dadropbase="$HOME/Dropbox/paper"
daname=$(date +%d-%m-%y@%H_%M_%S)

while getopts 'f:d:' opt; do
	case $opt in
		f) daname="$OPTARG" ;;
		d) dadropbase="$HOME/Dropbox/paper/$OPTARG" ;;
		\?) echo "Use either or both -f <filename> -d <dirname>"; exit 1 ;;
		*) exit 1 ;;
	esac
done

vim "${dadropbase}/${daname}.md"

