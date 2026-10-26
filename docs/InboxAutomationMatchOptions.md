# InboxAutomationMatchOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operator** | **String** | Boolean operator used to combine inbox automation match rules. | 
**VarMatches** | [**InboxAutomationMatchOption[]**](InboxAutomationMatchOption) | Leaf match rules in this group. | [optional] 
**Groups** | [**InboxAutomationMatchOptions[]**](InboxAutomationMatchOptions) | Nested child groups. | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxAutomationMatchOptions = Initialize-maislurp-client-powershellInboxAutomationMatchOptions  -Operator null `
 -VarMatches null `
 -Groups null
```

- Convert the resource to JSON
```powershell
$InboxAutomationMatchOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

