# PostmasterIpReputationDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Reputation** | **String** |  | [optional] 
**IpAddresses** | **String[]** |  | 
**SampleIp** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PostmasterIpReputationDto = Initialize-maislurp-client-powershellPostmasterIpReputationDto  -Reputation null `
 -IpAddresses null `
 -SampleIp null
```

- Convert the resource to JSON
```powershell
$PostmasterIpReputationDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

