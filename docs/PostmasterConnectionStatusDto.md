# PostmasterConnectionStatusDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Connected** | **Boolean** |  | 
**Connection** | [**PostmasterConnectionDto**](PostmasterConnectionDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PostmasterConnectionStatusDto = Initialize-maislurp-client-powershellPostmasterConnectionStatusDto  -Connected null `
 -Connection null
```

- Convert the resource to JSON
```powershell
$PostmasterConnectionStatusDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

