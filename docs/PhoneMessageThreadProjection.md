# PhoneMessageThreadProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneNumber** | **String** |  | [optional] 
**PhoneNumberId** | **String** |  | 
**OtherPhoneNumber** | **String** |  | [optional] 
**LastMessageDirection** | **String** |  | 
**LastBody** | **String** |  | 
**LastCreated** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$PhoneMessageThreadProjection = Initialize-maislurp-client-powershellPhoneMessageThreadProjection  -PhoneNumber null `
 -PhoneNumberId null `
 -OtherPhoneNumber null `
 -LastMessageDirection null `
 -LastBody null `
 -LastCreated null
```

- Convert the resource to JSON
```powershell
$PhoneMessageThreadProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

