page 50000 ImrCustomerCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
        
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Name2; "Name 2")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(OpenWaldoNavPad)
            {
                ApplicationArea = All;
                Caption = 'Open Waldo!?';

                /*
                Notes on using custom DotNet DLLs:
                -Put the DLL in the ".\.netpackages\" folder of the app
                -Put the DLL in the "C:\Program Files\Microsoft Dynamics 365 Business Central\200\Service\Add-ins\" folder on the server
                -Restart the BC server instace (for BC to recognize the DLL)
                */
                trigger OnAction()
                begin
                    DotNetString := 'Some Text...';

                    //Obviously waldo pad will not run in the Browser!
                    Waldo := Waldo.WaldoNavPad();
                    Waldo.Text(DotNetString);
                    Waldo.ShowDialog();
                end;
            }
        }

    }

    var
        Waldo: DotNet WaldoNavPad;
        DotNetString: DotNet String;
}
