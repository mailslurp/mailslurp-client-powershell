# MissedEmail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttachmentCount** | **Int32** |  | 
**Bcc** | **String[]** |  | 
**BodyExcerpt** | **String** |  | [optional] 
**Cc** | **String[]** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | [optional] 
**InboxIds** | **String[]** |  | 
**Subject** | **String** |  | [optional] 
**To** | **String[]** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$MissedEmail = Initialize-maislurp-client-powershellMissedEmail  -AttachmentCount null `
 -Bcc null `
 -BodyExcerpt null `
 -Cc null `
 -CreatedAt null `
 -Id null `
 -InboxIds null `
 -Subject null `
 -To null `
 -UpdatedAt null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$MissedEmail | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

