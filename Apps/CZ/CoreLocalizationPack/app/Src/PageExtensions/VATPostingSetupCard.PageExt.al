pageextension 11757 "VAT Posting Setup Card CZL" extends "VAT Posting Setup Card"
{
    layout
    {
        addafter(Usage)
        {
            group(VATCtrlReportCZL)
            {
                Caption = 'VAT Control Report';
                field("VAT Rate CZL"; Rec."VAT Rate CZL")
                {
                    ApplicationArea = VAT;
                    ToolTip = 'Specifies typ of VAT rate - base, reduced or reduced 2.';
                }
                field("Ratio Coefficient CZL"; Rec."Ratio Coefficient CZL")
                {
                    ApplicationArea = VAT;
                    ToolTip = 'Specifies ratio coefficient.';
                }
                field("Corrections Bad Receivable CZL"; Rec."Corrections Bad Receivable CZL")
                {
                    ApplicationArea = VAT;
                    ToolTip = 'Specifies the designation of the receivable for the purposes of VAT Control Report.';
                }
                field("Supplies Mode Code CZL"; Rec."Supplies Mode Code CZL")
                {
                    ApplicationArea = VAT;
                    ToolTip = 'Specifies supplies mode code from VAT layer. The setting is used in the VAT Control Report.';
                }
            }
        }
        addafter("Sales VAT Unreal. Account")
        {
            field("Sales VAT Curr. Exch. Acc CZL"; Rec."Sales VAT Curr. Exch. Acc CZL")
            {
                ApplicationArea = VAT;
                ToolTip = 'Specifies the G/L account for clearing sales VAT due to the different exchange rate for VAT';
            }
        }
        addafter("Purch. VAT Unreal. Account")
        {
            field("Purch. VAT Curr. Exch. Acc CZL"; Rec."Purch. VAT Curr. Exch. Acc CZL")
            {
                ApplicationArea = VAT;
                ToolTip = 'Specifies the G/L account for clearing purchase VAT due to the different exchange rate for VAT';
            }
        }
        addlast(General)
        {
            field("Reverse Charge Check CZL"; Rec."Reverse Charge Check CZL")
            {
                ApplicationArea = VAT;
                ToolTip = 'Specifies if the reverse charge will be checked';
            }
        }
        addlast(Sales)
        {
            field("VIES Sales CZL"; Rec."VIES Sales CZL")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the option to include this posting setup in sales VIES declarations.';
            }
        }
        addlast(Purchases)
        {
            field("VIES Purchase CZL"; Rec."VIES Purchase CZL")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the option to include this posting setup in the purchase VIES declarations.';
            }
        }
    }
}
