dotnet
{
    assembly("WaldoNavPad")
    {
        type("WaldoNavPad.WaldoNavPad"; "WaldoNavPad")
        {
        }
    }

    assembly("mscorlib")
    {
        Version = '4.0.0.0';
        Culture = 'neutral';
        PublicKeyToken = 'b77a5c561934e089';

        type("System.String"; "String")
        {
        }
    }
}
