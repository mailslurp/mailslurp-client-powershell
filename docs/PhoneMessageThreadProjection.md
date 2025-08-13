# PhoneMessageThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OtherPhoneNumber** | **String** |  | [optional] 
**LastMessageDirection** | **String** |  | 
**LastBody** | **String** |  | 
**LastCreated** | **System.DateTime** |  | 
**PhoneNumber** | **String** |  | [optional] 
**PhoneNumberId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneMessageThreadProjection = Initialize-maislurp-client-powershellPhoneMessageThreadProjection  -OtherPhoneNumber null `
 -LastMessageDirection null `
 -LastBody null `
 -LastCreated null `
 -PhoneNumber null `
 -PhoneNumberId null
```

- Convert the resource to JSON
```powershell
$PhoneMessageThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

