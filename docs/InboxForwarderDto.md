# InboxForwarderDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**Field** | **String** |  | [optional] 
**Match** | **String** |  | [optional] 
**ForwardToRecipients** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxForwarderDto = Initialize-maislurp-client-powershellInboxForwarderDto  -Id null `
 -InboxId null `
 -Field null `
 -Match null `
 -ForwardToRecipients null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$InboxForwarderDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

