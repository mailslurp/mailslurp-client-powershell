# PublicDeviceRenderTestDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**EmailAddress** | **String** |  | 
**Status** | **String** |  | 
**ExpiresAt** | **System.DateTime** |  | 
**Target** | **String** |  | 
**PreviewMode** | **String** |  | 
**SourceFrom** | **String** |  | [optional] 
**SourceSubject** | **String** |  | [optional] 
**SenderDomain** | **String** |  | [optional] 
**RunId** | **String** |  | [optional] 
**ShareUrl** | **String** |  | [optional] 
**RedirectUrl** | **String** |  | [optional] 
**FreeLimitReached** | **Boolean** |  | 
**FailureCode** | **String** |  | [optional] 
**FailureMessage** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PublicDeviceRenderTestDto = Initialize-maislurp-client-powershellPublicDeviceRenderTestDto  -Id null `
 -EmailAddress null `
 -Status null `
 -ExpiresAt null `
 -Target null `
 -PreviewMode null `
 -SourceFrom null `
 -SourceSubject null `
 -SenderDomain null `
 -RunId null `
 -ShareUrl null `
 -RedirectUrl null `
 -FreeLimitReached null `
 -FailureCode null `
 -FailureMessage null
```

- Convert the resource to JSON
```powershell
$PublicDeviceRenderTestDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

