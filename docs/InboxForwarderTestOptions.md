# InboxForwarderTestOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TestValue** | **String** | Simple value to test against the forwarder&#39;s simple field/match rule. Required when emailId is not provided. | [optional] 
**EmailId** | **String** | Optional email ID to evaluate the forwarder using full inbound email content (headers, recipients, and attachments). | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxForwarderTestOptions = Initialize-maislurp-client-powershellInboxForwarderTestOptions  -TestValue null `
 -EmailId null
```

- Convert the resource to JSON
```powershell
$InboxForwarderTestOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

