# SendSMTPEnvelopeFromS3Options
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RcptTo** | **String[]** |  | 
**MailFrom** | **String** |  | 
**BucketPath** | [**SmtpMailMessageBucketPath**](SmtpMailMessageBucketPath) |  | 

## Examples

- Prepare the resource
```powershell
$SendSMTPEnvelopeFromS3Options = Initialize-maislurp-client-powershellSendSMTPEnvelopeFromS3Options  -RcptTo null `
 -MailFrom null `
 -BucketPath null
```

- Convert the resource to JSON
```powershell
$SendSMTPEnvelopeFromS3Options | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

