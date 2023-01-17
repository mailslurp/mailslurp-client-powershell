# SentEmailDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of sent email | 
**UserId** | **String** | User ID | 
**InboxId** | **String** | Inbox ID email was sent from | 
**DomainId** | **String** | Domain ID | [optional] 
**To** | **String[]** | Recipients email was sent to | [optional] 
**VarFrom** | **String** | Sent from address | [optional] 
**ReplyTo** | **String** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**Attachments** | **String[]** | Array of IDs of attachments that were sent with this email | [optional] 
**Subject** | **String** |  | [optional] 
**BodyMD5Hash** | **String** | MD5 Hash | [optional] 
**Body** | **String** | Sent email body | [optional] 
**ToContacts** | **String[]** |  | [optional] 
**ToGroup** | **String** |  | [optional] 
**Charset** | **String** |  | [optional] 
**IsHTML** | **Boolean** |  | [optional] 
**SentAt** | **System.DateTime** |  | 
**PixelIds** | **String[]** |  | [optional] 
**MessageId** | **String** |  | [optional] 
**MessageIds** | **String[]** |  | [optional] 
**VirtualSend** | **Boolean** |  | [optional] 
**TemplateId** | **String** |  | [optional] 
**TemplateVariables** | [**System.Collections.Hashtable**](SystemCollectionsHashtable) |  | [optional] 
**Html** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SentEmailDto = Initialize-maislurp-client-powershellSentEmailDto  -Id null `
 -UserId null `
 -InboxId null `
 -DomainId null `
 -To null `
 -VarFrom null `
 -ReplyTo null `
 -Cc null `
 -Bcc null `
 -Attachments null `
 -Subject null `
 -BodyMD5Hash null `
 -Body null `
 -ToContacts null `
 -ToGroup null `
 -Charset null `
 -IsHTML null `
 -SentAt null `
 -PixelIds null `
 -MessageId null `
 -MessageIds null `
 -VirtualSend null `
 -TemplateId null `
 -TemplateVariables null `
 -Html null
```

- Convert the resource to JSON
```powershell
$SentEmailDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

