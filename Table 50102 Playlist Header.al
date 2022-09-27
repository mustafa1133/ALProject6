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

    }

}