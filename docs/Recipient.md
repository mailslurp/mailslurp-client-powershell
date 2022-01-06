# Recipient
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RawValue** | **String** |  | [optional] 
**EmailAddress** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Recipient = Initialize-maislurp-client-powershellRecipient  -RawValue null `
 -EmailAddress null `
 -Name null
```

- Convert the resource to JSON
```powershell
$Recipient | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

