page 50103 "Playlist Document List"
{
    PageType = List;
    SourceTable = "Playlist Header";
    UsageCategory = Lists;
    ApplicationArea = Basic;


    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.") { ApplicationArea = Basic; }
                field("Description"; "Description") { ApplicationArea = Basic; }
                field("Radio Show No."; "Radio Show No.") { ApplicationArea = Basic; }
                field("Start Time"; "Start Time") { ApplicationArea = Basic; }
                field("End Time"; "End Time") { ApplicationArea = Basic; }
                field("Broadcast Date"; "Broadcast Date") { ApplicationArea = Basic; }
                field("Duration"; "Duration") { ApplicationArea = Basic; }
            }
        }
    }
}