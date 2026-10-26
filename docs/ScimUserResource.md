# ScimUserResource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Schemas** | **String[]** |  | 
**Id** | **String** |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**UserName** | **String** |  | [optional] 
**Name** | [**ScimName**](ScimName) |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Emails** | [**ScimEmail[]**](ScimEmail) |  | [optional] 
**Active** | **Boolean** |  | [optional] 
**Meta** | [**ScimMeta**](ScimMeta) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScimUserResource = Initialize-maislurp-client-powershellScimUserResource  -Schemas null `
 -Id null `
 -ExternalId null `
 -UserName null `
 -Name null `
 -DisplayName null `
 -Emails null `
 -Active null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$ScimUserResource | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

