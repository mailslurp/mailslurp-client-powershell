# AliasProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**EmailAddress** | **String** |  | 
**UseThreads** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AliasProjection = Initialize-maislurp-client-powershellAliasProjection  -Name null `
 -Id null `
 -UserId null `
 -InboxId null `
 -CreatedAt null `
 -UpdatedAt null `
 -EmailAddress null `
 -UseThreads null
```

- Convert the resource to JSON
```powershell
$AliasProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

