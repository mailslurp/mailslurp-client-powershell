# PhoneProvisioningJobItemDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**PhoneNumber** | **String** |  | 
**ProviderLabel** | **String** |  | [optional] 
**Status** | **String** |  | 
**LineType** | **String** |  | [optional] 
**CarrierName** | **String** |  | [optional] 
**MobileCountryCode** | **String** |  | [optional] 
**MobileNetworkCode** | **String** |  | [optional] 
**PhoneNumberId** | **String** |  | [optional] 
**FailureMessage** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PhoneProvisioningJobItemDto = Initialize-maislurp-client-powershellPhoneProvisioningJobItemDto  -Id null `
 -PhoneNumber null `
 -ProviderLabel null `
 -Status null `
 -LineType null `
 -CarrierName null `
 -MobileCountryCode null `
 -MobileNetworkCode null `
 -PhoneNumberId null `
 -FailureMessage null
```

- Convert the resource to JSON
```powershell
$PhoneProvisioningJobItemDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

