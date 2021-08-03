# InboxForwarderTestResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DoesMatch** | **Boolean** |  | 
**VarMatches** | **System.Collections.Hashtable** |  | 

## Examples

- Prepare the resource
```powershell
$InboxForwarderTestResult = Initialize-maislurp-client-powershellInboxForwarderTestResult  -DoesMatch null `
 -VarMatches null
```

- Convert the resource to JSON
```powershell
$InboxForwarderTestResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

