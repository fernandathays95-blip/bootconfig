    .section .text
    .global _start
_start:
    ldr x0, =boot_partition
    bl init_partition
    ldr x0, =recovery_partition
    bl init_partition
    ldr x0, =dtbo_partition
    bl init_partition
    ldr x0, =vbmeta_partition
    bl init_partition
    ldr x0, =aboot_partition
    bl init_partition
    ldr x0, =logo_partition
    bl init_partition
    ldr x0, =misc_partition
    bl init_partition
    ldr x0, =sbl1_partition
    bl init_partition
    ldr x0, =rpm_partition
    bl init_partition
    ldr x0, =tz_partition
    bl init_partition
    ldr x0, =devcfg_partition
    bl init_partition
    ldr x0, =hyp_partition
    bl init_partition
    ldr x0, =system_partition
    bl init_partition
    ldr x0, =vendor_partition
    bl init_partition
    ldr x0, =product_partition
    bl init_partition
    ldr x0, =odm_partition
    bl init_partition
    ldr x0, =data_partition
    bl init_partition
    ldr x0, =cache_partition
    bl init_partition
    b hang

init_partition:
    ret

hang:
    b hang

    .data
boot_partition:    .quad 0x10000000
recovery_partition:.quad 0x10010000
dtbo_partition:    .quad 0x10020000
vbmeta_partition:  .quad 0x10030000
aboot_partition:   .quad 0x10040000
logo_partition:    .quad 0x10050000
misc_partition:    .quad 0x10060000
sbl1_partition:    .quad 0x10070000
rpm_partition:     .quad 0x10080000
tz_partition:      .quad 0x10090000
devcfg_partition:  .quad 0x100A0000
hyp_partition:     .quad 0x100B0000
system_partition:  .quad 0x20000000
vendor_partition:  .quad 0x30000000
product_partition: .quad 0x40000000
odm_partition:     .quad 0x50000000
data_partition:    .quad 0x60000000
cache_partition:   .quad 0x70000000
