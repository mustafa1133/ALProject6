report 50101 "Show by Type"
{

    UsageCategory = ReportsAndAnalysis; // used to determine where report will be listed
    ApplicationArea = Basic;

    WordLayout = 'Shows by Type.docx';
    DefaultLayout = Word;
    dataset
    {
        dataitem("RadioShowType"; "Radio Show Type")
        {
            RequestFilterFields = "code", Description;
            column(UserComment; UserComment) { }
            column(Code_RadioShowType; Code) { IncludeCaption = true; }
            column(Description_RadioShowType; Description) { IncludeCaption = true; }
            dataitem("Radio Show"; "Radio Show")
            {
                DataItemLink = "Radio Show Type" = field(Code);
                DataItemTableView = sorting("Radio Show Type");
                PrintOnlyIfDetail = true; // cause radio show record to not be sent for output if child record doesn't exist
                column(No_RadioShow; "No.") { IncludeCaption = true; }
                column(Name_RadioShow; Name) { IncludeCaption = true; }
                column(RunTime_RadioShow; "Run Time") { IncludeCaption = true; }

                dataitem("Playlist Header"; "Playlist Header")
                {
                    DataItemLink = "Radio Show No." = field("No.");
                    DataItemTableView = sorting("No.");
                    column(PostingDate_PlaylistHeader;
                    "Broadcast Date")
                    {
                        IncludeCaption = true;
                    }
                    column(StartTime_PlaylistHeader; "Start Time") { IncludeCaption = true; }


                }
            }

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
                    field(UserComment; UserComment)
                    {
                        ApplicationArea = Basic;
                        Caption = 'User Comment';
                    }
                }
            }
        }
    }
    labels
    {
        ReportTitle = 'Show Schedule by Type';
    }

    var
        UserComment: Text; // global variable for user to be able ot enter comment in the request page
}