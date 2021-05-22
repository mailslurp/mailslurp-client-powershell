# ThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AliasId** | **String** |  | 
**Bcc** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 
**InboxId** | **String** |  | 
**Name** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**To** | **String[]** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ThreadProjection = Initialize-maislurp-client-powershellThreadProjection  -AliasId null `
 -Bcc null `
 -Cc null `
 -CreatedAt null `
 -Id null `
 -InboxId null `
 -Name null `
 -Subject null `
 -To null `
 -UpdatedAt null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$ThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

