# TestNewInboxForwarderOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxForwarderTestOptions** | [**InboxForwarderTestOptions**](InboxForwarderTestOptions) |  | 
**CreateInboxForwarderOptions** | [**CreateInboxForwarderOptions**](CreateInboxForwarderOptions) |  | 

## Examples

- Prepare the resource
```powershell
$TestNewInboxForwarderOptions = Initialize-maislurp-client-powershellTestNewInboxForwarderOptions  -InboxForwarderTestOptions null `
 -CreateInboxForwarderOptions null
```

- Convert the resource to JSON
```powershell
$TestNewInboxForwarderOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

