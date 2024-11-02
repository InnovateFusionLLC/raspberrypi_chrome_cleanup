
#!/bin/bash

# Step 1: Add alias to .bashrc
echo "alias chromium-clean='export DISPLAY=:10 && chromium-browser --no-sandbox --disable-gpu --disable-software-rasterizer'" >> ~/.bashrc

# Step 2: Reload .bashrc to make alias available
source ~/.bashrc

# Step 3: Create the Desktop shortcut
desktop_file_path=~/Desktop/chromium-clean.desktop

echo "[Desktop Entry]
Name=Chromium Clean
Comment=Open Chromium without scrambling
Exec=lxterminal -e "bash -c 'export DISPLAY=:10 && chromium-browser --no-sandbox --disable-gpu --disable-software-rasterizer'"
Icon=chromium-browser
Terminal=false
Type=Application
Categories=Internet;" > $desktop_file_path

# Step 4: Make the Desktop shortcut executable
chmod +x $desktop_file_path

echo "Setup complete! You can now use 'chromium-clean' in the terminal or the Desktop shortcut to open Chromium with the necessary settings."
