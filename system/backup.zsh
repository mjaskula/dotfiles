BACKUP_ROOT="Storage/Backup/Heron"

alias backupPictures="backup Pictures     ${BACKUP_ROOT}"
alias backupMovies="backup   Movies       ${BACKUP_ROOT}"
alias backupDocs="backup     Documents    ${BACKUP_ROOT}"
alias backupMusic="rsync -rlptDivxzP ~/Music/iTunes rsync://matthew@192.168.42.2:/Public/Shared\ Music/"

alias backupPicturesAmazon="rclone sync -v --bwlimit 1M --include '*.{JPG,jpg,jpeg,PNG,png,tiff}' ~/Pictures/Photos\ Library.photoslibrary/Masters amazon_drive:photobackup"
