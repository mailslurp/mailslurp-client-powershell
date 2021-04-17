# EmailPreview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attachments** | **String[]** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**Bcc** | **String[]** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] 
**Cc** | **String[]** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] 
**CreatedAt** | **System.DateTime** | When was the email received by MailSlurp | [optional] 
**VarFrom** | **String** | Who the email was sent from | [optional] 
**Id** | **String** | ID of the email | [optional] 
**Read** | **Boolean** | Has the email been viewed ever. This means viewed in the dashboard or requested via the full email entity endpoints | [optional] 
**Subject** | **String** | The subject line of the email message | [optional] 
**To** | **String[]** | List of &#x60;To&#x60; recipients email was addressed to | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailPreview = Initialize-maislurp-client-powershellEmailPreview  -Attachments null `
 -Bcc null `
 -Cc null `
 -CreatedAt null `
 -VarFrom null `
 -Id null `
 -Read null `
 -Subject null `
 -To null
```

- Convert the resource to JSON
```powershell
$EmailPreview | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

