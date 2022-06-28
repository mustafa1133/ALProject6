page 50107 "Listenership Entries"
{
    PageType = List;
    SourceTable = "Listenership Entry";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Entry No."; "Entry No.") { ApplicationArea = Basic; }
                field("Rating Source Entry No."; "Ratings Source Entry No.") { ApplicationArea = Basic; }
                field("Date"; "Date") { ApplicationArea = Basic; }
                field("Start Time"; "Start Time") { ApplicationArea = Basic; }
                field("End Time"; "End Time") { ApplicationArea = Basic; }
                field("Radio Show No."; "Radio Show No.") { ApplicationArea = Basic; }
                field("Listener Count"; "Listener Count") { ApplicationArea = Basic; }
                field("Audience Share"; "Audience Share") { ApplicationArea = Basic; }
                field("Age Demographic"; "Age Demographic") { ApplicationArea = Basic; }


            }
        }
    }
}