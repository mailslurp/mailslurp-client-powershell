# UpdateInboxReplierOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxId** | **String** | Inbox ID to attach replier to | 
**Name** | **String** | Name for replier | [optional] 
**Field** | **String** | Field to match against to trigger inbox replier for inbound email | 
**Match** | **String** | String or wildcard style match for field specified when evaluating reply rules | 
**ReplyTo** | **String** | Reply-to email address when sending replying | [optional] 
**Subject** | **String** | Subject override when replying to email | [optional] 
**VarFrom** | **String** | Send email from address | [optional] 
**Charset** | **String** | Email reply charset | [optional] 
**IsHTML** | **Boolean** | Send HTML email | [optional] 
**IgnoreReplyTo** | **Boolean** | Ignore sender replyTo when responding. Send directly to the sender if enabled. | [optional] 
**Body** | **String** | Email body for reply | [optional] 
**TemplateId** | **String** | ID of template to use when sending a reply | [optional] 
**TemplateVariables** | [**System.Collections.Hashtable**](SystemCollectionsHashtable) | Template variable values | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateInboxReplierOptions = Initialize-maislurp-client-powershellUpdateInboxReplierOptions  -InboxId null `
 -Name null `
 -Field null `
 -Match null `
 -ReplyTo null `
 -Subject null `
 -VarFrom null `
 -Charset null `
 -IsHTML null `
 -IgnoreReplyTo null `
 -Body null `
 -TemplateId null `
 -TemplateVariables null
```

- Convert the resource to JSON
```powershell
$UpdateInboxReplierOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

