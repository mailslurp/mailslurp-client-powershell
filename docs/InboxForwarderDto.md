# InboxForwarderDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Field** | **String** |  | 
**ForwardToRecipients** | **String[]** |  | 
**Id** | **String** |  | 
**InboxId** | **String** |  | 
**Match** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$InboxForwarderDto = Initialize-maislurp-client-powershellInboxForwarderDto  -CreatedAt null `
 -Field null `
 -ForwardToRecipients null `
 -Id null `
 -InboxId null `
 -Match null
```

- Convert the resource to JSON
```powershell
$InboxForwarderDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

