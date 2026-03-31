# InboxForwarderDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**Name** | **String** | Name of inbox forwarder | [optional] 
**Field** | **String** | Which field to match against | [optional] 
**Match** | **String** | Pattern to apply to field | [optional] 
**ForwardToRecipients** | **String[]** | Who to send forwarded email to | 
**CreatedAt** | **System.DateTime** |  | 
**Should** | **String** | Comparison mode for inbox automation matching. | [optional] 
**MatchOptions** | [**InboxAutomationMatchOptions**](InboxAutomationMatchOptions) |  | [optional] 
**AttachmentTextExtractionMethod** | **String** | Method for extracting text from attachments. | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxForwarderDto = Initialize-maislurp-client-powershellInboxForwarderDto  -Id null `
 -InboxId null `
 -Name null `
 -Field null `
 -Match null `
 -ForwardToRecipients null `
 -CreatedAt null `
 -Should null `
 -MatchOptions null `
 -AttachmentTextExtractionMethod null
```

- Convert the resource to JSON
```powershell
$InboxForwarderDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

