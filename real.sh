#!/bin/bash

# Capture QR code from webcam, decode base64, and save as qr.elf
zbarcam --raw -1 | base64 -d > qr.elf

# Make the ELF file executable
chmod +x qr.elf

# Notify user
echo "qr.elf created and marked as executable. You can run it with './qr.elf'."

