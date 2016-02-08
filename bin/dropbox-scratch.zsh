function scratch {
  vim ~/Dropbox/sandbox/scratch/$DATE-$(openssl rand -base64 10 | tr -dc 'a-zA-Z').txt
}
