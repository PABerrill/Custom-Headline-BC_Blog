namespace Berrill.Headline.Functions;

using System.Environment.Configuration;

codeunit 50600 "Banner Subscriber"
{
    EventSubscriberInstance = StaticAutomatic;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Checklist Banner", 'OnBeforeUpdateBannerLabels', '', false, false)]
    local procedure MyCustomOnBeforeUpdateBannerLabels(var IsHandled: Boolean; IsEvaluationCompany: Boolean; var TitleTxt: Text; var TitleCollapsedTxt: Text; var HeaderTxt: Text; var HeaderCollapsedTxt: Text; var DescriptionTxt: Text; IsSetupStarted: Boolean; AreAllItemsSkippedOrCompleted: Boolean)

    // This updates the banner text 
    begin
        TitleTxt := 'Phils BC Blog Business Central System';
        TitleCollapsedTxt := 'Start now with ';
        HeaderTxt := 'Welcome to Phils BC Blog Business Central System';
        HeaderCollapsedTxt := 'Phils BC Blog';
        if IsSetupStarted = true then
            DescriptionTxt := 'Business Central has been designed to be simple to setup and quick to get started. Follow our guided checklist to set up'
        else
            DescriptionTxt := 'Microsoft Dynamics 365 Business Central, a revolutionary finance solution tailored specifically for BC Blog Click to get started...';
        IsHandled := true;
    end;
}

