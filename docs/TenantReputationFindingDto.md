# TenantReputationFindingDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountRegion** | **String** |  | 
**TenantName** | **String** |  | 
**TenantArn** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**Impact** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**CreatedTimestamp** | **System.DateTime** |  | [optional] 
**LastUpdatedTimestamp** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TenantReputationFindingDto = Initialize-maislurp-client-powershellTenantReputationFindingDto  -AccountRegion null `
 -TenantName null `
 -TenantArn null `
 -Type null `
 -Impact null `
 -Status null `
 -Description null `
 -CreatedTimestamp null `
 -LastUpdatedTimestamp null
```

- Convert the resource to JSON
```powershell
$TenantReputationFindingDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

