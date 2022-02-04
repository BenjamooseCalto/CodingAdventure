@ECHO OFF

set ZOMBOID_DIR=F:\Servers\ZomboidB41\Zomboid
set DESTINATION_DIR=D:\Backups\Zomboid
set BACKUP_NAME=robotnik
set IS_MP=false

python zomboidBackup.py %ZOMBOID_DIR% %DESTINATION_DIR% %BACKUP_NAME% %IS_MP%

pause