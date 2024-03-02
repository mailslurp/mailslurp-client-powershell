# SentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 
**BodyMD5Hash** | **String** |  | [optional] 
**UserId** | **String** |  | 
**VarFrom** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**Attachments** | **String[]** |  | 
**To** | **String[]** |  | 
**Bcc** | **String[]** |  | 
**Cc** | **String[]** |  | 
**VirtualSend** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$SentEmailProjection = Initialize-maislurp-client-powershellSentEmailProjection  -CreatedAt null `
 -Id null `
 -BodyMD5Hash null `
 -UserId null `
 -VarFrom null `
 -Subject null `
 -InboxId null `
 -Attachments null `
 -To null `
 -Bcc null `
 -Cc null `
 -VirtualSend null
```

- Convert the resource to JSON
```powershell
$SentEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

