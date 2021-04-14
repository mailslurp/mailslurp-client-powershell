# Alias
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**EmailAddress** | **String** |  | 
**Id** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**Name** | **String** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | 
**UseThreads** | **Boolean** |  | [optional] 
**UserId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$Alias = Initialize-maislurp-client-powershellAlias  -CreatedAt null `
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
$Alias | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

