# GroupContactsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Contacts** | [**ContactDto[]**](ContactDto) |  | 
**Group** | [**GroupDto**](GroupDto) |  | 

## Examples

- Prepare the resource
```powershell
$GroupContactsDto = Initialize-maislurp-client-powershellGroupContactsDto  -Contacts null `
 -Group null
```

- Convert the resource to JSON
```powershell
$GroupContactsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

