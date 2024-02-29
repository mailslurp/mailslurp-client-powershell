# CanSendEmailResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsSendingPermitted** | **Boolean** |  | 
**Message** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CanSendEmailResults = Initialize-maislurp-client-powershellCanSendEmailResults  -IsSendingPermitted null `
 -Message null
```

- Convert the resource to JSON
```powershell
$CanSendEmailResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

