section .text
global _start
_start:
    mov eax, boot_partition
    call init_partition
    mov eax, recovery_partition
    call init_partition
    mov eax, dtbo_partition
    call init_partition
    mov eax, vbmeta_partition
    call init_partition
    mov eax, aboot_partition
    call init_partition
    mov eax, logo_partition
    call init_partition
    mov eax, misc_partition
    call init_partition
    mov eax, sbl1_partition
    call init_partition
    mov eax, rpm_partition
    call init_partition
    mov eax, tz_partition
    call init_partition
    mov eax, devcfg_partition
    call init_partition
    mov eax, hyp_partition
    call init_partition
    mov eax, system_partition
    call init_partition
    mov eax, vendor_partition
    call init_partition
    mov eax, product_partition
    call init_partition
    mov eax, odm_partition
    call init_partition
    mov eax, data_partition
    call init_partition
    mov eax, cache_partition
    call init_partition
    jmp hang

init_partition:
    ret

hang:
    jmp hang

section .data
boot_partition:    dd 0x10000000
recovery_partition:dd 0x10010000
dtbo_partition:    dd 0x10020000
vbmeta_partition:  dd 0x10030000
aboot_partition:   dd 0x10040000
logo_partition:    dd 0x10050000
misc_partition:    dd 0x10060000
sbl1_partition:    dd 0x10070000
rpm_partition:     dd 0x10080000
tz_partition:      dd 0x10090000
devcfg_partition:  dd 0x100A0000
hyp_partition:     dd 0x100B0000
system_partition:  dd 0x20000000
vendor_partition:  dd 0x30000000
product_partition: dd 0x40000000
odm_partition:     dd 0x50000000
data_partition:    dd 0x60000000
cache_partition:   dd 0x70000000
