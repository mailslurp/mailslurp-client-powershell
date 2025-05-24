# CreatePhoneNumberOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneCountry** | **String** |  | 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Schedule** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePhoneNumberOptions = Initialize-maislurp-client-powershellCreatePhoneNumberOptions  -PhoneCountry null `
 -Name null `
 -Description null `
 -Schedule null
```

- Convert the resource to JSON
```powershell
$CreatePhoneNumberOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

