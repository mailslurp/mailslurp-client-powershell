# SmsMatchOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Field** | **String** | Fields of an SMS object that can be used to filter results | 
**Should** | **String** | How the value of the email field specified should be compared to the value given in the match options. | 
**Value** | **String** | The value you wish to compare with the value of the field specified using the &#x60;should&#x60; value passed. For example &#x60;BODY&#x60; should &#x60;CONTAIN&#x60; a value passed. | 

## Examples

- Prepare the resource
```powershell
$SmsMatchOption = Initialize-maislurp-client-powershellSmsMatchOption  -Field null `
 -Should null `
 -Value null
```

- Convert the resource to JSON
```powershell
$SmsMatchOption | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

