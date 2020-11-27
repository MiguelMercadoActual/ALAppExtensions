pageextension 31010 "Item Registers CZL" extends "Item Registers"
{
    actions
    {

        addlast(reporting)
        {
            action(ItemRegisterQuantityCZL)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Item Register - Quantity';
                Image = GLRegisters;
                Promoted = true;
                PromotedCategory = "Report";
                ToolTip = 'Open the report for item register quantity.';


                trigger OnAction()
                var
                    ItemRegister: Record "Item Register";
                begin
                    ItemRegister.Copy(Rec);
                    ItemRegister.SetRecFilter();
                    Report.Run(Report::"Item Register - Quantity", true, false, ItemRegister);
                end;
            }
            action(ItemMovementDocumentCZL)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Item Movement Document';
                Image = Report;
                Promoted = true;
                PromotedCategory = "Report";
                ToolTip = 'Open the report for item movement documentation.';


                trigger OnAction()
                var
                    ItemRegister: Record "Item Register";
                begin
                    ItemRegister.Copy(Rec);
                    ItemRegister.SetRecFilter();
                    Report.Run(Report::"Posted Inventory Document CZL", true, false, ItemRegister);
                end;
            }
        }
    }
}