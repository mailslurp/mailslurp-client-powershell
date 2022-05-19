# SentEmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**VarFrom** | **String** |  | [optional] 
**UserId** | **String** |  | 
**Subject** | **String** |  | [optional] 
**To** | **String[]** |  | 
**InboxId** | **String** |  | 
**Attachments** | **String[]** |  | 
**BodyMD5Hash** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Bcc** | **String[]** |  | 
**Cc** | **String[]** |  | 
**VirtualSend** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SentEmailProjection = Initialize-maislurp-client-powershellSentEmailProjection  -Id null `
 -VarFrom null `
 -UserId null `
 -Subject null `
 -To null `
 -InboxId null `
 -Attachments null `
 -BodyMD5Hash null `
 -CreatedAt null `
 -Bcc null `
 -Cc null `
 -VirtualSend null
```

- Convert the resource to JSON
```powershell
$SentEmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

