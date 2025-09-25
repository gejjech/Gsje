codeunit 50001 "Gsje Apify Manager Test"
{
    Subtype = Test;
    TestPermissions = Disabled;
    
    [Test]
    procedure TestProcessApifyRun()
    var
        ApifyManager: Codeunit "Gsje Apify Manager";
        Result: Text;
    begin
        // Test processing the specific Apify run ID from the issue
        Result := ApifyManager.ProcessApifyRun('1BYDIaIUoxcXwvZnO');
        Assert.ExpectedMessage('Processed Apify run: 1BYDIaIUoxcXwvZnO', Result);
        
        // Test processing an unknown run ID
        Result := ApifyManager.ProcessApifyRun('UnknownRunId');
        Assert.ExpectedMessage('Unknown Apify run: UnknownRunId', Result);
        
        // Test empty input
        Result := ApifyManager.ProcessApifyRun('');
        Assert.ExpectedMessage('', Result);
    end;
    
    [Test]
    procedure TestProcessIdentifier()
    var
        ApifyManager: Codeunit "Gsje Apify Manager";
        Result: Text;
    begin
        // Test processing the specific identifier from the issue
        Result := ApifyManager.ProcessIdentifier('lPJzzMxvBLEg7pPr6');
        Assert.ExpectedMessage('Processed identifier: lPJzzMxvBLEg7pPr6 -> Apify run: 1BYDIaIUoxcXwvZnO', Result);
        
        // Test processing an unknown identifier
        Result := ApifyManager.ProcessIdentifier('UnknownIdentifier');
        Assert.ExpectedMessage('Unknown identifier: UnknownIdentifier', Result);
        
        // Test empty input
        Result := ApifyManager.ProcessIdentifier('');
        Assert.ExpectedMessage('', Result);
    end;
    
    [Test]
    procedure TestGetApifyUrls()
    var
        ApifyManager: Codeunit "Gsje Apify Manager";
        ApiUrl: Text;
        ConsoleUrl: Text;
    begin
        // Test URL generation for the specific run ID
        ApiUrl := ApifyManager.GetApifyRunUrl('1BYDIaIUoxcXwvZnO');
        Assert.ExpectedMessage('https://api.apify.com/v2/actor-runs/1BYDIaIUoxcXwvZnO', ApiUrl);
        
        ConsoleUrl := ApifyManager.GetApifyConsoleUrl('1BYDIaIUoxcXwvZnO');
        Assert.ExpectedMessage('https://console.apify.com/view/runs/1BYDIaIUoxcXwvZnO', ConsoleUrl);
        
        // Test empty input
        ApiUrl := ApifyManager.GetApifyRunUrl('');
        Assert.ExpectedMessage('', ApiUrl);
        
        ConsoleUrl := ApifyManager.GetApifyConsoleUrl('');
        Assert.ExpectedMessage('', ConsoleUrl);
    end;
}