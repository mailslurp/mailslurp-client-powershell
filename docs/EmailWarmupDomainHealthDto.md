# EmailWarmupDomainHealthDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** |  | 
**MonitorId** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**HealthScore** | **Int32** |  | [optional] 
**SpfOk** | **Boolean** |  | [optional] 
**DkimOk** | **Boolean** |  | [optional] 
**DmarcOk** | **Boolean** |  | [optional] 
**MxOk** | **Boolean** |  | [optional] 
**BlacklistOk** | **Boolean** |  | [optional] 
**CheckedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailWarmupDomainHealthDto = Initialize-maislurp-client-powershellEmailWarmupDomainHealthDto  -Domain null `
 -MonitorId null `
 -Status null `
 -HealthScore null `
 -SpfOk null `
 -DkimOk null `
 -DmarcOk null `
 -MxOk null `
 -BlacklistOk null `
 -CheckedAt null
```

- Convert the resource to JSON
```powershell
$EmailWarmupDomainHealthDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

