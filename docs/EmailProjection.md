# EmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attachments** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**VarFrom** | **String** |  | [optional] 
**Id** | **String** |  | 
**InboxId** | **String** |  | 
**Read** | **Boolean** |  | [optional] 
**Subject** | **String** |  | [optional] 
**TeamAccess** | **Boolean** |  | [optional] 
**To** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$EmailProjection = Initialize-maislurp-client-powershellEmailProjection  -Attachments null `
 -Bcc null `
 -BodyMD5Hash null `
 -Cc null `
 -CreatedAt null `
 -VarFrom null `
 -Id null `
 -InboxId null `
 -Read null `
 -Subject null `
 -TeamAccess null `
 -To null
```

- Convert the resource to JSON
```powershell
$EmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

