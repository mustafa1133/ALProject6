page 50140 "Date Formula"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Date Formula";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Primary Key"; "Primary Key") { ApplicationArea = All; }
                field("Reference For Date Calculation"; "Reference For Date Calculation") { ApplicationArea = All; }
                field("Date Formula to Test"; "Date Formula to Test") { ApplicationArea = All; }
                field("Date Result"; "Date Result") { ApplicationArea = All; }

            }
        }
    }

}