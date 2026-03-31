# PhoneMessageThreadItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Body** | **String** |  | 
**Created** | **System.DateTime** |  | 
**PhoneNumberId** | **String** |  | 
**MessageDirection** | **String** |  | 
**FromPhoneNumber** | **String** |  | 
**ToPhoneNumber** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneMessageThreadItemProjection = Initialize-maislurp-client-powershellPhoneMessageThreadItemProjection  -Id null `
 -Body null `
 -Created null `
 -PhoneNumberId null `
 -MessageDirection null `
 -FromPhoneNumber null `
 -ToPhoneNumber null
```

- Convert the resource to JSON
```powershell
$PhoneMessageThreadItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

