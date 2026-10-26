# PhonePoolMemberDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**PoolId** | **String** |  | 
**PhoneNumberId** | **String** |  | 
**PhoneNumber** | **String** |  | 
**PhoneCountry** | **String** |  | 
**PhoneName** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**ActiveLease** | [**PhonePoolLeaseDto**](PhonePoolLeaseDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PhonePoolMemberDto = Initialize-maislurp-client-powershellPhonePoolMemberDto  -Id null `
 -PoolId null `
 -PhoneNumberId null `
 -PhoneNumber null `
 -PhoneCountry null `
 -PhoneName null `
 -CreatedAt null `
 -ActiveLease null
```

- Convert the resource to JSON
```powershell
$PhonePoolMemberDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

