report 50102 "Fan Promotion List"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic;
    DefaultLayout = Word;
    WordLayout = './FanPromotionList.docx';

    dataset
    {
        dataitem(DataItemName; "Radio Show Fan")
        {
            column(Name; Name) { }
            column(Address; Address) { }
            column(Address_2; "Address 2") { }
            column(City; City) { }
            column(Post_Code; "Post Code") { }
            column(CountryName; CountryName) { }
            column(Country_Region_Code; "Country/Region Code") { }

            trigger OnAfterGetRecord()

            begin
                //Look up the Country Name using the Country/Region Code
                CountryRegion.Get("Country/Region Code");
                CountryName := CountryRegion.Name;

                //Calculate the fan's age < in round method rounds down
                FanAge := Round(((WORKDATE - "Birth Date") DIV 365), 1.0, '<');

                //select Fans to receive promotional material
                SelectThisFan := FALSE;

                if Age12orLess and (FanAge <= 12) then
                    SelectThisFan := true;
                if Age13to18 and (FanAge > 12) and (FanAge < 19) then
                    SelectThisFan := true;
                if Age19to34 and (FanAge > 18) and (FanAge < 35) then
                    SelectThisFan := true;
                if Age35to50 and (FanAge > 34) and (FanAge < 51) then
                    SelectThisFan := true;
                if AgeOver50 and (FanAge > 50) then
                    SelectThisFan := true;
                if Male and (Gender = Gender::Male) then
                    SelectThisFan := true;
                if Female and (Gender = Gender::Female) then
                    SelectThisFan := true;

                //if this fan not selected, skip this Fan record on report
                if SelectThisFan <> true then
                    CurrReport.Skip();
            end;
        }
    }


    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(Age12orLess; Age12orLess) { ApplicationArea = Basic; Caption = 'Age 12 or less'; }
                    field(Age13to18; Age13to18) { ApplicationArea = Basic; Caption = 'Age 13 to 18'; }
                    field(Age19to34; Age19to34) { ApplicationArea = Basic; Caption = 'Age 19 to 34'; }
                    field(Age35to50; Age35to50) { ApplicationArea = Basic; Caption = 'Age 35 to 50'; }
                    field(AgeOver50; AgeOver50) { ApplicationArea = Basic; Caption = 'Age over 50'; }
                    field(Male; Male) { ApplicationArea = Basic; Caption = 'Male'; }
                    field(Female; Female) { ApplicationArea = Basic; Caption = 'Female'; }

                }
            }
        }
    }

    var

        CountryRegion: Record "Country/Region";
        CountryName: Text;
        Age12orLess: Boolean;
        Age13to18: Boolean;
        Age19to34: Boolean;
        Age35to50: Boolean;
        AgeOver50: Boolean;
        Male: Boolean;
        Female: Boolean;
        SelectThisFan: Boolean;
        FanAge: Integer;

}