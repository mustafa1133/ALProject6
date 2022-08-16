report 50133 "Item Number"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic;

    WordLayout = 'Item Number.docx';
    DefaultLayout = Word;

    dataset
    {
        dataitem(Sales_Invoice_Line; "Sales Invoice Line")
        {
            RequestFilterFields = "type", "No.";
            DataItemTableView = sorting("No.");
            PrintOnlyIfDetail = true;
            column(Item_No; "No.") { IncludeCaption = true; }
            column(Document_No_; "Document No.") { IncludeCaption = true; }

        }
    }
}