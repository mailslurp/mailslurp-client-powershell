# ReputationItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReputationType** | **String** |  | 
**Severity** | **String** |  | 
**Id** | **String** |  | 
**Source** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Recipient** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReputationItemProjection = Initialize-maislurp-client-powershellReputationItemProjection  -ReputationType null `
 -Severity null `
 -Id null `
 -Source null `
 -CreatedAt null `
 -Recipient null
```

- Convert the resource to JSON
```powershell
$ReputationItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

