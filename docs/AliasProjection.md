# AliasProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UpdatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | 
**InboxId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UseThreads** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AliasProjection = Initialize-maislurp-client-powershellAliasProjection  -UpdatedAt null `
 -UserId null `
 -EmailAddress null `
 -InboxId null `
 -CreatedAt null `
 -UseThreads null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$AliasProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

