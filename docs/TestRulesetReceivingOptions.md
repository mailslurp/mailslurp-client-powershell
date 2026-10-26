# TestRulesetReceivingOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxId** | **String** |  | [optional] 
**PhoneId** | **String** |  | [optional] 
**FromSender** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$TestRulesetReceivingOptions = Initialize-maislurp-client-powershellTestRulesetReceivingOptions  -InboxId null `
 -PhoneId null `
 -FromSender null
```

- Convert the resource to JSON
```powershell
$TestRulesetReceivingOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

