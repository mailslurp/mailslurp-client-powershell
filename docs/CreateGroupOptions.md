# CreateGroupOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Description** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateGroupOptions = Initialize-maislurp-client-powershellCreateGroupOptions  -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$CreateGroupOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

