page 50100 "My Rewards"
{
    PageType = List;
    SourceTable = Reward;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Entry No."; "Entry No.")
                {

                }
                field(Code; Code)
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    ApplicationArea = All;

                }
                field("Processing Date"; "Processing Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is mandatory field';
                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Test Message")
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    Message('123');
                end;
            }
        }
    }
}