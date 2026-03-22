# PhonePoolLeaseDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**PoolId** | **String** |  | 
**PhoneNumberId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**PhoneCountry** | **String** |  | 
**PhoneName** | **String** |  | [optional] 
**LeaseName** | **String** |  | [optional] 
**LeaseOwner** | **String** |  | [optional] 
**LeasedAt** | **System.DateTime** |  | 
**ExpiresAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PhonePoolLeaseDto = Initialize-maislurp-client-powershellPhonePoolLeaseDto  -Id null `
 -PoolId null `
 -PhoneNumberId null `
 -PhoneNumber null `
 -PhoneCountry null `
 -PhoneName null `
 -LeaseName null `
 -LeaseOwner null `
 -LeasedAt null `
 -ExpiresAt null
```

- Convert the resource to JSON
```powershell
$PhonePoolLeaseDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

