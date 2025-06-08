# AliasProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxId** | **String** |  | 
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UseThreads** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AliasProjection = Initialize-maislurp-client-powershellAliasProjection  -InboxId null `
 -UserId null `
 -EmailAddress null `
 -UpdatedAt null `
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

