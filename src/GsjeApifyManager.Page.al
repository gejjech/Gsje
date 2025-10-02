page 50000 "Gsje Apify Manager"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;
    Caption = 'Gsje Apify Manager';
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'Apify Run Management';
                
                field(RunId; RunId)
                {
                    Caption = 'Apify Run ID';
                    ApplicationArea = All;
                    ToolTip = 'Enter the Apify run ID to process';
                }
                
                field(Identifier; Identifier)
                {
                    Caption = 'Identifier';
                    ApplicationArea = All;
                    ToolTip = 'Enter the identifier to process';
                }
                
                field(Result; Result)
                {
                    Caption = 'Result';
                    ApplicationArea = All;
                    Editable = false;
                    MultiLine = true;
                    ToolTip = 'Shows the processing result';
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ProcessRun)
            {
                Caption = 'Process Apify Run';
                ApplicationArea = All;
                ToolTip = 'Process the entered Apify run ID';
                Image = Process;
                
                trigger OnAction()
                var
                    ApifyManager: Codeunit "Gsje Apify Manager";
                begin
                    Result := ApifyManager.ProcessApifyRun(RunId);
                end;
            }
            
            action(ProcessIdentifier)
            {
                Caption = 'Process Identifier';
                ApplicationArea = All;
                ToolTip = 'Process the entered identifier';
                Image = Process;
                
                trigger OnAction()
                var
                    ApifyManager: Codeunit "Gsje Apify Manager";
                begin
                    Result := ApifyManager.ProcessIdentifier(Identifier);
                end;
            }
            
            action(GetApiUrl)
            {
                Caption = 'Get API URL';
                ApplicationArea = All;
                ToolTip = 'Get the Apify API URL for the run ID';
                Image = Web;
                
                trigger OnAction()
                var
                    ApifyManager: Codeunit "Gsje Apify Manager";
                begin
                    if RunId = '' then
                        RunId := '1BYDIaIUoxcXwvZnO';
                    Result := ApifyManager.GetApifyRunUrl(RunId);
                end;
            }
            
            action(GetConsoleUrl)
            {
                Caption = 'Get Console URL';
                ApplicationArea = All;
                ToolTip = 'Get the Apify console URL for the run ID';
                Image = Web;
                
                trigger OnAction()
                var
                    ApifyManager: Codeunit "Gsje Apify Manager";
                begin
                    if RunId = '' then
                        RunId := '1BYDIaIUoxcXwvZnO';
                    Result := ApifyManager.GetApifyConsoleUrl(RunId);
                end;
            }
            
            action(CloneRun)
            {
                Caption = 'Clone Apify Run';
                ApplicationArea = All;
                ToolTip = 'Clone the entered Apify run ID';
                Image = Copy;
                
                trigger OnAction()
                var
                    ApifyManager: Codeunit "Gsje Apify Manager";
                begin
                    if RunId = '' then
                        RunId := '1BYDIaIUoxcXwvZnO';
                    Result := ApifyManager.CloneApifyRun(RunId);
                end;
            }
        }
    }
    
    var
        RunId: Text;
        Identifier: Text;
        Result: Text;
    
    trigger OnOpenPage()
    begin
        // Initialize with the values from the issue
        RunId := '1BYDIaIUoxcXwvZnO';
        Identifier := 'lPJzzMxvBLEg7pPr6';
    end;
}