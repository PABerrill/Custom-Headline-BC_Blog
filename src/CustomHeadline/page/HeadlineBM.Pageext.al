namespace Berrill.Headline.Functions;
using System.Visualization;

pageextension 50602 HeadlineBM extends "Headline RC Business Manager"
{
layout
    {
        addfirst(content)
        {
            // This will add a new headline so you retain the original headlines
            field(Headline1; hdl1Txt)
            {
                ApplicationArea = All;
                ToolTip = 'Headline 1';
                Caption = 'Headline 1';

                // Using the OnDrillDown trigger to add a hyperlink to the headline
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