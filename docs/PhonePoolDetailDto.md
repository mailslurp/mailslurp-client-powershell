# PhonePoolDetailDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**Name** | **String** |  | 
**Description** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**MemberCount** | **Int32** |  | 
**AvailableMemberCount** | **Int32** |  | 
**LeasedMemberCount** | **Int32** |  | 
**Members** | [**PhonePoolMemberDto[]**](PhonePoolMemberDto) |  | 

## Examples

- Prepare the resource
```powershell
$PhonePoolDetailDto = Initialize-maislurp-client-powershellPhonePoolDetailDto  -Id null `
 -UserId null `
 -Name null `
 -Description null `
 -CreatedAt null `
 -UpdatedAt null `
 -MemberCount null `
 -AvailableMemberCount null `
 -LeasedMemberCount null `
 -Members null
```

- Convert the resource to JSON
```powershell
$PhonePoolDetailDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

