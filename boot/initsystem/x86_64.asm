section .text
global _start
_start:
    mov rdi, boot_partition
    call init_partition
    mov rdi, recovery_partition
    call init_partition
    mov rdi, dtbo_partition
    call init_partition
    mov rdi, vbmeta_partition
    call init_partition
    mov rdi, aboot_partition
    call init_partition
    mov rdi, logo_partition
    call init_partition
    mov rdi, misc_partition
    call init_partition
    mov rdi, sbl1_partition
    call init_partition
    mov rdi, rpm_partition
    call init_partition
    mov rdi, tz_partition
    call init_partition
    mov rdi, devcfg_partition
    call init_partition
    mov rdi, hyp_partition
    call init_partition
    mov rdi, system_partition
    call init_partition
    mov rdi, vendor_partition
    call init_partition
    mov rdi, product_partition
    call init_partition
    mov rdi, odm_partition
    call init_partition
    mov rdi, data_partition
    call init_partition
    mov rdi, cache_partition
    call init_partition
    jmp hang

init_partition:
    ret

hang:
    jmp hang

section .data
boot_partition:    dq 0x10000000
recovery_partition:dq 0x10010000
dtbo_partition:    dq 0x10020000
vbmeta_partition:  dq 0x10030000
aboot_partition:   dq 0x10040000
logo_partition:    dq 0x10050000
misc_partition:    dq 0x10060000
sbl1_partition:    dq 0x10070000
rpm_partition:     dq 0x10080000
tz_partition:      dq 0x10090000
devcfg_partition:  dq 0x100A0000
hyp_partition:     dq 0x100B0000
system_partition:  dq 0x20000000
vendor_partition:  dq 0x30000000
product_partition: dq 0x40000000
odm_partition:     dq 0x50000000
data_partition:    dq 0x60000000
cache_partition:   dq 0x70000000
