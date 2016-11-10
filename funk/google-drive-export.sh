#!/bin/bash


# USAGE:
#   dp_pages [-b name-of-combo-pdf.pdf] honey_cook pdf $HONEY_COOK_ID
#   * Note that option arg must come first (to satisfy OPTIND-1)

# $1 = ~/gdrive/subdirname, where subdirname is $1
# $2 = filetype, ie "png" or "pdf"
# $3 = Google Driver folder id

# 'b' for Bundle. Only works for pdfs.
bflag=
bval=
while getopts ':b:' pdf_bundle
do
    case $pdf_bundle in
        b)    
            bflag=1
            bval="$OPTARG"
            echo "Will create PDF bundle named $bval"
            ;;
        \?)   
            echo "Invalid option.\nUsage: %s: [-b] name-of-pdf-bundle.pdf\n" $0
            exit 1
            ;;
        :)
            # FIXME: Will call next arg. Could delimit with --
            echo "PDF bundle option [-b] requires an argument."
    esac

done

# Shift global var OPTIND to reset ARG count after possible option args.
# http://stackoverflow.com/questions/21753340/script-with-non-option-and-option-arguments
shift $((OPTIND-1))

# EXAMPLE
# http://wiki.bash-hackers.org/howto/getopts_tutorial
# while getopts ":a:" opt; do
#   case $opt in
#     a)
#       echo "-a was triggered, Parameter: $OPTARG" >&2
#       ;;
#     \?)
#       echo "Invalid option: -$OPTARG" >&2
#       exit 1
#       ;;
#     :)
#       echo "Option -$OPTARG requires an argument." >&2
#       exit 1
#       ;;
#   esac
# done

# if [ ! -z "$bflag" ]; then
#     printf 'Option -b "%s" specified\n' "$bval"
# fi
# shift $(($OPTIND - 1))
# printf "Remaining arguments are: %s\n" "$*"

# $ dp_pages honey_fat pdf $HONEY_FAT_ID
drive pull --export "$2" --exports-dir ~/gdrive/"$1"/"$2"s/ --same-exports-dir --id "$3"

# Remove anything in the gdrive directory names Pages* so syncing works as expected
# because sometimes folder is called Pages v2, Pages-v3,...
echo "Removing ~/gdrive/Pages..."
rm -rf ~/gdrive/Pages*

# if -p flag specified, create unified pdf draft
if [ ! -z "$bflag" ]; then
    # printf "Option -a specified\n
    # "
    echo "Combining pdfs into pdf_drafts/$bval"
    pdftk "$1"/pdfs/*.pdf cat output pdf_drafts/"$bval"
fi