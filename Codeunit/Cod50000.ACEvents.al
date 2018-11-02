codeunit 50100 "AC Events"
{
    trigger OnRun();
    begin
    end;

    [EventSubscriber(ObjectType::table, 18, 'OnAfterInsertEvent', '', false, false)]
    local procedure TestSubscriberCustomerInsert(Rec: Record Customer)
    begin
        Error(Rec."No.");
    end;

    var
        myInt: Integer;
}