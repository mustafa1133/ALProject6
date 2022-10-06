table 50102 "Playlist Header"
{


    fields
    {
        field(1; "No."; Code[20]) { }
        field(10; "Radio Show No."; Code[20])
        {
            trigger OnValidate()
            var
                RadioShow: Record "Radio Show";
            begin
                if RadioShow.Get("Radio Show No.") then begin
                    "PSAs Required" := RadioShow."PSAs Required";
                    "Ads Required" := RadioShow."Ads Required";
                    "News Required" := RadioShow."News Required";
                    "Sports Required" := RadioShow."Sports Required";
                    "Weather Required" := RadioShow."Sports Required";
                end else begin
                    "PSAs Required" := false;
                    "Ads Required" := false;
                    "News Required" := false;
                    "Sports Required" := false;
                    "Weather Required" := false;
                end;
                ;
            end;

        }
        field(20; "Description"; Text[50]) { }
        field(30; "Broadcast Date"; Date) { }
        field(40; "Duration"; Duration) { }
        field(50; "Start Time"; Time)
        {
            trigger Onvalidate()
            var
                RadioShow: Record "Radio Show";
            begin
                RadioShow.Get("Radio Show No."); // based on the radio show number we get the run time of the show of this record
                "End Time" := "Start Time" + RadioShow."Run Time";

            end;
        }
        field(60; "End Time"; Time) { }
        field(70; "PSAs Required"; Boolean) { }
        field(80; "Ads Required"; Boolean) { }
        field(90; "News Required"; Boolean) { }
        field(100; "Sports Required"; Boolean) { }
        field(110; "Weather Required"; Boolean) { }

        field(120; "Ads Count"; Integer) { }
        field(130; "PSA Count"; Integer) { }

    }

    procedure NWSRequired(Category: Option ,News,Weather,Sports): Integer
    var
        PlaylistLine: Record "Playlist Line";
        RadioShow: Record "Radio Show";
        RadioShowType: Record "Radio show Type";
        Cnt: Integer;
    begin
        PlaylistLine.SetRange("Document No.", "No."); // filter header to line
        PlaylistLine.SetRange(Type, PlaylistLine.Type::Show);//filter for type of 'show' in playlist line table
        if PlaylistLine.FindSet then // if we find a line that satisfys those filters then
            repeat
                RadioShow.Get(PlaylistLine."No."); // get a RadioShow with the playlistlie No.
                RadioShowType.Get(RadioShow."Radio Show Type"); // get a RadioShowType with the same Radioshow 
                case Category of
                    Category::News:
                        if RadioShowType.Code = 'News' then // if category is news inc by 1
                            Cnt += 1;
                    Category::Weather:
                        if RadioShowType.Code = 'Weather' then // if category is weather inc by 1
                            Cnt += 1;
                    Category::Sports:
                        if RadioShowtype.Code = 'Sports' then // if category is sports inc by 1
                            Cnt += 1;

                end;
            until PlaylistLine.Next = 0; // until no more records match our filters

    end;
}