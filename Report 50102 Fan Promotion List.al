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
    var

        CountryRegion: Record "Country/Region";
        CountryName: Text;
}