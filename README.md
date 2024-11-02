# raspberrypi_chrome_cleanup
This is to create a solution for using a browser on Raspberry Pis when the browser opens with a scrambled window.
# Chromium Clean Setup Script

This script automates the process of setting up a `chromium-clean` alias and creating a desktop shortcut to open Chromium on your Raspberry Pi without the scrambled window issue.

## Files in this Repository
- `setup_chromium_clean.sh`: The main setup script for creating the alias and desktop shortcut.

## Instructions for Setup

1. **Download the Script**:
   - Download `setup_chromium_clean.sh` to your Raspberry Pi.

2. **Make the Script Executable**:
   - Open a terminal on your Raspberry Pi and navigate to the directory where the script is saved.
   ```bash
   chmod +x setup_chromium_clean.sh
   ```

3. **Run the Script**:
   - Run the script to complete the setup:
   ```bash
   ./setup_chromium_clean.sh
   ```

This will:

- Add an alias called `chromium-clean` to your `.bashrc` file, allowing you to open Chromium with specific options to prevent window scrambling.
- Create a desktop shortcut named `Chromium Clean` that you can double-click to open Chromium with the same settings.

## Usage

After running the script, you have two ways to open Chromium with the custom settings:

1. **Using the Terminal**:
   - Open a terminal and type:
     ```bash
     chromium-clean
     ```

2. **Using the Desktop Shortcut**:
   - Locate and double-click the `Chromium Clean` icon on your desktop.

## Script Details

The script performs the following actions:

1. Adds an alias `chromium-clean` to your `.bashrc` file to run Chromium with the following options:
   ```bash
   export DISPLAY=:10 && chromium-browser --no-sandbox --disable-gpu --disable-software-rasterizer
   ```
2. Reloads `.bashrc` to make the alias available immediately.
3. Creates a desktop shortcut for `chromium-clean` using `lxterminal` to prevent window scrambling.

**Enjoy your optimized Chromium experience on your Raspberry Pi!**
