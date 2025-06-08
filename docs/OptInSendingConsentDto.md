# OptInSendingConsentDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VerificationCodeSent** | **Boolean** |  | 
**UserHasConsented** | **Boolean** |  | 
**CanSend** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$OptInSendingConsentDto = Initialize-maislurp-client-powershellOptInSendingConsentDto  -VerificationCodeSent null `
 -UserHasConsented null `
 -CanSend null
```

- Convert the resource to JSON
```powershell
$OptInSendingConsentDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

