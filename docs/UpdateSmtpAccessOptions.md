# UpdateSmtpAccessOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SmtpUsername** | **String** | SMTP username for login | [optional] 
**SmtpPassword** | **String** | SMTP password for login | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateSmtpAccessOptions = Initialize-maislurp-client-powershellUpdateSmtpAccessOptions  -SmtpUsername null `
 -SmtpPassword null
```

- Convert the resource to JSON
```powershell
$UpdateSmtpAccessOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

