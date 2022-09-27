page 50109 "Playlist Subpage"
{
    PageType = ListPart;
    SourceTable = "Playlist Line";
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Type; Type) { ApplicationArea = All; }
                field("No."; "No.") { ApplicationArea = All; }
                field("Data Format"; "Data Format") { ApplicationArea = All; }
                field("Description"; Description) { ApplicationArea = All; }
                field(Duration; Duration) { ApplicationArea = ALL; }
                field("Start Time"; "Start Time") { ApplicationArea = All; }

                field("End Time"; "End Time") { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}