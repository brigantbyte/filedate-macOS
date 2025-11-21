# filedate-macOS

Easy file-level date changer script for macOS (supports 40+ system languages)

A tiny `.command` script (about **45 KB**) that lets you easily change the creation date of any file or folder on macOS — including all files inside subfolders.

No apps, no installers, no permissions beyond what macOS already provides.  
Just one portable file you can delete anytime.

---

## How to run it

1. Download **filedate_macos.command**
2. Give it permission once (required by macOS):

   ```bash
   chmod +x /path/to/filedate_macos.command
3. Double-click the `.command` file  
4. Drag any file or folder into the terminal window, press Enter  
5. Enter the new year → month → day → done


> [!IMPORTANT]
> This script relies on the `SetFile` utility (included with the Xcode command line tools).  
> If it isn’t yet installed, the script will prompt you to install it automatically.
>
> ```bash
> xcode-select --install
> ```

<br><br>

---

## Features
- Works on macOS 10.13+
- Interface automatically adapts to 40+ system languages
- English used as fallback if the language is not supported
- Validates dates (including leap years)
- Blocks future dates
- Recursively processes folders and their contents
- Pure bash + macOS native SetFile
- Leaves no files, no junk, no background services
- 100% local and open-source

---

## Why this script?
- No extra apps  
- No installation  
- No admin rights needed  
- Easy to delete  
- Ideal for quickly organising photos and files 
