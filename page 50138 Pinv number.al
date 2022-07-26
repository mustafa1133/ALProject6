page 50138 "Pinv number"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "Pinv Number2";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Document Number"; "Document Number") { }
            }
        }
    }
    trigger OnOpenPage()
    var
        HasItemNo: Query "Pinv number";
    begin
        Rec.DeleteAll(); // deletes all records in the table
        HasItemNo.Open;
        while HasItemNo.Read do begin
            rec.Init;
            rec."Document Number" := HasItemNo.No_;
            rec.Insert();
            rec.Next();
            // CurrPage.Update();// refreshes the page display
        end;

    end;
}