!#/bin/sh

# sort downloads into folder by type
# run Monday mornings at 0900. 
mv ~/Downloads/*.dmg ~/Downloads/dmgs/
mv ~/Downloads/*.zip ~/Downloads/zippers/
mv ~/Downloads/*.pkg ~/Downloads/pkgs/

# delete DS_Stores, for what its worth
# Recursively delete `.DS_Store` files
command cleanup_dsstore

