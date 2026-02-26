# AliasProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | 
**InboxId** | **String** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UseThreads** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AliasProjection = Initialize-maislurp-client-powershellAliasProjection  -UserId null `
 -EmailAddress null `
 -InboxId null `
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

