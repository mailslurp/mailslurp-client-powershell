# SentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 
**UserId** | **String** |  | 
**Subject** | **String** |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 
**Bcc** | **String[]** |  | 
**Cc** | **String[]** |  | 
**VirtualSend** | **Boolean** |  | 
**InboxId** | **String** |  | 
**Attachments** | **String[]** |  | 
**To** | **String[]** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$SentEmailProjection = Initialize-maislurp-client-powershellSentEmailProjection  -Id null `
 -VarFrom null `
 -UserId null `
 -Subject null `
 -BodyMD5Hash null `
 -Bcc null `
 -Cc null `
 -VirtualSend null `
 -InboxId null `
 -Attachments null `
 -To null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$SentEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

