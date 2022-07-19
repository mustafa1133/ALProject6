page 50138 "Pinv number"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "Sales Invoice Line";
    SourceTableTemporary = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Document No."; "Document No.") { }
                field("Line No."; "Line No.") { }
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
            "Document No." := HasItemNo.Document_No_;
            "Line No." := HasItemNo.Line_No_;

            Insert;

        end;

    end;
}