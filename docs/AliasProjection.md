# AliasProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | 
**InboxId** | **String** |  | 
**UseThreads** | **Boolean** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$AliasProjection = Initialize-maislurp-client-powershellAliasProjection  -Name null `
 -Id null `
 -UserId null `
 -EmailAddress null `
 -InboxId null `
 -UseThreads null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$AliasProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

