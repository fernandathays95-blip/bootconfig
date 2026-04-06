    .section .text
    .globl _start
_start:
    la a0, boot_partition
    jal ra, init_partition
    la a0, recovery_partition
    jal ra, init_partition
    la a0, dtbo_partition
    jal ra, init_partition
    la a0, vbmeta_partition
    jal ra, init_partition
    la a0, aboot_partition
    jal ra, init_partition
    la a0, logo_partition
    jal ra, init_partition
    la a0, misc_partition
    jal ra, init_partition
    la a0, sbl1_partition
    jal ra, init_partition
    la a0, rpm_partition
    jal ra, init_partition
    la a0, tz_partition
    jal ra, init_partition
    la a0, devcfg_partition
    jal ra, init_partition
    la a0, hyp_partition
    jal ra, init_partition
    la a0, system_partition
    jal ra, init_partition
    la a0, vendor_partition
    jal ra, init_partition
    la a0, product_partition
    jal ra, init_partition
    la a0, odm_partition
    jal ra, init_partition
    la a0, data_partition
    jal ra, init_partition
    la a0, cache_partition
    jal ra, init_partition
    j hang

init_partition:
    ret

hang:
    j hang

    .section .data
boot_partition:     .word 0x10000000
recovery_partition: .word 0x10010000
dtbo_partition:     .word 0x10020000
vbmeta_partition:   .word 0x10030000
aboot_partition:    .word 0x10040000
logo_partition:     .word 0x10050000
misc_partition:     .word 0x10060000
sbl1_partition:     .word 0x10070000
rpm_partition:      .word 0x10080000
tz_partition:       .word 0x10090000
devcfg_partition:   .word 0x100A0000
hyp_partition:      .word 0x100B0000
system_partition:   .word 0x20000000
vendor_partition:   .word 0x30000000
product_partition:  .word 0x40000000
odm_partition:      .word 0x50000000
data_partition:     .word 0x60000000
cache_partition:    .word 0x70000000
