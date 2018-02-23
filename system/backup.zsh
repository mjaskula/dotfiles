alias backupMusic="backup    Music/iTunes"
alias backupPictures="backup Pictures"
alias backupMovies="backup   Movies"
alias backupDocs="backup     Documents"

alias backupPicturesAmazon="rclone sync -v --bwlimit 1M --include '*.{JPG,jpg,jpeg,PNG,png,tiff}' ~/Pictures/Photos\ Library.photoslibrary/Masters amazon_drive:photobackup"
