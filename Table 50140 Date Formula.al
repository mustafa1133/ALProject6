table 50140 "Date Formula"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10]) { }
        field(10; "Reference For Date Calculation"; Date)
        {
            trigger OnValidate();
            begin
                CalculateNewDate();
            end;


        }
        field(20; "Date Formula to Test"; DateFormula)
        {
            trigger OnValidate();
            begin
                CalculateNewDate();
            end;


        }
        field(30; "Date Result"; Date) { }

    }

    local procedure CalculateNewDate()
    begin
        "Date Result" := CalcDate("Date Formula to Test", "Reference For Date Calculation");

    end;
}