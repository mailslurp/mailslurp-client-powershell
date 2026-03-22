# ValidateEmailAddressListResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ValidEmailAddresses** | **String[]** |  | 
**InvalidEmailAddresses** | **String[]** |  | 
**ResultMapEmailAddressIsValid** | **System.Collections.Hashtable** |  | 

## Examples

- Prepare the resource
```powershell
$ValidateEmailAddressListResult = Initialize-maislurp-client-powershellValidateEmailAddressListResult  -ValidEmailAddresses null `
 -InvalidEmailAddresses null `
 -ResultMapEmailAddressIsValid null
```

- Convert the resource to JSON
```powershell
$ValidateEmailAddressListResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

