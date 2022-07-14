page 50101 "Radio Show Card"
{
    PageType = Card;
    SourceTable = "Radio Show";

    layout
    {
        area(Content)
        {
            group(General)
            {

                field("No."; "No.")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                }
                field("Radio Show Type"; "Radio Show Type")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                }
                field("Name"; "Name")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                }
                field("Run Time"; "Run Time") { ApplicationArea = Basic; }
            }
            group(Requirements)
            {
                field("Host Code"; "Host Code") { ApplicationArea = Basic; }
                field("Host Name"; "Host Name") { ApplicationArea = Basic; }

            }
            group(Statistics)
            {
                field("Average Listeners"; "Average Listeners") { ApplicationArea = Basic; }
                field("Audience Share"; "Audience Share") { ApplicationArea = Basic; }
                field("Advertising Revenue"; "Advertising Revenue") { ApplicationArea = Basic; }
                field("Royalty Cost"; "Royalty Cost") { ApplicationArea = Basic; }
            }
        }
    }
}