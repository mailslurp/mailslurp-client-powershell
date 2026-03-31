# PhoneProvisioningJobDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**PhoneCountry** | **String** |  | 
**PhoneVariant** | **String** |  | [optional] 
**Status** | **String** |  | 
**RequestedCount** | **Int32** |  | 
**AttemptedCount** | **Int32** |  | 
**SucceededCount** | **Int32** |  | 
**FailedCount** | **Int32** |  | 
**UnavailableCount** | **Int32** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**Items** | [**PhoneProvisioningJobItemDto[]**](PhoneProvisioningJobItemDto) |  | 

## Examples

- Prepare the resource
```powershell
$PhoneProvisioningJobDto = Initialize-maislurp-client-powershellPhoneProvisioningJobDto  -Id null `
 -UserId null `
 -PhoneCountry null `
 -PhoneVariant null `
 -Status null `
 -RequestedCount null `
 -AttemptedCount null `
 -SucceededCount null `
 -FailedCount null `
 -UnavailableCount null `
 -CreatedAt null `
 -UpdatedAt null `
 -Items null
```

- Convert the resource to JSON
```powershell
$PhoneProvisioningJobDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

