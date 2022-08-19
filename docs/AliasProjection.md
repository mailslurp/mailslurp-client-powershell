# AliasProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**InboxId** | **String** |  | 
**UserId** | **String** |  | 
**EmailAddress** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UseThreads** | **Boolean** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$AliasProjection = Initialize-maislurp-client-powershellAliasProjection  -Name null `
 -Id null `
 -InboxId null `
 -UserId null `
 -EmailAddress null `
 -CreatedAt null `
 -UseThreads null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$AliasProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

