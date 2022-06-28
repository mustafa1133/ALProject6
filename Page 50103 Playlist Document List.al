page 50103 "Playlist Document List"
{
    PageType = List;
    SourceTable = "Playlist Line";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Document No."; "Document No.") { ApplicationArea = Basic; }
                field("Line No."; "Line No.") { ApplicationArea = Basic; }
                field("Type"; "Type") { ApplicationArea = Basic; }
                field("No."; "No.") { ApplicationArea = Basic; }
                field("Data Format"; "Data Format") { ApplicationArea = Basic; }
                field("Publisher"; "Publisher") { ApplicationArea = Basic; }
                field("Description"; "Description") { ApplicationArea = Basic; }
                field("Duration"; "Duration") { ApplicationArea = Basic; }
                field("Start Time"; "Start Time") { ApplicationArea = Basic; }
                field("End Time"; "End Time") { ApplicationArea = Basic; }
            }
        }
    }
}