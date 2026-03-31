# GroupContactsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Group** | [**GroupDto**](GroupDto) |  | 
**Contacts** | [**ContactDto[]**](ContactDto) |  | 

## Examples

- Prepare the resource
```powershell
$GroupContactsDto = Initialize-maislurp-client-powershellGroupContactsDto  -Group null `
 -Contacts null
```

- Convert the resource to JSON
```powershell
$GroupContactsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

