# TestSmtpServerOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** | SMTP host name or IP address | 
**Port** | **Int32** |  | 
**UseStartTls** | **Boolean** |  | 
**Username** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**To** | **String** |  | [optional] 
**CaptchaToken** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TestSmtpServerOptions = Initialize-maislurp-client-powershellTestSmtpServerOptions  -VarHost smtp.example.com `
 -Port null `
 -UseStartTls null `
 -Username null `
 -Password null `
 -VarFrom null `
 -To null `
 -CaptchaToken null
```

- Convert the resource to JSON
```powershell
$TestSmtpServerOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

