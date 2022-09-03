page 50111 "Radio Show Fans"
{
    PageType = List;
    UsageCategory = Administration;
    SourceTable = "Radio Show Fan";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.") { ApplicationArea = Basic; }
                field("Name"; "Name") { ApplicationArea = Basic; }
                field("Birth Date"; "Birth Date") { ApplicationArea = Basic; }
                field(Gender; Gender) { ApplicationArea = Basic; }
                field("E-mail"; "E-mail") { ApplicationArea = Basic; }
                field("Last Contacted"; "Last Contacted") { ApplicationArea = Basic; }
                field("Address"; "Address") { ApplicationArea = Basic; }
                field("Post Code"; "Post Code") { ApplicationArea = Basic; }

                field("City"; "City") { ApplicationArea = Basic; }
                field("Country Code/Region"; "Country/Region Code") { ApplicationArea = Basic; }

            }
        }
    }

}