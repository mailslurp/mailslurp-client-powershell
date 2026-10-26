# FreeInboxDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**EmailAddress** | **String** |  | 
**ExpiresAt** | **System.DateTime** |  | 
**MaxMessages** | **Int32** |  | 
**Messages** | [**FreeInboxMessageDto[]**](FreeInboxMessageDto) |  | 

## Examples

- Prepare the resource
```powershell
$FreeInboxDto = Initialize-maislurp-client-powershellFreeInboxDto  -Id null `
 -EmailAddress null `
 -ExpiresAt null `
 -MaxMessages null `
 -Messages null
```

- Convert the resource to JSON
```powershell
$FreeInboxDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

