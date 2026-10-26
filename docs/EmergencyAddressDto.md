# EmergencyAddressDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Address1** | **String** |  | 
**PhoneCountry** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EmergencyAddressDto = Initialize-maislurp-client-powershellEmergencyAddressDto  -Id null `
 -Address1 null `
 -PhoneCountry null
```

- Convert the resource to JSON
```powershell
$EmergencyAddressDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

