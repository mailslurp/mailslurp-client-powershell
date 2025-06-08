# PhoneMessageThreadItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | **String** |  | 
**PhoneNumberId** | **String** |  | 
**Created** | **System.DateTime** |  | 
**FromPhoneNumber** | **String** |  | 
**ToPhoneNumber** | **String** |  | 
**MessageDirection** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneMessageThreadItemProjection = Initialize-maislurp-client-powershellPhoneMessageThreadItemProjection  -Body null `
 -PhoneNumberId null `
 -Created null `
 -FromPhoneNumber null `
 -ToPhoneNumber null `
 -MessageDirection null
```

- Convert the resource to JSON
```powershell
$PhoneMessageThreadItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

