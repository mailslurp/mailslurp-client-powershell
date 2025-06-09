# PhoneMessageThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LastBody** | **String** |  | 
**PhoneNumber** | **String** |  | 
**PhoneNumberId** | **String** |  | 
**OtherPhoneNumber** | **String** |  | 
**LastMessageDirection** | **String** |  | 
**LastCreated** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneMessageThreadProjection = Initialize-maislurp-client-powershellPhoneMessageThreadProjection  -LastBody null `
 -PhoneNumber null `
 -PhoneNumberId null `
 -OtherPhoneNumber null `
 -LastMessageDirection null `
 -LastCreated null
```

- Convert the resource to JSON
```powershell
$PhoneMessageThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

