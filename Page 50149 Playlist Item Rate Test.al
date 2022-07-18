page 50149 "Playlist Item Rate Test"
{
    PageType = list;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Playlist Item Rate Test";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Item No."; "Item No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'Item Numero';
                    ToolTip = 'This is a test of using Tooltips';


                }
                field("Stat Time"; "Stat Time")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Rate Amount"; "Rate Amount") { ApplicationArea = All; }
                field("Publisher Code"; "Publisher Code") { ApplicationArea = All; }
            }
        }
    }

}