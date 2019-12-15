DefinitionBlock ("", "SSDT", 2, "APPLE", "ps2k", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)

    Scope (\_SB.PCI0.LPCB.PS2K)
    {
        Name (RMCF, Package (0x02)
        {
            "Keyboard", 
            Package (0x02)
            {
                "Custom ADB Map", 
                Package (0x03)
                {
                    Package (0x00){}, 
                    "e005=6b", 
                    "e006=71"
                }
            }
        })
    }
}

