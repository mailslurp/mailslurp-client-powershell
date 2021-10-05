# CreateInboxForwarderOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Field** | **String** | Field to match against to trigger inbox forwarding for inbound email | [optional] 
**ForwardToRecipients** | **String[]** | Email addresses to forward an email to if it matches the field and match criteria of the forwarder | [optional] 
**Match** | **String** | String or wildcard style match for field specified when evaluating forwarding rules | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateInboxForwarderOptions = Initialize-maislurp-client-powershellCreateInboxForwarderOptions  -Field null `
 -ForwardToRecipients null `
 -Match null
```

- Convert the resource to JSON
```powershell
$CreateInboxForwarderOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

