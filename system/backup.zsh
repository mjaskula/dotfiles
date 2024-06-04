
alias backupT9="backup /Volumes/T9/storage T9 coldstorage"

alias backupiPhones='backup ~/Library/Application\ Support/MobileSync/Backup "`hostname -s`/`whoami`/Library/Application Support/MobileSync/" T9'

alias backupPicturesAmazon="rclone sync -v --bwlimit 1M --include '*.{JPG,jpg,jpeg,PNG,png,tiff}' ~/Pictures/Photos\ Library.photoslibrary/Masters amazon_drive:photobackup"

