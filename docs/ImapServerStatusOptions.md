# ImapServerStatusOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**StatusItems** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ImapServerStatusOptions = Initialize-maislurp-client-powershellImapServerStatusOptions  -Name null `
 -StatusItems null
```

- Convert the resource to JSON
```powershell
$ImapServerStatusOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

