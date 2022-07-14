page 50111 "Radio Show Fans"
{
    PageType = List;
    UsageCategory = Administration;
    SourceTable = "Radio Show Fan";

    layout
    {
        area(Content)
        {
            group(Group)
            {
                field("No."; "No.") { ApplicationArea = Basic; }
                field("Radio Show No."; "Radio Show No.") { ApplicationArea = Basic; }
                field("Name"; "Name") { ApplicationArea = Basic; }
                field("E-mail"; "E-mail") { ApplicationArea = Basic; }
                field("Last Contacted"; "Last Contacted") { ApplicationArea = Basic; }

            }
        }
    }

}