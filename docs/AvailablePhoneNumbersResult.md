# AvailablePhoneNumbersResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **Int32** |  | 
**Items** | [**AvailablePhoneNumberDto[]**](AvailablePhoneNumberDto) |  | 
**Warning** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AvailablePhoneNumbersResult = Initialize-maislurp-client-powershellAvailablePhoneNumbersResult  -Count null `
 -Items null `
 -Warning null
```

- Convert the resource to JSON
```powershell
$AvailablePhoneNumbersResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

