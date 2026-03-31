# InboxAutomationMatchOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Field** | **String** | Supported fields for inbox forwarder and replier automation matching. | 
**Should** | **String** | Comparison mode for inbox automation matching. | 
**Value** | **String** | Pattern or value to compare against the selected field. | 

## Examples

- Prepare the resource
```powershell
$InboxAutomationMatchOption = Initialize-maislurp-client-powershellInboxAutomationMatchOption  -Field null `
 -Should null `
 -Value null
```

- Convert the resource to JSON
```powershell
$InboxAutomationMatchOption | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

