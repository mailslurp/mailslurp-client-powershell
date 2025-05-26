# SenderProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** |  | 
**RawValue** | **String** |  | 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SenderProjection = Initialize-maislurp-client-powershellSenderProjection  -EmailAddress null `
 -RawValue null `
 -Name null
```

- Convert the resource to JSON
```powershell
$SenderProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

