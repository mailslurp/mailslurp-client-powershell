# PostmasterDomainDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**Domain** | **String** |  | 
**Permission** | **String** |  | [optional] 
**CreateTime** | **System.DateTime** |  | [optional] 
**FirstSeenAt** | **System.DateTime** |  | [optional] 
**LastSyncedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PostmasterDomainDto = Initialize-maislurp-client-powershellPostmasterDomainDto  -Name null `
 -Domain null `
 -Permission null `
 -CreateTime null `
 -FirstSeenAt null `
 -LastSyncedAt null
```

- Convert the resource to JSON
```powershell
$PostmasterDomainDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

