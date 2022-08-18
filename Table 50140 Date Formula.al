table 50140 "Date Formula"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10]) { }
        field(10; "Reference For Date Calculation"; Date)
        {
            trigger OnValidate();

            //var
            //DateFormulaTest: Codeunit "Date Formula Mgt";
            begin
                CalculateNewDate();
                //"Date Result" := DateFormulaTest.CalculateNewDate("Date Formula to Test", "Reference For Date Calculation");

            end;


        }
        field(20; "Date Formula to Test"; DateFormula)
        {
            trigger OnValidate();
            //var
            //DateFormulaTest: Codeunit "Date Formula Mgt";

            begin
                CalculateNewDate();
                //"Date Result" := DateFormulaTest.CalculateNewDate("Date Formula to Test", "Reference For Date Calculation");
            end;


        }
        field(30; "Date Result"; Date)
        {

        }

    }


    local procedure CalculateNewDate()
    var
        DateFormMgt: Codeunit "Date Formula Mgt";
    begin
        "Date Result" := DateFormMgt.CalculateNewDate("Date Formula to Test", "Reference For Date Calculation");

    end;
}