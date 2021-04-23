# GroupDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Description** | **String** |  | [optional] 
**Id** | **String** |  | 
**Name** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$GroupDto = Initialize-maislurp-client-powershellGroupDto  -CreatedAt null `
 -Description null `
 -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$GroupDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

