# SendSMTPEnvelopeOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RcptTo** | **String[]** |  | 
**MailFrom** | **String** |  | 
**VarData** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SendSMTPEnvelopeOptions = Initialize-maislurp-client-powershellSendSMTPEnvelopeOptions  -RcptTo null `
 -MailFrom null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$SendSMTPEnvelopeOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

