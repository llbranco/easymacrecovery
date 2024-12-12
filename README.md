# Easy MacRecovery

This project aims to simplify the macOS recovery process using the `easy_macrecovery.bat` script. The script allows the user to select different macOS versions and download the corresponding firmware using the `macrecovery.py` utility.
---

## How to Use

### Requirements:
- Python 3.x installed
- [OpenCore](https://github.com/acidanthera/OpenCorePkg/releases)
- `macrecovery.py` available in the `Utilities\macrecovery` directory of the OpenCore folder
- Access to the folder containing the `OpenCore-*-RELEASE` directory structure

### Steps:
1. Download [OpenCore](https://github.com/acidanthera/OpenCorePkg/releases)
2. Download or clone this repository.
3. place the easy_macrecovery side-by-side with opencore folder
4. run the `easy_macrecovery.bat` script.
5. The script will automatically detect the OpenCore version and ask you to choose the macOS version for recovery.
6. The script will then execute the command to download the corresponding recovery version.

### How it works:
The script automatically detects the corresponding OpenCore folder, allows you to select the desired macOS version, and runs the `macrecovery.py` command to download the system recovery.

---

