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
            echo "Will create PDF bundle at $bval"
            ;;
        \?)
            echo "Invalid option.\nUsage: %s: [-b] relative/name/of/pdf-bundle.pdf\n" $0
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

# Remove existing pdfs from specified folder (this avoids have-been-deleted-or-renamed documents persisting)
echo "Removing existing $2s from $1/$2s"
rm -rf "$1"/"$2"s/*

# $ dp_pages honey_fat pdf $HONEY_FAT_ID
drive pull --export "$2" --exports-dir ~/gdrive/"$1"/"$2"s/ --same-exports-dir --id "$3"

# if -p flag specified, create unified pdf draft
if [ ! -z "$bflag" ]; then
    # printf "Option -a specified\n
    # "
    echo "Combining pdfs into $bval"
    pdftk "$1"/pdfs/*.pdf cat output "$bval"
fi

# Remove anything in the gdrive directory names Pages* so syncing works as expected
# because sometimes folder is called Pages v2, Pages-v3,...
echo "Removing ~/gdrive/Pages*..."
rm -rf ~/gdrive/Pages*

OPTIND=1 # reset global where-argument-count-starts variable
