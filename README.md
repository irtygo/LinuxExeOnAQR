# Small ELF Project

## Overview

This project demonstrates a minimal ELF executable that outputs a message to standard output. The ELF file is designed to be compact and showcases basic system call usage in assembly language.

## Features

- **Size:** Less than or equal to **512 bytes**.
- Outputs the message: `"I am an app on a QR\n"` when executed.
- Built using assembly language with no dependencies on standard libraries, ensuring a small footprint.

## Requirements

- Linux system
- Development tools: `nasm`

## Building the ELF

1. Clone the repository:

   ```bash
   git clone https://github.com/Last-Hub-vode/LinuxExeOnAQR/
   cd LinuxExeOnAQR
   nasm -f bin header.asm -o a.out
   ```

## Running the ELF
  ```bash
 ./a.out (for direct)
run real.sh to scan qr code and run it.
  ```

## License
This project, including the ELF file, is licensed under the Unlicense.

## Acknowledgments
Inspired by various resources on ELF file structure and assembly programming.
I forgot to mention this before but ChatGPT helped generate this README
