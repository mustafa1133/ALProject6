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
                CountryRegion.Get("Country/Region Code");
                CountryName := CountryRegion.Name;
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
                    field(Female; Female) { ApplicationArea; Caption = 'Female'; }

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