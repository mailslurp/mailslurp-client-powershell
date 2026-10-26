# PhoneMessageThreadItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FromPhoneNumber** | **String** |  | 
**ToPhoneNumber** | **String** |  | 
**Body** | **String** |  | 
**Id** | **String** |  | 
**Created** | **System.DateTime** |  | 
**PhoneNumberId** | **String** |  | 
**MessageDirection** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneMessageThreadItemProjection = Initialize-maislurp-client-powershellPhoneMessageThreadItemProjection  -FromPhoneNumber null `
 -ToPhoneNumber null `
 -Body null `
 -Id null `
 -Created null `
 -PhoneNumberId null `
 -MessageDirection null
```

- Convert the resource to JSON
```powershell
$PhoneMessageThreadItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

