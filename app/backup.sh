echo "["$(date +"%Y-%m-%d %H:%M:%S")"] Creating backup..." >> /backup/backup.log 2>&1
filename="backup-"$(date +"%Y-%m-%d-%H-%M-%S")".sql"
mysqldump -h $DB_HOST -u $DB_USER -p$DB_PASS $DB_DATABASE > /backup/$filename
echo "["$(date +"%Y-%m-%d %H:%M:%S")"] Backup created: "$filename >> /backup/backup.log 2>&1
