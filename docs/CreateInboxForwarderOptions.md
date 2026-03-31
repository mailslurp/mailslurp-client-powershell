# CreateInboxForwarderOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Field** | **String** | Field to match against to trigger inbox forwarding for inbound email | [optional] 
**Match** | **String** | String or wildcard style match for field specified when evaluating forwarding rules | [optional] 
**ForwardToRecipients** | **String[]** | Email addresses to forward an email to if it matches the field and match criteria of the forwarder | 
**Should** | **String** | Comparison mode for inbox automation matching. | [optional] 
**MatchOptions** | [**InboxAutomationMatchOptions**](InboxAutomationMatchOptions) |  | [optional] 
**AttachmentTextExtractionMethod** | **String** | Method for extracting text from attachments. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateInboxForwarderOptions = Initialize-maislurp-client-powershellCreateInboxForwarderOptions  -Field null `
 -Match null `
 -ForwardToRecipients null `
 -Should null `
 -MatchOptions null `
 -AttachmentTextExtractionMethod null
```

- Convert the resource to JSON
```powershell
$CreateInboxForwarderOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

