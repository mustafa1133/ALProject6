report 50100 "Radio Shows"
{
    UsageCategory = ReportsAndAnalysis; // used to determine where report will be listed
    ApplicationArea = Basic;// Access Level for the user
    WordLayout = 'RadioShows.docx';
    DefaultLayout = Word;

    dataset
    {
        dataitem(DataItemName; "Radio Show")
        {
            column("No"; "No.") { }
            column("RadioShowType"; "Radio Show Type") { }
            column("Name"; "Name") { }
            column("RunTime"; "Run Time") { }
            column("HostCode"; "Host Code") { }
            column("HostName"; "Host Name") { }
            column("AverageListeners"; "Average Listeners") { }
            column("AudienceShare"; "Audience Share") { }
            column("AdvertisingRevenue"; "Advertising Revenue") { }
            column("RoyaltyCost"; "Royalty Cost") { }

        }
    }
}