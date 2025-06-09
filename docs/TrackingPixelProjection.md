# TrackingPixelProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxId** | **String** |  | [optional] 
**UserId** | **String** |  | 
**SentEmailId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Recipient** | **String** |  | [optional] 
**Seen** | **Boolean** |  | 
**SeenAt** | **System.DateTime** |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$TrackingPixelProjection = Initialize-maislurp-client-powershellTrackingPixelProjection  -InboxId null `
 -UserId null `
 -SentEmailId null `
 -CreatedAt null `
 -Recipient null `
 -Seen null `
 -SeenAt null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$TrackingPixelProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

