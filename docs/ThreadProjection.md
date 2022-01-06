# ThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | [optional] 
**Subject** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**To** | **String[]** |  | [optional] 
**Bcc** | **String[]** |  | [optional] 
**Cc** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 
**AliasId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ThreadProjection = Initialize-maislurp-client-powershellThreadProjection  -Name null `
 -Id null `
 -UpdatedAt null `
 -Subject null `
 -UserId null `
 -InboxId null `
 -To null `
 -Bcc null `
 -Cc null `
 -CreatedAt null `
 -AliasId null
```

- Convert the resource to JSON
```powershell
$ThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

