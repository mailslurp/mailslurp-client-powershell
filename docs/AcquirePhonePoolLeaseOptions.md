# AcquirePhonePoolLeaseOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LeaseName** | **String** |  | [optional] 
**LeaseOwner** | **String** |  | [optional] 
**LeaseDurationMillis** | **Int64** |  | [optional] 
**AcquireTimeoutMillis** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AcquirePhonePoolLeaseOptions = Initialize-maislurp-client-powershellAcquirePhonePoolLeaseOptions  -LeaseName null `
 -LeaseOwner null `
 -LeaseDurationMillis null `
 -AcquireTimeoutMillis null
```

- Convert the resource to JSON
```powershell
$AcquirePhonePoolLeaseOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

