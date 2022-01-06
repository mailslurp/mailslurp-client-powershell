# MissedEmail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**BodyExcerpt** | **String** |  | [optional] 
**AttachmentCount** | **Int32** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**To** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**InboxIds** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MissedEmail = Initialize-maislurp-client-powershellMissedEmail  -Id null `
 -UserId null `
 -Subject null `
 -BodyExcerpt null `
 -AttachmentCount null `
 -VarFrom null `
 -To null `
 -Cc null `
 -Bcc null `
 -InboxIds null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$MissedEmail | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

