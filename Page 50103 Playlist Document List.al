page 50103 "Playlist Document List"
{
    PageType = Document;
    SourceTable = "Playlist Header";
    UsageCategory = Documents;
    ApplicationArea = Basic;


    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.") { ApplicationArea = Basic; }
                field("Description"; "Description") { ApplicationArea = Basic; }
                field("Radio Show No."; "Radio Show No.")
                {
                    ApplicationArea = Basic;
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Start Time"; "Start Time") { ApplicationArea = Basic; }
                field("End Time"; "End Time") { ApplicationArea = Basic; }
                field("Broadcast Date"; "Broadcast Date") { ApplicationArea = Basic; }
                field("Duration"; "Duration") { ApplicationArea = Basic; }
            }
            part(Lines; "Playlist Subpage") //connecting 2 tables in a single document header and lines
            {
                SubPageLink = "Document No." = field("No.");
                SubPageView = sorting("Document No.", "Line No.");
            }
        }
        area(FactBoxes)
        {
            part(factbox; "Playlist Factbox")
            {
                SubPageLink = "No." = field("No.");
            }
        }
    }
}