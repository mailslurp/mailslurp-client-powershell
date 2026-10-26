# UserDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ApiKey** | **String** | Deprecate api key use entity instead | 
**EmailAddress** | **String** |  | 
**EmailAddressMd5** | **String** |  | 
**Created** | **System.DateTime** |  | [optional] 
**UserType** | **String** |  | [optional] 
**Organization** | **String** | Does user belong to an organization | [optional] 
**Verified** | **String** | Has user accepted an organization invite | [optional] 
**HasPassword** | **Boolean** |  | 
**IsFrozen** | **Boolean** |  | 
**FrozenMessage** | **String** |  | [optional] 
**AddNewContacts** | **Boolean** |  | [optional] 
**SsoProvider** | **String** |  | [optional] 
**CustomerId** | **String** |  | [optional] 
**HasOnboarded** | **Boolean** |  | [optional] 
**ImapUsername** | **String** |  | [optional] 
**ImapPassword** | **String** |  | [optional] 
**SmtpUsername** | **String** |  | [optional] 
**SmtpPassword** | **String** |  | [optional] 
**ChargePending** | **Boolean** |  | [optional] 
**EnableSms** | **Boolean** |  | [optional] 
**VendorEmailAddress** | **String** |  | [optional] 
**Unsubscribed** | **Boolean** |  | [optional] 
**ApiAccessToken** | [**TemporaryAccessKeyDto**](TemporaryAccessKeyDto) |  | [optional] 
**PhoneNumber** | **String** |  | [optional] 
**VerifiedPhone** | **String** | Has user accepted an organization invite | [optional] 
**AccountRegion** | **String** | Default account region | [optional] 
**Name** | **String** | User display name | [optional] 
**AccessLinkSendResult** | [**AccessLinkSendResultDto**](AccessLinkSendResultDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserDto = Initialize-maislurp-client-powershellUserDto  -Id null `
 -ApiKey null `
 -EmailAddress null `
 -EmailAddressMd5 null `
 -Created null `
 -UserType null `
 -Organization null `
 -Verified null `
 -HasPassword null `
 -IsFrozen null `
 -FrozenMessage null `
 -AddNewContacts null `
 -SsoProvider null `
 -CustomerId null `
 -HasOnboarded null `
 -ImapUsername null `
 -ImapPassword null `
 -SmtpUsername null `
 -SmtpPassword null `
 -ChargePending null `
 -EnableSms null `
 -VendorEmailAddress null `
 -Unsubscribed null `
 -ApiAccessToken null `
 -PhoneNumber null `
 -VerifiedPhone null `
 -AccountRegion null `
 -Name null `
 -AccessLinkSendResult null
```

- Convert the resource to JSON
```powershell
$UserDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

