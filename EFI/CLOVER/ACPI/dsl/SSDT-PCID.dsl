/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLLlp517.aml, Sun Dec 15 08:16:19 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000013B7 (5047)
 *     Revision         0x02
 *     Checksum         0x1D
 *     OEM ID           "E7450"
 *     OEM Table ID     "PCI"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190509 (538510601)
 */
DefinitionBlock ("", "SSDT", 2, "E7450", "PCI", 0x00000000)
{
    External (_SB_.PCI0.B0D4, DeviceObj)
    External (_SB_.PCI0.D031, DeviceObj)
    External (_SB_.PCI0.EH01, DeviceObj)
    External (_SB_.PCI0.GLAN, DeviceObj)
    External (_SB_.PCI0.HDAU, DeviceObj)
    External (_SB_.PCI0.HDEF, DeviceObj)
    External (_SB_.PCI0.IGPU, DeviceObj)
    External (_SB_.PCI0.IMEI, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01.SDXC, DeviceObj)
    External (_SB_.PCI0.RP04, DeviceObj)
    External (_SB_.PCI0.RP04.ARPT, DeviceObj)
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.PCI0.SBUS, DeviceObj)
    External (_SB_.PCI0.XHC_, DeviceObj)

    Device (_SB.PCI0.IGPU)
    {
        Name (_ADR, 0x00020000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x14)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x26, 0x16                           // ..&.
                }, 

                "AAPL00,override-no-connect", 
                Buffer (0x80)
                {
                    /* 0000 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,  // ........
                    /* 0008 */  0x06, 0x10, 0x7C, 0x9C, 0x00, 0x00, 0x00, 0x00,  // ..|.....
                    /* 0010 */  0x00, 0x18, 0x01, 0x04, 0x95, 0x1F, 0x11, 0x60,  // .......`
                    /* 0018 */  0xEA, 0x6F, 0xB1, 0xA7, 0x55, 0x4C, 0x9E, 0x25,  // .o..UL.%
                    /* 0020 */  0x0C, 0x50, 0x54, 0x00, 0x00, 0x00, 0x01, 0x01,  // .PT.....
                    /* 0028 */  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,  // ........
                    /* 0030 */  0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x2E, 0x36,  // .......6
                    /* 0038 */  0x80, 0xA0, 0x70, 0x38, 0x1F, 0x40, 0x30, 0x20,  // ..p8.@0 
                    /* 0040 */  0x35, 0x00, 0x35, 0xAE, 0x10, 0x00, 0x00, 0x1A,  // 5.5.....
                    /* 0048 */  0x52, 0x2B, 0x80, 0xA0, 0x70, 0x38, 0x1F, 0x40,  // R+..p8.@
                    /* 0050 */  0x30, 0x20, 0x35, 0x00, 0x35, 0xAE, 0x10, 0x00,  // 0 5.5...
                    /* 0058 */  0x00, 0x1A, 0x00, 0x00, 0x00, 0xFE, 0x00, 0x33,  // .......3
                    /* 0060 */  0x47, 0x50, 0x57, 0x30, 0x80, 0x31, 0x34, 0x30,  // GPW0.140
                    /* 0068 */  0x57, 0x46, 0x33, 0x0A, 0x00, 0x00, 0x00, 0x00,  // WF3.....
                    /* 0070 */  0x00, 0x00, 0x41, 0x31, 0x9E, 0x00, 0x10, 0x00,  // ..A1....
                    /* 0078 */  0x00, 0x0A, 0x01, 0x0A, 0x20, 0x20, 0x00, 0xBB   // ....  ..
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 5500"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "AAPL,slot-name", 
                Buffer (0x0F)
                {
                    "Internal@0,2,0"
                }, 

                "device_type", 
                Buffer (0x1A)
                {
                    "VGA Compatible Controller"
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x16, 0x16, 0x00, 0x00                           // ....
                }, 

                "name", 
                Buffer (0x0F)
                {
                    "Retina Display"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x00                                             // .
                }
            })
        }
    }

    Device (_SB.PCI0.HDAU)
    {
        Name (_ADR, 0x00030000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x12)
            {
                "model", 
                Buffer (0x1D)
                {
                    "Broadwell-U Audio Controller"
                }, 

                "layout-id", 
                Buffer (0x04)
                {
                     0x0B, 0x00, 0x00, 0x00                           // ....
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-3"
                }, 

                "device_type", 
                Buffer (0x0D)
                {
                    "Audio Device"
                }, 

                "AAPL,slot-name", 
                Buffer (0x0F)
                {
                    "Internal@0,3,0"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x0C, 0x16, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,160c"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x00                                             // .
                }
            })
        }
    }

    Device (_SB.PCI0.B0D4)
    {
        Name (_ADR, 0x00040000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0E)
            {
                "model", 
                Buffer (0x28)
                {
                    "Broadwell-U Processor Thermal Subsystem"
                }, 

                "device_type", 
                Buffer (0x1D)
                {
                    "Signal Processing Controller"
                }, 

                "AAPL,slot-name", 
                Buffer (0x0F)
                {
                    "Internal@0,4,0"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x03, 0x16, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,1603"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x00                                             // .
                }
            })
        }
    }

    Device (_SB.PCI0.XHC)
    {
        Name (_ADR, 0x00140000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x1A)
            {
                "AAPL,slot-name", 
                Buffer (0x10)
                {
                    "Internal@0,20,0"
                }, 

                "AAPL,current-available", 
                0x0834, 
                "AAPL,current-extra", 
                0x0A8C, 
                "AAPL,current-in-sleep", 
                0x03E8, 
                "AAPL,current-extra-in-sleep", 
                0x0834, 
                "AAPL,max-port-current-in-sleep", 
                0x0A8C, 
                "AAPL,device-internal", 
                0x02, 
                "name", 
                Buffer (0x37)
                {
                    "Intel 9 Series Chipset Family USB xHCI Host Controller"
                }, 

                "model", 
                Buffer (0x62)
                {
                    "Intel 9 Series Chipset Family USB 3.1 Host (Intel Broadwell Wildcat Point-LP USB xHCI Controller)"
                }, 

                "device_type", 
                Buffer (0x0F)
                {
                    "USB Controller"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0xB1, 0x9C, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,9cb1"
                }
            })
        }
    }

    Device (_SB.PCI0.IMEI)
    {
        Name (_ADR, 0x00160000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0C)
            {
                "model", 
                Buffer (0x23)
                {
                    "Wildcat Point-LP MEI Controller #1"
                }, 

                "device_type", 
                Buffer (0x19)
                {
                    "Communication controller"
                }, 

                "AAPL,slot-name", 
                Buffer (0x10)
                {
                    "Internal@0,22,0"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0xBA, 0x9C, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,9cba"
                }
            })
        }
    }

    Device (_SB.PCI0.GLAN)
    {
        Name (_ADR, 0x00190000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0C)
            {
                "model", 
                Buffer (0x20)
                {
                    "Ethernet Connection (3) I218-LM"
                }, 

                "device_type", 
                Buffer (0x14)
                {
                    "Ethernet controller"
                }, 

                "AAPL,slot-name", 
                Buffer (0x10)
                {
                    "Internal@0,25,0"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0xA2, 0x15, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,15a2"
                }
            })
        }
    }

    Device (_SB.PCI0.HDEF)
    {
        Name (_ADR, 0x001B0000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x12)
            {
                "model", 
                Buffer (0x32)
                {
                    "Wildcat Point-LP High Definition Audio Controller"
                }, 

                "layout-id", 
                Buffer (0x04)
                {
                     0x0B, 0x00, 0x00, 0x00                           // ....
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-2"
                }, 

                "AAPL,slot-name", 
                Buffer (0x10)
                {
                    "Internal@0,27,0"
                }, 

                "device_type", 
                Buffer (0x0D)
                {
                    "Audio Device"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0xA0, 0x9C, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,9ca0"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x00                                             // .
                }
            })
        }
    }

    Device (_SB.PCI0.RP01)
    {
        Name (_ADR, 0x001C0000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0C)
            {
                "model", 
                Buffer (0x2A)
                {
                    "Wildcat Point-LP PCI Express Root Port #1"
                }, 

                "device_type", 
                Buffer (0x0B)
                {
                    "PCI Bridge"
                }, 

                "AAPL,slot-name", 
                Buffer (0x10)
                {
                    "Internal@0,28,0"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x90, 0x9C, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,9c90"
                }
            })
        }
    }

    Device (_SB.PCI0.RP04)
    {
        Name (_ADR, 0x001C0003)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0C)
            {
                "model", 
                Buffer (0x2A)
                {
                    "Wildcat Point-LP PCI Express Root Port #4"
                }, 

                "device_type", 
                Buffer (0x0B)
                {
                    "PCI Bridge"
                }, 

                "AAPL,slot-name", 
                Buffer (0x10)
                {
                    "Internal@0,28,3"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x96, 0x9C, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,9c96"
                }
            })
        }
    }

    Device (_SB.PCI0.RP05)
    {
        Name (_ADR, 0x001C0004)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0C)
            {
                "model", 
                Buffer (0x2A)
                {
                    "Wildcat Point-LP PCI Express Root Port #5"
                }, 

                "device_type", 
                Buffer (0x0B)
                {
                    "PCI Bridge"
                }, 

                "AAPL,slot-name", 
                Buffer (0x10)
                {
                    "Internal@0,28,4"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x98, 0x9C, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,9c98"
                }
            })
        }
    }

    Device (_SB.PCI0.EH01)
    {
        Name (_ADR, 0x001D0000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x1A)
            {
                "AAPL,slot-name", 
                Buffer (0x10)
                {
                    "Internal@0,29,0"
                }, 

                "AAPL,current-available", 
                0x0834, 
                "AAPL,current-extra", 
                0x0A8C, 
                "AAPL,current-in-sleep", 
                0x03E8, 
                "AAPL,current-extra-in-sleep", 
                0x0834, 
                "AAPL,max-port-current-in-sleep", 
                0x0A8C, 
                "AAPL,device-internal", 
                0x02, 
                "name", 
                Buffer (0x3B)
                {
                    "Intel 9 Series Chipset Family USB Enhanced Host Controller"
                }, 

                "model", 
                Buffer (0x66)
                {
                    "Intel 9 Series Chipset Family USB 2.0 Host (Intel Broadwell Wildcat Point-LP USB Enhanced Controller)"
                }, 

                "device_type", 
                Buffer (0x0F)
                {
                    "USB Controller"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0xA6, 0x9C, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,9ca6"
                }
            })
        }
    }

    Device (_SB.PCI0.LPCB)
    {
        Name (_ADR, 0x001F0000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0C)
            {
                "model", 
                Buffer (0x20)
                {
                    "Wildcat Point-LP LPC Controller"
                }, 

                "device_type", 
                Buffer (0x0B)
                {
                    "ISA bridge"
                }, 

                "AAPL,slot-name", 
                Buffer (0x10)
                {
                    "Internal@0,31,0"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0xC3, 0x9C, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,9cc3"
                }
            })
        }
    }

    Device (_SB.PCI0.D031)
    {
        Name (_ADR, 0x001F0002)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x06)
            {
                "model", 
                Buffer (0x2D)
                {
                    "Wildcat Point-LP SATA Controller [AHCI Mode]"
                }, 

                "device_type", 
                Buffer (0x10)
                {
                    "SATA controller"
                }, 

                "AAPL,slot-name", 
                Buffer (0x10)
                {
                    "Internal@0,31,2"
                }
            })
        }
    }

    Device (_SB.PCI0.SBUS)
    {
        Name (_ADR, 0x001F0003)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0C)
            {
                "model", 
                Buffer (0x22)
                {
                    "Wildcat Point-LP SMBus Controller"
                }, 

                "device_type", 
                Buffer (0x06)
                {
                    "SMBus"
                }, 

                "AAPL,slot-name", 
                Buffer (0x10)
                {
                    "Internal@0,31,3"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0xA2, 0x9C, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,9ca2"
                }
            })
        }
    }

    Device (_SB.PCI0.RP04.ARPT)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0E)
            {
                "model", 
                Buffer (0x33)
                {
                    "Broadcom BCM4360 802.11ac Wireless Network Adapter"
                }, 

                "device_type", 
                Buffer (0x13)
                {
                    "AirPort Controller"
                }, 

                "AAPL,slot-name", 
                Buffer (0x14)
                {
                    "Internal@0,28,3/0,0"
                }, 

                "name", 
                Buffer (0x10)
                {
                    "AirPort Extreme"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0xA0, 0x43, 0x00, 0x00                           // .C..
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0xE4, 0x14, 0x00, 0x00                           // ....
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci14e4,43a0"
                }
            })
        }
    }

    Device (_SB.PCI0.RP01.SDXC)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0C)
            {
                "name", 
                Buffer (0x20)
                {
                    "SDXC/MMC Card Reader Controller"
                }, 

                "model", 
                Buffer (0x18)
                {
                    "O2 Micro SD Card Reader"
                }, 

                "device_type", 
                Buffer (0x15)
                {
                    "SDXC Host Controller"
                }, 

                "AAPL,slot-name", 
                Buffer (0x14)
                {
                    "Internal@0,28,0/0,0"
                }, 

                "subsystem-vendor-id", 
                Buffer (0x04)
                {
                     0x10, 0x6B, 0x00, 0x00                           // .k..
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci14e4,16bc"
                }
            })
        }
    }
}

