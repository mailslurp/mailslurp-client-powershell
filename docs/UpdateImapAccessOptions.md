# UpdateImapAccessOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ImapUsername** | **String** | IMAP username for login | [optional] 
**ImapPassword** | **String** | IMAP password for login | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateImapAccessOptions = Initialize-maislurp-client-powershellUpdateImapAccessOptions  -ImapUsername null `
 -ImapPassword null
```

- Convert the resource to JSON
```powershell
$UpdateImapAccessOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

