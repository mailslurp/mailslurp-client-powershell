# ReputationItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Severity** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Recipient** | **String** |  | [optional] 
**ReputationType** | **String** |  | 
**Source** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReputationItemProjection = Initialize-maislurp-client-powershellReputationItemProjection  -Id null `
 -Severity null `
 -CreatedAt null `
 -Recipient null `
 -ReputationType null `
 -Source null
```

- Convert the resource to JSON
```powershell
$ReputationItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

