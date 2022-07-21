page 50138 "Pinv number"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "Sales Invoice Header";
    SourceTableTemporary = true;

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
            Init;
            "No." := HasItemNo.No_;

            Insert;

        end;

    end;
}