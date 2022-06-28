page 50106 "Radio Show Entries"
{
    PageType = List;
    SourceTable = "Radio Show Entry";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Entry No."; "Entry No.") { ApplicationArea = Basic; }
                field("Radio Show No."; "Radio Show No.") { ApplicationArea = Basic; }
                field("Type"; "Type") { ApplicationArea = Basic; }
                field("No."; "No.") { ApplicationArea = Basic; }
                field("Data Format"; "Data Format") { ApplicationArea = Basic; }
                field("Description"; "Description") { ApplicationArea = Basic; }
                field("Date"; "Date") { ApplicationArea = Basic; }
                field("Time"; "Time") { ApplicationArea = Basic; }
                field("Duration"; "Duration") { ApplicationArea = Basic; }
                field("Fee Amount"; "Fee Amount") { ApplicationArea = Basic; }
                field("ACSAP ID"; "ACSAP ID") { ApplicationArea = Basic; }
                field("Publisher Code"; "Publisher Code") { ApplicationArea = Basic; }

            }
        }
    }

}