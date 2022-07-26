query 50101 "Pinv number"
{
    QueryType = Normal;

    elements
    {
        dataitem(Sales_Invoice_Header; "Sales Invoice Header")
        {

            column(No_; "No.") { }

            dataitem(Sales_Invoice_Line; "Sales Invoice Line")
            {
                ;
                DataItemLink = "Document No." = "Sales_Invoice_Header"."No.";
                DataItemTableFilter = "Drop Shipment" = const(false);

                column(Line_No_; "Line No.") { }
            }
        }
    }
}