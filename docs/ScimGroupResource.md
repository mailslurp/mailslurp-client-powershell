# ScimGroupResource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Schemas** | **String[]** |  | 
**Id** | **String** |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Members** | [**ScimMember[]**](ScimMember) |  | [optional] 
**Meta** | [**ScimMeta**](ScimMeta) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScimGroupResource = Initialize-maislurp-client-powershellScimGroupResource  -Schemas null `
 -Id null `
 -ExternalId null `
 -DisplayName null `
 -Members null `
 -Meta null
```

- Convert the resource to JSON
```powershell
$ScimGroupResource | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

