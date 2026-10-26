# TrackingPixelDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Seen** | **Boolean** |  | 
**Recipient** | **String** |  | [optional] 
**Html** | **String** |  | 
**Url** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**SentEmailId** | **String** |  | [optional] 
**SeenAt** | **System.DateTime** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$TrackingPixelDto = Initialize-maislurp-client-powershellTrackingPixelDto  -Id null `
 -Seen null `
 -Recipient null `
 -Html null `
 -Url null `
 -InboxId null `
 -SentEmailId null `
 -SeenAt null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$TrackingPixelDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

