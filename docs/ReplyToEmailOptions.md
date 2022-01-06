# ReplyToEmailOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | **String** | Body of the reply email you want to send | [optional] 
**VarFrom** | **String** | The from header that should be used. Optional | [optional] 
**ReplyTo** | **String** | The replyTo header that should be used. Optional | [optional] 
**Charset** | **String** | The charset that your message should be sent with. Optional. Default is UTF-8 | [optional] 
**Attachments** | **String[]** | List of uploaded attachments to send with the reply. Optional. | [optional] 
**TemplateVariables** | [**System.Collections.Hashtable**](SystemCollectionsHashtable) | Template variables if using a template | [optional] 
**Template** | **String** | Template ID to use instead of body. Will use template variable map to fill defined variable slots. | [optional] 
**SendStrategy** | **String** | How an email should be sent based on its recipients | [optional] 
**UseInboxName** | **Boolean** | Optionally use inbox name as display name for sender email address | [optional] 
**Html** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReplyToEmailOptions = Initialize-maislurp-client-powershellReplyToEmailOptions  -Body null `
 -VarFrom null `
 -ReplyTo null `
 -Charset null `
 -Attachments null `
 -TemplateVariables null `
 -Template null `
 -SendStrategy null `
 -UseInboxName null `
 -Html null
```

- Convert the resource to JSON
```powershell
$ReplyToEmailOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

