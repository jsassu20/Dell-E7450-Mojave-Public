DefinitionBlock ("", "SSDT", 2, "APPLE", "BRT6", 0x00000000)
{
    External (_SB_.PCI0.IGPU, DeviceObj)
    External (_SB_.PCI0.IGPU.LCD_, DeviceObj)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    External (LCD_, UnknownObj)

    Scope (_SB.PCI0.IGPU)
    {
        Method (BRT6, 2, NotSerialized)
        {
            If ((Arg0 == One))
            {
                Notify (LCD, 0x86) // Device-Specific
                Notify (^^LPCB.PS2K, 0x0366)
            }

            If ((Arg0 & 0x02))
            {
                Notify (LCD, 0x87) // Device-Specific
                Notify (^^LPCB.PS2K, 0x0365)
            }
        }
    }
}

