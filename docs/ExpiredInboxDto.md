# ExpiredInboxDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**InboxId** | **String** |  | 
**EmailAddress** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ExpiredInboxDto = Initialize-maislurp-client-powershellExpiredInboxDto  -Id null `
 -InboxId null `
 -EmailAddress null
```

- Convert the resource to JSON
```powershell
$ExpiredInboxDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

