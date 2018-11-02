pageextension 50101 "Customer List Ext AC" extends "Customer List"
{
    layout
    {
        modify(Contact)
        {
            Caption = 'Contact Name';
        }
        addbefore(Contact)
        {
            field("Name 2 Test"; "Name 2")
            {
                ApplicationArea = All;
            }
        }
        addafter(Contact)
        {
            field("Additional Description"; "Additional Description")
            {
                ApplicationArea = All;
            }

        }
    }

    actions
    {
        addbefore(CustomerLedgerEntries)
        {
            action("Report Test Button")
            {
                Image = "NewDocument";
                trigger OnAction();
                begin
                    report.Run(Report::"Test Customer Report 2");
                end;
            }
        }
        addlast(Creation)
        {
            group(MyActionGroup)
            {
                action("Test Button")
                {
                    trigger OnAction();
                    var
                        CLE: Record "Cust. Ledger Entry";
                    begin
                        CLE.RESET;
                        CLE.SetRange("Customer No.", rec."No.");
                        if CLE.FindSet then begin
                            repeat
                                Message(StrSubstNo('%1 %2', CLE."Document No.", CLE."Document Date"));
                            until CLE.Next = 0;
                        end;
                    end;
                }
            }
        }
    }
}