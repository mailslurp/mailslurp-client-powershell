# ReplyToEmailOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attachments** | **String[]** | List of uploaded attachments to send with the reply. Optional. | [optional] 
**Body** | **String** | Body of the reply email you want to send | [optional] 
**Charset** | **String** | The charset that your message should be sent with. Optional. Default is UTF-8 | [optional] 
**VarFrom** | **String** | The from header that should be used. Optional | [optional] 
**IsHTML** | **Boolean** | Is the reply HTML | [optional] 
**ReplyTo** | **String** | The replyTo header that should be used. Optional | [optional] 
**SendStrategy** | **String** | When to send the email. Typically immediately | [optional] 
**Template** | **String** | Template ID to use instead of body. Will use template variable map to fill defined variable slots. | [optional] 
**TemplateVariables** | [**SystemCollectionsHashtable**]() | Template variables if using a template | [optional] 

## Examples

- Prepare the resource
```powershell
$ReplyToEmailOptions = Initialize-maislurp-client-powershellReplyToEmailOptions  -Attachments null `
 -Body null `
 -Charset null `
 -VarFrom null `
 -IsHTML null `
 -ReplyTo null `
 -SendStrategy null `
 -Template null `
 -TemplateVariables null
```

- Convert the resource to JSON
```powershell
$ReplyToEmailOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

