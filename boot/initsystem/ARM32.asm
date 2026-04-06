    AREA Boot_ARM32, CODE, READONLY
    ENTRY
start:
    LDR r0, =boot_partition
    BL init_partition
    LDR r0, =recovery_partition
    BL init_partition
    LDR r0, =dtbo_partition
    BL init_partition
    LDR r0, =vbmeta_partition
    BL init_partition
    LDR r0, =aboot_partition
    BL init_partition
    LDR r0, =logo_partition
    BL init_partition
    LDR r0, =misc_partition
    BL init_partition
    LDR r0, =sbl1_partition
    BL init_partition
    LDR r0, =rpm_partition
    BL init_partition
    LDR r0, =tz_partition
    BL init_partition
    LDR r0, =devcfg_partition
    BL init_partition
    LDR r0, =hyp_partition
    BL init_partition
    LDR r0, =system_partition
    BL init_partition
    LDR r0, =vendor_partition
    BL init_partition
    LDR r0, =product_partition
    BL init_partition
    LDR r0, =odm_partition
    BL init_partition
    LDR r0, =data_partition
    BL init_partition
    LDR r0, =cache_partition
    BL init_partition
    B hang

init_partition:
    BX lr

hang:
    B hang

boot_partition:    DCD 0x10000000
recovery_partition: DCD 0x10010000
dtbo_partition:    DCD 0x10020000
vbmeta_partition:  DCD 0x10030000
aboot_partition:   DCD 0x10040000
logo_partition:    DCD 0x10050000
misc_partition:    DCD 0x10060000
sbl1_partition:    DCD 0x10070000
rpm_partition:     DCD 0x10080000
tz_partition:      DCD 0x10090000
devcfg_partition:  DCD 0x100A0000
hyp_partition:     DCD 0x100B0000
system_partition:  DCD 0x20000000
vendor_partition:  DCD 0x30000000
product_partition: DCD 0x40000000
odm_partition:     DCD 0x50000000
data_partition:    DCD 0x60000000
cache_partition:   DCD 0x70000000
