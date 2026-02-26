# ValidateEmailAddressListOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddressList** | **String[]** |  | 
**IgnoreOldResults** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ValidateEmailAddressListOptions = Initialize-maislurp-client-powershellValidateEmailAddressListOptions  -EmailAddressList null `
 -IgnoreOldResults null
```

- Convert the resource to JSON
```powershell
$ValidateEmailAddressListOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

