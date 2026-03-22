# AnalyzeEmailHeadersResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Summary** | [**EmailHeaderAnalysisSummary**](EmailHeaderAnalysisSummary) |  | 
**ReceivedPath** | [**EmailHeaderReceivedHop[]**](EmailHeaderReceivedHop) |  | 
**ParsedHeaders** | [**System.Collections.Hashtable**](Array) |  | 
**Warnings** | **String[]** |  | 
**Errors** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$AnalyzeEmailHeadersResults = Initialize-maislurp-client-powershellAnalyzeEmailHeadersResults  -Summary null `
 -ReceivedPath null `
 -ParsedHeaders null `
 -Warnings null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$AnalyzeEmailHeadersResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

