# MySQL Backup nethomas
$d = get-date -uformat %m%d%Y
$mysqldump = "MySQL dump executable location"
$backupFilePath = "c:\backup\destination\file.sql"
$dbname = "dbToBackUp"
$mysqluser = "username"
$mysqlpass = "password"
cmd /c " `"$mysqldump`"  -u $mysqluser -p$mysqlpass $dbname > $backupFilePath "
#TODO LIST
#add file to to zip file named $dbname-%m%Y
#if file already exists add it to the zip file
# and then delete the $backupFIlePath.
#ooo write to event viewer or some type of other notifcation on success or failure
