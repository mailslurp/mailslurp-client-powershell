# CreateInboxForwarderOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Field** | **String** |  | 
**Match** | **String** |  | 
**ForwardToRecipients** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$CreateInboxForwarderOptions = Initialize-maislurp-client-powershellCreateInboxForwarderOptions  -Field null `
 -Match null `
 -ForwardToRecipients null
```

- Convert the resource to JSON
```powershell
$CreateInboxForwarderOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

