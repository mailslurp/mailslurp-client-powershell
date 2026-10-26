# TestInboxRulesetSendingOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxId** | **String** |  | [optional] 
**PhoneId** | **String** |  | [optional] 
**Recipient** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$TestInboxRulesetSendingOptions = Initialize-maislurp-client-powershellTestInboxRulesetSendingOptions  -InboxId null `
 -PhoneId null `
 -Recipient null
```

- Convert the resource to JSON
```powershell
$TestInboxRulesetSendingOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

