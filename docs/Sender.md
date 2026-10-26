# ModelSender
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RawValue** | **String** |  | 
**EmailAddress** | **String** |  | 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelSender = Initialize-maislurp-client-powershellModelSender  -RawValue null `
 -EmailAddress null `
 -Name null
```

- Convert the resource to JSON
```powershell
$ModelSender | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

