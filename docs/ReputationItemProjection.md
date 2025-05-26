# ReputationItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Recipient** | **String** |  | [optional] 
**ReputationType** | **String** |  | 
**Id** | **String** |  | 
**Severity** | **String** |  | 
**Source** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReputationItemProjection = Initialize-maislurp-client-powershellReputationItemProjection  -CreatedAt null `
 -Recipient null `
 -ReputationType null `
 -Id null `
 -Severity null `
 -Source null
```

- Convert the resource to JSON
```powershell
$ReputationItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

