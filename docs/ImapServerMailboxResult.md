# ImapServerMailboxResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Success** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$ImapServerMailboxResult = Initialize-maislurp-client-powershellImapServerMailboxResult  -Message null `
 -Success null
```

- Convert the resource to JSON
```powershell
$ImapServerMailboxResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

