page 50141 "Lot Avail. by Bin"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "Warehouse Entry";
    SourceTableTemporary = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Item No."; "Item No." { ApplicationArea = Basic; }
                field("Location Code"; "Location Code" { ApplicationArea = Basic; }
                field("Bin Code"; "Bin Code" { ApplicationArea = Basic; }
                field("Serial No."; "Serial No." { ApplicationArea = Basic; }
                field("Quantity"; "Quantity" { ApplicationArea = Basic; }

            }
        }
    }
    trigger OnOpenPage()
    var
        LotAvail: Query "Lot Avail. by Bin";
    begin
        LotAvail.Open;
        while LotAvail.Read do begin
            Init;
            "Item No." := LotAvail.Item_No;
            "Location Code" := LotAvail.Location_Code;
            "Bin Code" := LotAvail.Bin_Code;
            "Quantity" := LotAvail.Quantity;
            Insert;

        end;

    end;
}