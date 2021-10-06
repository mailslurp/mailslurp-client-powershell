# DomainPreview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CatchAllInboxId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Domain** | **String** |  | 
**DomainType** | **String** |  | 
**Id** | **String** |  | 
**IsVerified** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$DomainPreview = Initialize-maislurp-client-powershellDomainPreview  -CatchAllInboxId null `
 -CreatedAt null `
 -Domain null `
 -DomainType null `
 -Id null `
 -IsVerified null
```

- Convert the resource to JSON
```powershell
$DomainPreview | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

