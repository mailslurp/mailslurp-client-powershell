# SmtpMailMessageBucketPath
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bucket** | **String** |  | 
**Key** | **String** |  | 
**Sha256** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SmtpMailMessageBucketPath = Initialize-maislurp-client-powershellSmtpMailMessageBucketPath  -Bucket null `
 -Key null `
 -Sha256 null
```

- Convert the resource to JSON
```powershell
$SmtpMailMessageBucketPath | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

