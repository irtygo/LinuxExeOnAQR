# QR Code ELF Executable

This project captures a QR code from a webcam, decodes it, and saves the output as an executable ELF file. The script allows you to run arbitrary code encoded in a QR code.

## Features

- Captures QR code data from your webcam in real-time.
- Decodes the QR code and saves the output as a Linux executable (`qr.elf`).
- Simple and easy to use.

## Prerequisites

Make sure you have the following installed on your Linux system:

- **zbar**: For capturing and decoding QR codes.
- **bash**: The script is written in bash, which is standard on most Linux distributions.

### Installation

You can install `zbar` using your package manager. For example:

```bash
# For Ubuntu/Debian
sudo apt-get install libzbar0 zbar-tools

# For Fedora
sudo dnf install zbar

# For Arch Linux
sudo pacman -S zbar
