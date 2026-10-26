# SenderProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**EmailAddress** | **String** |  | 
**RawValue** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SenderProjection = Initialize-maislurp-client-powershellSenderProjection  -Name null `
 -EmailAddress null `
 -RawValue null
```

- Convert the resource to JSON
```powershell
$SenderProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

