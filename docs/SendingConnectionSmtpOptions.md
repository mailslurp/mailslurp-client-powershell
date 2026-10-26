# SendingConnectionSmtpOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** |  | 
**Port** | **Int32** |  | 
**Security** | **String** |  | 
**Username** | **String** |  | 
**Password** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SendingConnectionSmtpOptions = Initialize-maislurp-client-powershellSendingConnectionSmtpOptions  -VarHost null `
 -Port null `
 -Security null `
 -Username null `
 -Password null
```

- Convert the resource to JSON
```powershell
$SendingConnectionSmtpOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

