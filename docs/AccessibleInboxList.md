# AccessibleInboxList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Inboxes** | [**InboxDto[]**](InboxDto) |  | 
**Count** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$AccessibleInboxList = Initialize-maislurp-client-powershellAccessibleInboxList  -Inboxes null `
 -Count null
```

- Convert the resource to JSON
```powershell
$AccessibleInboxList | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

