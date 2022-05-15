# ThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**Subject** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**To** | **String[]** |  | 
**Bcc** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | 
**AliasId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ThreadProjection = Initialize-maislurp-client-powershellThreadProjection  -Name null `
 -Id null `
 -Subject null `
 -CreatedAt null `
 -UserId null `
 -InboxId null `
 -To null `
 -Bcc null `
 -Cc null `
 -UpdatedAt null `
 -AliasId null
```

- Convert the resource to JSON
```powershell
$ThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

