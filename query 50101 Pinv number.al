query 50101 "Pinv number"
{
    QueryType = Normal;

    elements
    {
        dataitem(Customer_Ledger; "Cust. Ledger Entry")
        {
            column(Entry_No_; "Entry No.") { }
            column(Document_No_; "Document No.") { }
            column(Document_Type; "Document Type") { }

            dataitem(Sales_Invoice_Header; "Sales Invoice Header")
            {
                DataItemLink = "No." = "Customer_Ledger"."Document No.";

                column(No_; "No.") { }

                dataitem(Sales_Invoice_Line; "Sales Invoice Line")
                {
                    ;
                    DataItemLink = "Document No." = "Sales_Invoice_Header"."No.";
                    DataItemTableFilter = "No." = filter('2000-S');

                    column(Line_No_; "Line No.") { }
                }
            }
        }
    }
}