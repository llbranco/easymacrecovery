# Easy MacRecovery
[![pt-br](https://img.shields.io/badge/lang-pt--br-green.svg)](README.pt-br.md)


This project aims to simplify the macOS recovery process using the `easy_macrecovery.bat` script. The script allows the user to select different macOS versions and download the corresponding firmware using the `macrecovery.py` utility.
---

![image](https://github.com/user-attachments/assets/4128fa12-a185-4ccf-9a43-b47d65e160a6)


## How to Use

### Requirements:
- Python 3.x installed
- [OpenCore](https://github.com/acidanthera/OpenCorePkg/releases)
- `macrecovery.py` available in the `Utilities\macrecovery` directory of the OpenCore folder
- (Optional) [OpCore-Simplify](https://github.com/lzhoang2801/OpCore-Simplify)

### Steps:
1. Download [OpenCore](https://github.com/acidanthera/OpenCorePkg/releases)
2. Download or clone this repository.
3. place the easy_macrecovery side-by-side with opencore folder
4. run the `easy_macrecovery.bat` script.
5. The script will automatically detect the OpenCore version and ask you to choose the macOS version for recovery.
6. The script will then execute the command to download the corresponding recovery version.
7. prepare your USB drive using Rufus
   
![image](https://github.com/user-attachments/assets/9dee8949-df28-4bdb-bdd7-43ca6208305c)

9. copy the folder `OpenCore-x.x.x-RELEASE\Utilities\macrecovery\com.apple.recovery.boot` to the root or your USB drive
10. copy the folder `OpenCore-x.x.x-RELEASE\x64\EFI` to the root of your USB drive
11. your USB drive should look like this:

![image](https://github.com/user-attachments/assets/42d66574-594e-4320-9db7-e4980a818f4a)

For better experience use [OpCore-Simplify](https://github.com/lzhoang2801/OpCore-Simplify) to create your EFI folder

### How it works:
The script automatically detects the corresponding OpenCore folder, allows you to select the desired macOS version, and runs the `macrecovery.py` command to download the system recovery.

---
objetivos do projeto (sem tempo estimado e sem ordem especifica):
- suporte a Shell Script Linux/Mac
- suporte a discos multiboot (multiplas versões de mac no mesmo pendrive)
- suporte a criação de pendrives com instalação de mac/linux/windows (possivelmente com ventoy ou E2B)

Made with love by @llbranco #llbranco


### random stuff
Keyboard customizer for macOS.
https://karabiner-elements.pqrs.org/
