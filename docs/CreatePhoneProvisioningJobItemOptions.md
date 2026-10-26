# CreatePhoneProvisioningJobItemOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneNumber** | **String** |  | 
**ProviderLabel** | **String** |  | [optional] 
**LineType** | **String** |  | [optional] 
**CarrierName** | **String** |  | [optional] 
**MobileCountryCode** | **String** |  | [optional] 
**MobileNetworkCode** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePhoneProvisioningJobItemOptions = Initialize-maislurp-client-powershellCreatePhoneProvisioningJobItemOptions  -PhoneNumber null `
 -ProviderLabel null `
 -LineType null `
 -CarrierName null `
 -MobileCountryCode null `
 -MobileNetworkCode null
```

- Convert the resource to JSON
```powershell
$CreatePhoneProvisioningJobItemOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

