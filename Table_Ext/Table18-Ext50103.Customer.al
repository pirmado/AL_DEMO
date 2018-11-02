tableextension 50100 Customer_Ext extends Customer
{
    fields
    {
        field(50100; "Additional Description"; text[250])
        {
            Caption = 'Additional Description';

            trigger OnValidate();
            begin
                Message("Additional Description");
            end;

        }
    }
}