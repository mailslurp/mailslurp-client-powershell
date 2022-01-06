# EmailProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**TeamAccess** | **Boolean** |  | [optional] 
**Read** | **Boolean** |  | [optional] 
**BodyMD5Hash** | **String** |  | [optional] 
**BodyExcerpt** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**To** | **String[]** |  | [optional] 
**Attachments** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailProjection = Initialize-maislurp-client-powershellEmailProjection  -Id null `
 -VarFrom null `
 -TeamAccess null `
 -Read null `
 -BodyMD5Hash null `
 -BodyExcerpt null `
 -Subject null `
 -InboxId null `
 -To null `
 -Attachments null `
 -Bcc null `
 -Cc null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$EmailProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

