import os
import sys
import time
import shutil
import logging
import concurrent.futures

from datetime import datetime

os.chdir(sys.path[0])

format = "%(asctime)s: %(message)s"
logging.basicConfig(
    format=format, filename="zomboidBackup.log", level=logging.DEBUG, datefmt="%H:%M:%S"
)
logging.getLogger().addHandler(logging.StreamHandler(sys.stdout))


def validate_input():
    if not os.path.exists(ZOMBOID_DIR):
        logging.error(f'Zomboid Directory "{ZOMBOID_DIR}" does not exist, exiting...')
        raise FileNotFoundError(f'Zomboid Directory "{ZOMBOID_DIR}" does not exist.')

    if not os.path.exists(DESTINATION):
        try:
            os.mkdir(DESTINATION)
        except:
            logging.error(
                f'Destination Directory "{DESTINATION}" does not exist AND is not a valid directory path, exiting...'
            )
            raise FileNotFoundError(
                f'Destination Directory "{DESTINATION}" input is not a valid directory path.'
            )

    if len(sys.argv) != 5:
        logging.error(
            f"Invalid number of arguments, expected 3, got {len(sys.argv) - 1}. Exiting..."
        )
        raise ValueError(
            f"Invalid number of arguments, expected 3, got {len(sys.argv) - 1}."
        )
    sys.argv[4] = sys.argv[4] == "True"
    if not isinstance(sys.argv[4], bool):
        logging.error(f"IS_MP must be true or false, got {sys.argv[4]}, exiting...")
        raise ValueError(f"IS_MP must be a boolean, got {sys.argv[4]}")


ZOMBOID_DIR = sys.argv[1]
DESTINATION = sys.argv[2]
BACKUP_NAME = sys.argv[3]
IS_MP = sys.argv[4]


def validate_folders(*args):
    for path in args:
        if not os.path.exists(path):
            logging.error(f'Directory "{path}" does not exist, exiting...')
            raise FileNotFoundError(f'Directory "{path}" does not exist.')


def start_backup(name):
    logging.info(f"Validating input variables...")
    validate_input()

    time.perf_counter()
    logging.info(f'Beginning backup "{name}"')

    saves_dir = (
        os.path.join(ZOMBOID_DIR, "Saves")
        if not IS_MP
        else os.path.join(ZOMBOID_DIR, "Saves", "Multiplayer")
    )
    logging.info(f'Saves Directory: "{saves_dir}"')

    iso_data = os.path.join(saves_dir, "isoregiondata")

    if IS_MP:
        db_dir = os.path.join(ZOMBOID_DIR, "db")
        logging.info(f'Database Directory: "{db_dir}"')

        settings_dir = os.path.join(ZOMBOID_DIR, "Server")
        logging.info(f'Settings Directory: "{settings_dir}"')

    validate_folders(saves_dir, db_dir, settings_dir)

    dest = os.path.join(DESTINATION, name + get_date())
    logging.info(f'Destination Directory: "{dest}"')
    if os.path.exists(dest):
        logging.error(f'Destination Directory "{dest}" already exists, exiting...')
        raise FileExistsError(
            f'Destination "{dest}" already exists, rename the backup or delete the destination directory.'
        )
    try:
        os.mkdir(dest)
    except:
        logging.error(
            "Error creating destination directory, exiting... (this error should never occur, please tell Pwnsome)"
        )

    logging.info("Copying...")
    logging.info(
        "IMPORTANT: This will likely take more than a minute or two, don't close the program or your backup will be incomplete.\nThis window may close immediately upon completion, check zomboidBackup.log for more information."
    )

    with concurrent.futures.ThreadPoolExecutor(max_workers=4) as executor:
        executor.submit(
            shutil.copytree,
            saves_dir,
            os.path.join(dest, "saves"),
            ignore=lambda directory, contents: ["Common"]
            if directory == iso_data
            else [],
        )
        executor.submit(
            shutil.copytree, iso_data, os.path.join(dest, "saves", "isoregiondata")
        )
        if IS_MP:
            executor.submit(shutil.copytree, db_dir, os.path.join(dest, "db"))
            executor.submit(
                shutil.copytree, settings_dir, os.path.join(dest, "settings")
            )

    time_taken = time.perf_counter()
    time_taken = time_taken / 60
    logging.info(f"Backup completed in [{int(time_taken/60)}] seconds")
    logging.info("-------------------------------------------------------")

    return dest


def get_date():
    return datetime.now().strftime("_%d_%b_%Y")


if __name__ == "__main__":
    print(
        "Thanks for using my Zomboid backup script! If you encounter any errors, or have questions, please contact Pwnsome#0367 on Discord.\n\n"
    )
    start_backup(BACKUP_NAME)
