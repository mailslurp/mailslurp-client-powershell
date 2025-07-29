# PhoneMessageThreadItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | **String** |  | 
**PhoneNumberId** | **String** |  | 
**Created** | **System.DateTime** |  | 
**MessageDirection** | **String** |  | 
**ToPhoneNumber** | **String** |  | 
**FromPhoneNumber** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneMessageThreadItemProjection = Initialize-maislurp-client-powershellPhoneMessageThreadItemProjection  -Body null `
 -PhoneNumberId null `
 -Created null `
 -MessageDirection null `
 -ToPhoneNumber null `
 -FromPhoneNumber null
```

- Convert the resource to JSON
```powershell
$PhoneMessageThreadItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

