# AliasProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**EmailAddress** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**UseThreads** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AliasProjection = Initialize-maislurp-client-powershellAliasProjection  -UserId null `
 -InboxId null `
 -EmailAddress null `
 -CreatedAt null `
 -UpdatedAt null `
 -UseThreads null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$AliasProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

