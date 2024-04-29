# InboxForwarderTestResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarMatches** | **System.Collections.Hashtable** |  | 
**DoesMatch** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$InboxForwarderTestResult = Initialize-maislurp-client-powershellInboxForwarderTestResult  -VarMatches null `
 -DoesMatch null
```

- Convert the resource to JSON
```powershell
$InboxForwarderTestResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

