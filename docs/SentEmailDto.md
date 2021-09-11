# SentEmailDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attachments** | **String[]** | Array of IDs of attachments that were sent with this email | [optional] 
**Bcc** | **String[]** |  | [optional] 
**Body** | **String** |  | [optional] 
**BodyMD5Hash** | **String** | MD5 Hash | [optional] 
**Cc** | **String[]** |  | [optional] 
**Charset** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**Id** | **String** | ID of sent email | [optional] 
**InboxId** | **String** | Inbox ID email was sent from | [optional] 
**IsHTML** | **Boolean** |  | [optional] 
**PixelIds** | **String[]** |  | [optional] 
**ReplyTo** | **String** |  | [optional] 
**SentAt** | **System.DateTime** |  | 
**Subject** | **String** |  | [optional] 
**To** | **String[]** | Recipients email was sent to | [optional] 
**UserId** | **String** | User ID | [optional] 

## Examples

- Prepare the resource
```powershell
$SentEmailDto = Initialize-maislurp-client-powershellSentEmailDto  -Attachments null `
 -Bcc null `
 -Body null `
 -BodyMD5Hash null `
 -Cc null `
 -Charset null `
 -VarFrom null `
 -Id null `
 -InboxId null `
 -IsHTML null `
 -PixelIds null `
 -ReplyTo null `
 -SentAt null `
 -Subject null `
 -To null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$SentEmailDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

