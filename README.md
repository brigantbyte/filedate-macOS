# filedate-macOS

Lightweight script-app for changing file dates on macOS (supports 30+ system languages)

A tiny script-app (macOS `.app` with an embedded `.command`) that lets you easily change the creation date of any file or folder on macOS, including all files inside subfolders.

No installers, no permissions beyond what macOS already provides.
Just one portable app you can delete anytime.

---

## How to run it

1. Download **filedate_macos.app**
2. (Optional) If you prefer the `.command` version, give it permission once:

   ```bash
   chmod +x /path/to/filedate_macos.command
   ```

3. Double-click the `.app`
4. Drag any file or folder into the terminal window, press Enter
5. Enter the new year → month → day → done

> [!IMPORTANT]
> This script relies on the `SetFile` utility (included with the Xcode command line tools).
> If it isn’t yet installed, the script will prompt you to install it automatically.
>
> ```bash
> xcode-select --install
> ```

---

## Features

- Works on macOS 10.13+
- Interface automatically adapts to 30+ system languages
- English used as fallback if the language is not supported
- Validates dates (including leap years)
- Blocks future dates
- Recursively processes folders and their contents
- Pure bash + macOS native SetFile
- Leaves no files, no junk, no background services
- 100% local and open-source

---

## Why this script?

- No installation
- No admin rights needed
- Easy to delete
- Ideal for quickly organising photos and files

---

## Third-Party Licenses

This project can bundle `ExifTool` for updating internal metadata. ExifTool is
Copyright (c) 2003-2025, Phil Harvey. It is free software; you can redistribute
it and/or modify it under the same terms as Perl itself (Artistic License 1.0 or
GPL 1+).

More information: https://exiftool.org/
