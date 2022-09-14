# TrackingPixelProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**UserId** | **String** |  | 
**SentEmailId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Seen** | **Boolean** |  | 
**Recipient** | **String** |  | [optional] 
**SeenAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TrackingPixelProjection = Initialize-maislurp-client-powershellTrackingPixelProjection  -Name null `
 -Id null `
 -InboxId null `
 -UserId null `
 -SentEmailId null `
 -CreatedAt null `
 -Seen null `
 -Recipient null `
 -SeenAt null
```

- Convert the resource to JSON
```powershell
$TrackingPixelProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

