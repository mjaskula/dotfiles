alias backupMovies="time backup   ~/Movies/       matthew@Orion.local:Movies"
alias backupMusic="time backup    ~/Music/iTunes/ matthew@Orion.local:Music/iTunes"
alias backupPictures="time backup ~/Pictures/     matthew@Orion.local:Pictures"

alias backupPicturesWD="time backup ~/Pictures/     /Volumes/Public/Backup/Heron/Pictures/"
alias backupMusicWD="time backup    ~/Music/iTunes/ /Volumes/Public/Backup/Heron/Music/iTunes"
alias backupMoviesWD="time backup   ~/Movies/       /Volumes/Public/Backup/Heron/Movies/"
alias backupDocsWD="time backup   ~/Documents/      /Volumes/Public/Backup/Heron/Documents/"

alias backupPicturesAmazon="rclone sync -v --bwlimit 1M --include '*.{JPG,jpg,jpeg,PNG,png,tiff}' Pictures/Photos\ Library.photoslibrary/Masters amazon_drive:photobackup"