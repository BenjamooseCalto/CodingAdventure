To use this script, right click "backup.bat" click edit, and then edit the four variables at the top.

ZOMBOID_DIR is where your zomboid saves are kept, by default it is set to "C:\Users\<NAME>\Zomboid".
DESTINATION_DIR is where you want your backup to go, each backup will create it's own folder inside the folder you specify.
BACKUP_NAME is what you want to call your backup.
IS_MP is whether you're backing up a dedicated server, defaults to False, all this really does is backup the "server" and "db" folders along with ONLY the multiplayer saves.
^ please capitalize True or False

This will generate a log file in the same directory these files are in, contains useful debugging info.