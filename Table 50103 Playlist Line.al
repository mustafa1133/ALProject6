table 50103 "Playlist Line"
{

    fields
    {
        field(1; "Document No."; Code[20]) { }
        field(2; "Line No."; Integer) { }
        field(10; "Type"; Option) { OptionMembers = ,Resource,Show,Item; }
        field(20; "No."; Code[20])
        {

            trigger OnValidate()
            var
                Res: Record Resource;
                Item: Record item;
                RadioShow: Record "Radio Show";
            begin
                case Type of
                    Type::Resource:
                        begin
                            Res.Get("No.");
                            Description := Res.Name;
                        end;
                    Type::Item:
                        begin
                            Item.Get("No.");
                            Description := Item.Description;
                            "Data Format" := Item."Data Format";
                            Duration := Item.Duration;
                        end;

                    Type::Show:
                        begin
                            RadioShow.Get("No.");
                            Description := RadioShow.Name;
                        end;


                end;
            end;
        }
        field(30; "Data Format"; Option) { OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement; }
        field(40; "Publisher"; Code[10]) { }
        field(50; "Description"; Text[50]) { }
        field(60; "Duration"; Duration)
        {
            Editable = false;
        }
        field(70; "Start Time"; Time)
        {
            trigger OnValidate();
            begin
                if Duration <> 0 then
                    "End Time" := "Start Time" + Duration;
            end;
        }
        field(80; "End Time"; Time)
        {
            trigger OnValidate();
            begin
                if "Start Time" <> 0T then // 0T uses Time 
                    Duration := "End Time" - "Start Time";
            end;
        }

    }

    keys
    {
        key(PK; "Document No.", "Line No.") // Document No. will not always be unique it needs a Line No. to maintain uniquness
        {
            Clustered = true;
        }
    }
}