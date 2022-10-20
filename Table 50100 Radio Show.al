table 50100 "Radio Show"
{

    fields
    {
        field(1; "No."; Code[20])
        {

            trigger OnValidate()
            begin

            end;

            trigger OnLookup()
            begin

            end;

        }
        field(10; "Radio Show Type"; Code[10]) { TableRelation = "Radio Show Type"; }
        field(20; "Name"; Text[50]) { }
        field(40; "Run Time"; Duration) { }
        field(50; "Host Code"; Code[20]) { }
        field(60; "Host Name"; Text[50]) { }
        field(100; "Average Listeners"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Listenership Entry"."Listener Count"
            where("Radio Show No." = field("No."), Date = field("Date Filter")));// Flow field to find average listener count from Listenership Entry table


        }
        field(110; "Audience Share"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Listenership Entry"."Audience Share"
            where("Radio Show No." = field("No."), Date = field("Date Filter")));
        }
        field(120; "Advertising Revenue"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField; // flow field
            CalcFormula = sum("Radio Show Entry"."Fee Amount" // summing revenue and putting a filter set to Advertisement
            where(
                "Radio Show No." = field("No."),
                "Data Format" = filter(Advertisement)
                ));
        }
        field(130; "Royalty Cost"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Radio Show Entry"."Fee Amount"
            where(
                "Radio Show No." = field("No."),
                "Date" = field("Date Filter"),
                "Data Format" = filter(Vinly | CD | MP3)
            ));

        }
        field(1000; "Frequency"; Option) { OptionMembers = Hourly,Daily,Weekly,Monthly; }
        field(1010; "PSA Planned Quantity"; Integer) { }
        field(1011; "PSA Count"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Playlist Line" where("No." = field("No."), Type = const(Item), "Data Format" = const(PSA)));
            Editable = false;
        }
        field(1012; "PSAs Required"; Boolean) { }
        field(1020; "Ads Planned Quantity"; Integer) { }
        field(1021; "Ads Count"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Playlist Line" where("No." = field("No."), Type = const(Item), "Data Format" = const(Advertisement)));
            Editable = false;
        }
        field(1022; "Ads Required"; Boolean) { }
        field(1030; "News Required"; Boolean) { InitValue = true; } // setting intitial value to true
        field(1040; "News Duration"; Duration) { }
        field(1050; "Sports Required"; Boolean) { InitValue = true; }
        field(1060; "Sports Duration"; Duration) { }
        field(1070; "Weather Required"; Boolean) { InitValue = true; }
        field(1080; "Weather Duration"; Duration) { }
        field(1090; "Date Filter"; Date) { FieldClass = FlowFilter; }

    }
}