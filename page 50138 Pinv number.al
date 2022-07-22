page 50138 "Pinv number"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "Pinv Number";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.") { }
            }
        }
    }
    trigger OnOpenPage()
    var
        HasItemNo: Query "Pinv number";
    begin
        HasItemNo.Open;
        while HasItemNo.Read do begin
            rec.Init;
            rec."No." := HasItemNo.No_;

            rec.Insert();
            //currpage update
        end;

    end;
}