codeunit 50141 "Date Formula Mgt"
{
    procedure CalculateNewDate(DateFormulaToTest: DateFormula; ReferenceForDateCalc: Date): Date
    begin
        exit(CalcDate(DateFormulaToTest, ReferenceForDateCalc));// return the Date
    end;
}