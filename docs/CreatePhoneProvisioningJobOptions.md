# CreatePhoneProvisioningJobOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneCountry** | **String** |  | 
**PhoneVariant** | **String** |  | [optional] 
**Items** | [**CreatePhoneProvisioningJobItemOptions[]**](CreatePhoneProvisioningJobItemOptions) |  | 

## Examples

- Prepare the resource
```powershell
$CreatePhoneProvisioningJobOptions = Initialize-maislurp-client-powershellCreatePhoneProvisioningJobOptions  -PhoneCountry null `
 -PhoneVariant null `
 -Items null
```

- Convert the resource to JSON
```powershell
$CreatePhoneProvisioningJobOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

