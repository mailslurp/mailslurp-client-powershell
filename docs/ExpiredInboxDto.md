# ExpiredInboxDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** |  | 
**Id** | **String** |  | 
**InboxId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ExpiredInboxDto = Initialize-maislurp-client-powershellExpiredInboxDto  -EmailAddress null `
 -Id null `
 -InboxId null
```

- Convert the resource to JSON
```powershell
$ExpiredInboxDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

