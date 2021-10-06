# ModelSender
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** |  | 
**Name** | **String** |  | [optional] 
**RawValue** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ModelSender = Initialize-maislurp-client-powershellModelSender  -EmailAddress null `
 -Name null `
 -RawValue null
```

- Convert the resource to JSON
```powershell
$ModelSender | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

