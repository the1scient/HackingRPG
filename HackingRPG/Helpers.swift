import Foundation

    func type(texto: String, time: Int) {
        
       let fala = Array(texto)
       
       setbuf(__stdoutp, nil)
        for i in fala {
            print(i, terminator: "")
            usleep(useconds_t(time))
        }
        
        print("\n")
        
    }
    


    
    func dots(quantidade: Int, time: Int) {
        for _ in 1...quantidade {
            
            usleep(useconds_t(time))
            print("... \n")
            
        }
        
    }
    
    func clear() {
        print("\u{001B}[2J")
    }

  
func separator() {
    print("______________________________________")
}


extension String {
    // Estilo do texto
    func bold() -> String { juntar("1")}
    func dim() -> String { juntar("2")}
    func italic() -> String { juntar("3")}
    // Cores do texto e background
    func black() -> String { juntar("30") }
    func red() -> String { juntar("31") }
    func green() -> String { juntar("32") }
    func yellow() -> String { juntar("33") }
    func blue() -> String { juntar("34") }
    func magenta() -> String { juntar("35") }
    func cyan() -> String { juntar("36") }
    func white() -> String { juntar("37") }
    func bgBlack() -> String { juntar("40") }
    func bgRed() -> String { juntar("41") }
    func bgGreen() -> String { juntar("42") }
    func bgYellow() -> String { juntar("43") }
    func bgBlue() -> String { juntar("44") }
    func bgMagenta() -> String { juntar("45") }
    func bgCyan() -> String { juntar("46") }
    func bgWhite() -> String { juntar("47") }

    func black2() -> String { juntar("90") }
    func red2() -> String { juntar("91") }
    func green2() -> String { juntar("92") }
    func yellow2() -> String { juntar("93") }
    func blue2() -> String { juntar("94") }
    func magenta2() -> String { juntar("95") }
    func cyan2() -> String { juntar("96") }
    func white2() -> String { juntar("97") }
    func bgBlack2() -> String { juntar("100") }
    func bgRed2() -> String { juntar("101") }
    func bgGreen2() -> String { juntar("102") }
    func bgYellow2() -> String { juntar("103") }
    func bgBlue2() -> String { juntar("104") }
    func bgMagenta2() -> String { juntar("105") }
    func bgCyan2() -> String { juntar("106") }
    func bgWhite2() -> String { juntar("107") }

    func juntar(_ cor: String) -> String {
        "\u{001B}[0;" + cor + "m" + self + "\u{001B}[0;0m"
  }

    var tamanho: Int { self.count - 13 }

    
    

}



func boot() {
    
type(texto: """
 Uncompressing Linux... done, booting the kernel.
 [    0.000000] Booting Linux on physical CPU 0x0
 [    0.000000] Initializing cgroup subsys cpu
 [    0.000000] Initializing cgroup subsys cpuacct
 [    0.000000] Linux version 3.18.10+ (dc4@dc4-XPS13-9333) (gcc version 4.8.3 20140303 (prerelease) (crosstool-NG linaro-1.13.1+bzr2650 - Linaro GCC 2014.03)) #775 PREEMPT Thu Apr 2 18:10:12 BST 2015
 [    0.000000] CPU: ARMv6-compatible processor [410fb767] revision 7 (ARMv7), cr=00c5387d
 [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT nonaliasing instruction cache
 [    0.000000] Machine model: Raspberry Pi Model B
 [    0.000000] cma: Reserved 8 MiB at 0x0b800000
 [    0.000000] Memory policy: Data cache writeback
 [    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 48768
 [    0.000000] Kernel command line: dma.dmachans=0x7f35 bcm2708_fb.fbwidth=656 bcm2708_fb.fbheight=416 bcm2708.boardrev=0x2 bcm2708.serial=0xb51cb961 smsc95x.macaddr=B8:27:EB:1C:B9:61 bcm2708_fb.fbswap=1 sdhci-bcm2708.emmc_clock_freq=250000000 vc_mem.mem_base=0xec00000 vc_mem.mem_size=0x10000000  dwc_otg.lpm_enabe=0 console=ttyAMA0,115200 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 elevator=deadline rootwait
 [    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
 [    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
 [    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
 [    0.000000] Memory: 177372K/196608K available (5885K kernel code, 348K rwdata, 1868K rodata, 340K init, 733K bss, 19236K reserved)
 [    0.000000] Virtual kernel memory layout:
 [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
 [    0.000000]     fixmap  : 0xffc00000 - 0xffe00000   (2048 kB)
 [    0.000000]     vmalloc : 0xcc800000 - 0xff000000   ( 808 MB)
 [    0.000000]     lowmem  : 0xc0000000 - 0xcc000000   ( 192 MB)
 [    0.000000]     modules : 0xbf000000 - 0xc0000000   (  16 MB)
 [    0.000000]       .text : 0xc0008000 - 0xc079a78c   (7754 kB)
 [    0.000000]       .init : 0xc079b000 - 0xc07f0000   ( 340 kB)
 [    0.000000]       .data : 0xc07f0000 - 0xc084711c   ( 349 kB)
 [    0.000000]        .bss : 0xc084711c - 0xc08fe848   ( 734 kB)
 [    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
 [    0.000000] Preemptible hierarchical RCU implementation.
 [    0.000000] NR_IRQS:522
 [    0.000027] sched_clock: 32 bits at 1000kHz, resolution 1000ns, wraps every 2147483648000ns
 [    0.000077] Switching to timer-based delay loop, resolution 1000ns
 [    0.000359] Console: colour dummy device 80x30
 [    0.001422] console [tty1] enabled
 [    0.001469] Calibrating delay loop (skipped), value calculated using timer frequency.. 2.00 BogoMIPS (lpj=10000)
 [    0.001545] pid_max: default: 32768 minimum: 301
 [    0.001931] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
 [    0.001997] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
 [    0.003000] Initializing cgroup subsys memory
 [    0.003093] Initializing cgroup subsys devices
 [    0.003151] Initializing cgroup subsys freezer
 [    0.003204] Initializing cgroup subsys net_cls
 [    0.003254] Initializing cgroup subsys blkio
 [    0.003377] CPU: Testing write buffer coherency: ok
 [    0.003498] ftrace: allocating 19229 entries in 57 pages
 [    0.107319] Setting up static identity map for 0x553698 - 0x5536d0
 [    0.110174] devtmpfs: initialized
 [    0.127357] VFP support v0.3: implementor 41 architecture 1 part 20 variant b rev 5
 [    0.130404] pinctrl core: initialized pinctrl subsystem
 [    0.133123] NET: Registered protocol family 16
 [    0.138594] DMA: preallocated 4096 KiB pool for atomic coherent allocations
 [    0.139999] bcm2708.uart_clock = 3000000
 [    0.142890] No ATAGs?
 [    0.142954] hw-breakpoint: found 6 breakpoint and 1 watchpoint registers.
 [    0.143016] hw-breakpoint: maximum watchpoint size is 4 bytes.
 [    0.143083] mailbox: Broadcom VideoCore Mailbox driver
 [    0.143245] bcm2708_vcio: mailbox at f200b880
 [    0.143703] bcm_power: Broadcom power driver
 [    0.143761] bcm_power_open() -> 0
 [    0.143791] bcm_power_request(0, 8)
 [    0.644504] bcm_mailbox_read -> 00000080, 0
 [    0.644551] bcm_power_request -> 0
 [    0.644761] Serial: AMBA PL011 UART driver
 [    0.645001] dev:f1: ttyAMA0 at MMIO 0x20201000 (irq = 83, base_baud = 0) is a PL011 rev3
 [    1.026171] console [ttyAMA0] enabled
 [    1.089428] SCSI subsystem initialized
 [    1.093582] usbcore: registered new interface driver usbfs
 [    1.099370] usbcore: registered new interface driver hub
 [    1.104873] usbcore: registered new device driver usb
 [    1.112045] Switched to clocksource stc
 [    1.144472] FS-Cache: Loaded
 [    1.147792] CacheFiles: Loaded
 [    1.167352] NET: Registered protocol family 2
 [    1.173329] TCP established hash table entries: 2048 (order: 1, 8192 bytes)
 [    1.180389] TCP bind hash table entries: 2048 (order: 1, 8192 bytes)
 [    1.187044] TCP: Hash tables configured (established 2048 bind 2048)
 [    1.193567] TCP: reno registered
 [    1.196842] UDP hash table entries: 256 (order: 0, 4096 bytes)
 [    1.202767] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
 [    1.209433] NET: Registered protocol family 1
 [    1.214527] RPC: Registered named UNIX socket transport module.
 [    1.220497] RPC: Registered udp transport module.
 [    1.225329] RPC: Registered tcp transport module.
 [    1.230060] RPC: Registered tcp NFSv4.1 backchannel transport module.
 [    1.237793] bcm2708_dma: DMA manager at f2007000
 [    1.242844] vc-mem: phys_addr:0x00000000 mem_base=0x0ec00000 mem_size:0x10000000(256 MiB)
 [    1.252677] futex hash table entries: 256 (order: -1, 3072 bytes)
 [    1.258959] audit: initializing netlink subsys (disabled)
 [    1.264643] audit: type=2000 audit(1.030:1): initialized
 [    1.285511] VFS: Disk quotas dquot_6.5.2
 [    1.289878] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
 [   10.386572] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)
 [   10.867335] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)
 [   11.810617] random: nonblocking pool is initialized
 [   11.849114] Driver for 1-wire Dallas network protocol.
 [   12.167722] i2c /dev entries driver
 """, time: 500)
    
    
}

func createChoice(choices: [String], correct: Int, wrongChoiceText: String, repeats: Bool) {
    
    for i in choices {
        type(texto: "\(i)", time: speed)
    }
    
    
    let choice = Int(readLine()!)!
    
    if repeats == true && choice != correct {
        type(texto: wrongChoiceText, time: speed)
        createChoice(choices: choices, correct: correct, wrongChoiceText: wrongChoiceText, repeats: repeats)
    }
    else if repeats == false && choice == correct {
        
    }
    else if repeats == true && choice == correct {
        
    }
    else {
        print(choice)
        print(correct)
        arrested(text: wrongChoiceText)
    }

}
    
func inventoryTyper(text: String) {
    
    print("||  \(text)   ||")
    
}

func chooseSpeed() {
    
    print("Selecione a velocidade de digitação do texto (1 - 10). 1 sendo muito rápido e 10 sendo muito lento.")
    
    let userSpeedChoice = Int(readLine()!)!
    
    if userSpeedChoice < 1 || userSpeedChoice > 10 {
        print("Opção inválida! Tente novamente.")
        chooseSpeed()
    }
    
    speed = userSpeedChoice * 10000
    
    type(texto: "O texto ficará nessa velocidade. Você tem certeza de que deseja jogar com essa velocidade?   [S/n]", time: speed)
    
    let userNewSpeedChoice = readLine()!
    
    if userNewSpeedChoice == "S" || userNewSpeedChoice == "s" {
        
    }
    else {
        chooseSpeed()
    }
    
    clear()
    
}


func verifyVpn(arrestedText: String) {
    
    if vpnActive == false {
        
        print(vpnActive)
        
        arrested(text: arrestedText)
        
    }
    
    else {
        
    }
    
    
}
