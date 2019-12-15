DefinitionBlock ("", "SSDT", 2, "APPLE", "_EH02", 0x00000000)
{
    Method (_SB.PCI0.EH02._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x0C)
        {
            "subsystem-id", 
            Buffer (0x04)
            {
                 0x70, 0x72, 0x00, 0x00                           // pr..
            }, 

            "subsystem-vendor-id", 
            Buffer (0x04)
            {
                 0x86, 0x80, 0x00, 0x00                           // ....
            }, 

            "AAPL,current-available", 
            Buffer (0x04)
            {
                 0x34, 0x08, 0x00, 0x00                           // 4...
            }, 

            "AAPL,current-extra", 
            Buffer (0x04)
            {
                 0x98, 0x08, 0x00, 0x00                           // ....
            }, 

            "AAPL,current-extra-in-sleep", 
            Buffer (0x04)
            {
                 0x40, 0x06, 0x00, 0x00                           // @...
            }, 

            "AAPL,max-port-current-in-sleep", 
            Buffer (0x04)
            {
                 0x34, 0x08, 0x00, 0x00                           // 4...
            }
        })
    }
}

