page 50108 "Publishers"
{
    PageType = List;
    SourceTable = "Publisher";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Code"; "Code") { ApplicationArea = Basic; }
                field(Description; Description) { ApplicationArea = Basic; }
            }
        }
    }

}