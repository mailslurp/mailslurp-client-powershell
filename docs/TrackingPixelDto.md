# TrackingPixelDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Seen** | **Boolean** |  | [optional] 
**Recipient** | **String** |  | [optional] 
**Html** | **String** |  | [optional] 
**Url** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**SentEmailId** | **String** |  | [optional] 
**SeenAt** | **System.DateTime** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 

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

