[bits 64]
file_load_va: equ 0x10000         ; Load address for the ELF

; ELF Header
db 0x7f, 'E', 'L', 'F'            ; ELF Magic
db 2                               ; Class: 64-bit
db 1                               ; Endianness: Little Endian
db 1                               ; ELF version
db 0                               ; OS ABI
dq 0                               ; Unused padding
dw 2                               ; Type: executable
dw 0x3e                            ; Machine: x86_64
dd 1                               ; Version
dq entry_point + file_load_va     ; Entry point address
dq program_headers_start           ; Program header offset
dq 0                               ; Section header offset
dd 0                               ; Flags (unused)
dw 64                              ; ELF header size
dw 0x38                            ; Program header size
dw 1                               ; Number of program headers
dw 0x40                            ; Section header size
dw 0                               ; Number of section headers
dw 0                               ; Section header string table index

; Program Header
program_headers_start:
    dd 1                          ; Type: loadable segment
    dd 5                          ; Flags: executable, readable
    dq 0                          ; Offset in file (starts immediately)
    dq file_load_va               ; Virtual address to load
    dq file_load_va               ; Physical address (not used)
    dq code_end - program_headers_start ; Size of segment in file
    dq code_end - program_headers_start ; Size of segment in memory
    dq 0x200000                   ; Alignment

; Code to output the message
entry_point:
    mov rsi, file_load_va + message ; Load address of the message
    mov rdx, message_length          ; Load the message length
    mov rax, 1                       ; syscall: write
    mov rdi, 1                       ; file descriptor: stdout
    syscall                          ; invoke the syscall

    ; Exit the program
    mov rax, 60                      ; syscall: exit
    xor edi, edi                     ; exit code: 0
    syscall                          ; invoke the syscall

; Message data
message db 'I am an app on a QR', 0xA ; Message string with newline
message_length: equ $ - message        ; Length of the message

code_end:

