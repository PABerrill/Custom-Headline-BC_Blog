namespace Berrill.Headline.Functions;
using System.Visualization;

pageextension 50603 HeadlineOP extends "Headline RC Order Processor"
{
layout
    {
        addfirst(content)
        {
            field(Headline1; hdl1Txt)
            {
                ApplicationArea = All;
                ToolTip = 'Headline 1';
                Caption = 'Headline 1';
                trigger OnDrillDown()
                var
                    DrillDownURLTxt: Label 'https://www.berrill.net', Locked = true;
                begin
                    Hyperlink(DrillDownURLTxt)
                end;
            }
        }
    }
    var
        hdl1Txt: Label '<qualifier>Welcome to</qualifier><payload><emphasize>Phil Berrills</emphasize> Business Central System</payload>';
}