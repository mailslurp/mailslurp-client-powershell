# OptInConsentOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** |  | 
**CompanyName** | **String** |  | [optional] 
**SendOptInOptions** | [**SendOptInConsentEmailOptions**](SendOptInConsentEmailOptions) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OptInConsentOptions = Initialize-maislurp-client-powershellOptInConsentOptions  -EmailAddress null `
 -CompanyName null `
 -SendOptInOptions null
```

- Convert the resource to JSON
```powershell
$OptInConsentOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

