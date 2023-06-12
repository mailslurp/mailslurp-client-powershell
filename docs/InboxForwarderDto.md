# InboxForwarderDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**InboxId** | **String** |  | 
**Name** | **String** | Name of inbox forwarder | [optional] 
**Field** | **String** | Which field to match against | 
**Match** | **String** | Wild-card type pattern to apply to field | 
**ForwardToRecipients** | **String[]** | Who to send forwarded email to | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$InboxForwarderDto = Initialize-maislurp-client-powershellInboxForwarderDto  -Id null `
 -InboxId null `
 -Name null `
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

