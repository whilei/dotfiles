

# PACKAGE_FILES=~/Downloads/*.pkg 
# ZIP_FILES=~/Downloads/*.zip
# DMG_FILES=~/Downloads/*.dmg 

# for pfile in $PACKAGE_FILES 
# do
# 	command mv $pfile ~/Downloads/pkgs/
# done

# for dfile in $DMG_FILES 
# do
# 	command mv $dfile ~/Downloads/dmgs/
# done

# for zfile in $ZIP_FILES 
# do
# 	command mv $zfile ~/Downloads/zips/
# done

# unset $PACKAGE_FILES 
# unset $ZIP_FILES 
# unset $DMG_FILES

# sort downloads into folder by type
# run Monday mornings at 0900. 
mv ~/Downloads/*.dmg ~/Downloads/dmgs/ # dmg
mv ~/Downloads/*.zip ~/Downloads/zips/ # zip
mv ~/Downloads/*.pkg ~/Downloads/pkgs/ # pkg
mv ~/Downloads/*.pdf ~/Downloads/pdfs/ # pdf
mv ~/Downloads/*.jpg ~/Downloads/jpgs/ # jpg
mv ~/Downloads/*.JPG ~/Downloads/jpgs/
mv ~/Downloads/*.tar* ~/Downloads/tars/ # tar
mv ~/Downloads/*.json ~/Downloads/jsons/ # tar

# delete DS_Stores, for what its worth
# Recursively delete `.DS_Store` files
command find . -name '*.DS_Store' -type f -ls -delete

