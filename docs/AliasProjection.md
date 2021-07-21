# AliasProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**EmailAddress** | **String** |  | 
**Id** | **String** |  | 
**InboxId** | **String** |  | 
**Name** | **String** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | 
**UseThreads** | **Boolean** |  | [optional] 
**UserId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AliasProjection = Initialize-maislurp-client-powershellAliasProjection  -CreatedAt null `
 -EmailAddress null `
 -Id null `
 -InboxId null `
 -Name null `
 -UpdatedAt null `
 -UseThreads null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$AliasProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

