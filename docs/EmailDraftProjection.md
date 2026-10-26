# EmailDraftProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**Id** | **String** |  | 
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**Attachments** | **String[]** |  | [optional] 
**TextExcerpt** | **String** |  | [optional] 
**BodyExcerpt** | **String** |  | [optional] 
**To** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Cc** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailDraftProjection = Initialize-maislurp-client-powershellEmailDraftProjection  -Subject null `
 -VarFrom null `
 -Id null `
 -UserId null `
 -InboxId null `
 -Recipients null `
 -Attachments null `
 -TextExcerpt null `
 -BodyExcerpt null `
 -To null `
 -CreatedAt null `
 -Cc null `
 -Bcc null `
 -UpdatedAt null `
 -VarSender null
```

- Convert the resource to JSON
```powershell
$EmailDraftProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

