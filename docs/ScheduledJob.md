# ScheduledJob
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**JobId** | **String** |  | 
**GroupId** | **String** |  | 
**TriggerId** | **String** |  | 
**Status** | **String** |  | 
**SendAtTimestamp** | **System.DateTime** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$ScheduledJob = Initialize-maislurp-client-powershellScheduledJob  -Id null `
 -UserId null `
 -InboxId null `
 -JobId null `
 -GroupId null `
 -TriggerId null `
 -Status null `
 -SendAtTimestamp null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$ScheduledJob | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

