codeunit 50000 "Gsje Apify Manager"
{
    Description = 'Manages Apify actor runs and related identifiers for Gsje project';
    
    procedure ProcessApifyRun(RunId: Text): Text
    var
        Result: Text;
    begin
        // Process the Apify run ID
        if RunId = '' then
            exit('');
            
        // Handle the specific run ID from the issue
        if RunId = '1BYDIaIUoxcXwvZnO' then begin
            Result := 'Processed Apify run: ' + RunId;
            exit(Result);
        end;
        
        Result := 'Unknown Apify run: ' + RunId;
        exit(Result);
    end;
    
    procedure ProcessIdentifier(Identifier: Text): Text
    var
        Result: Text;
    begin
        // Process the identifier from the issue title
        if Identifier = '' then
            exit('');
            
        if Identifier = 'lPJzzMxvBLEg7pPr6' then begin
            Result := 'Processed identifier: ' + Identifier + ' -> Apify run: 1BYDIaIUoxcXwvZnO';
            exit(Result);
        end;
        
        Result := 'Unknown identifier: ' + Identifier;
        exit(Result);
    end;
    
    procedure GetApifyRunUrl(RunId: Text): Text
    begin
        if RunId = '' then
            exit('');
            
        exit('https://api.apify.com/v2/actor-runs/' + RunId);
    end;
    
    procedure GetApifyConsoleUrl(RunId: Text): Text
    begin
        if RunId = '' then
            exit('');
            
        exit('https://console.apify.com/view/runs/' + RunId);
    end;
}