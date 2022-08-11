report 50133 "Item Number"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic;

    WordLayout = 'Item Number.docx';
    DefaultLayout = Word;

    dataset
    {
        dataitem(Sales_Invoice_Header; "Sales Invoice Header")
        {
            column(No_; "No.") { }

            dataitem(Sales_Invoice_Line; "Sales Invoice Line")
            {
                RequestFilterFields = "No.";
                DataItemLink = "Document No." = field("No.");
                PrintOnlyIfDetail = true;
                column(Item_No; "No.") { }

            }
        }


    }
}