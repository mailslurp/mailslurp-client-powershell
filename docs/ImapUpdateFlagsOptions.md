# ImapUpdateFlagsOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operation** | **String** |  | 
**Flags** | **String[]** |  | [optional] 
**UidSet** | **String** |  | [optional] 
**SeqSet** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ImapUpdateFlagsOptions = Initialize-maislurp-client-powershellImapUpdateFlagsOptions  -Operation null `
 -Flags null `
 -UidSet null `
 -SeqSet null
```

- Convert the resource to JSON
```powershell
$ImapUpdateFlagsOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

