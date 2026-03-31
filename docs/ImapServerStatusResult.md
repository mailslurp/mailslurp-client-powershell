# ImapServerStatusResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Result** | [**ImapMailboxStatus**](ImapMailboxStatus) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ImapServerStatusResult = Initialize-maislurp-client-powershellImapServerStatusResult  -Result null
```

- Convert the resource to JSON
```powershell
$ImapServerStatusResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

