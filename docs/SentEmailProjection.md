# SentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** |  | [optional] 
**Id** | **String** |  | 
**BodyMD5Hash** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**UserId** | **String** |  | 
**Attachments** | **String[]** |  | 
**To** | **String[]** |  | 
**Bcc** | **String[]** |  | 
**Cc** | **String[]** |  | 
**CreatedAt** | **System.DateTime** |  | 
**VirtualSend** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$SentEmailProjection = Initialize-maislurp-client-powershellSentEmailProjection  -Subject null `
 -Id null `
 -BodyMD5Hash null `
 -VarFrom null `
 -InboxId null `
 -UserId null `
 -Attachments null `
 -To null `
 -Bcc null `
 -Cc null `
 -CreatedAt null `
 -VirtualSend null
```

- Convert the resource to JSON
```powershell
$SentEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

