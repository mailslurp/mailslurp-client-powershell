# ImapFlagOperationOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FlagOperation** | **String** |  | 
**Flags** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$ImapFlagOperationOptions = Initialize-maislurp-client-powershellImapFlagOperationOptions  -FlagOperation null `
 -Flags null
```

- Convert the resource to JSON
```powershell
$ImapFlagOperationOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

