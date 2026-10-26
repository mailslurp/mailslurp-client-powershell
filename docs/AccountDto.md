# AccountDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**User** | [**UserDto**](UserDto) |  | 
**Subscription** | [**SubscriptionDto**](SubscriptionDto) |  | [optional] 
**Addons** | **String[]** |  | [optional] 
**IntercomHash** | **String** | disabled | [optional] 
**ChurnkeyHash** | **String** | disabled | [optional] 
**CurrentPeriod** | [**CurrentPeriodDto**](CurrentPeriodDto) |  | 
**RequiresVerification** | **Boolean** |  | 
**RequiredVerificationTypes** | **String[]** |  | [optional] 
**DefaultCurrency** | **String** |  | 
**DefaultSchedule** | **String** |  | 
**HasBadSubscriptionItemStatuses** | **Boolean** |  | [optional] 
**TrialsEnabled** | **Boolean** |  | 
**HasAnyActiveTrialSubscription** | **Boolean** |  | 
**CanEndTrial** | **Boolean** |  | 
**FreeAccountExpiresInDays** | **Int32** |  | [optional] 
**FreeAccountExpired** | **Boolean** |  | 
**FreeAccountEvaluationDenied** | **Boolean** |  | 
**FreeAccountEvaluationDeniedReason** | **String** |  | [optional] 
**FreeAccountEvaluationDeniedAllowTrial** | **Boolean** |  | 
**FreeAccountMode** | **String** |  | 
**RequiresTermsAndConditionsAgreement** | **Boolean** |  | [optional] 
**EnforceSendingAgreement** | **Boolean** |  | 
**AdminSendPause** | [**AdminSendPauseDto**](AdminSendPauseDto) |  | [optional] 
**OrganizationName** | **String** |  | [optional] 
**OrganizationSlug** | **String** |  | [optional] 
**OrganizationBrandColor** | **String** |  | [optional] 
**OrganizationLogoUrl** | **String** |  | [optional] 
**UserPermissionRole** | **String** |  | [optional] 
**EnvironmentAccounts** | [**EnvironmentAccountsDto**](EnvironmentAccountsDto) |  | [optional] 
**DomainPlanQuantity** | **Int32** |  | 
**AssignedDomainCount** | **Int32** |  | 
**EffectiveDomainLimit** | **Int32** |  | [optional] 
**RequiresDashboardOnboardingV2** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$AccountDto = Initialize-maislurp-client-powershellAccountDto  -User null `
 -Subscription null `
 -Addons null `
 -IntercomHash null `
 -ChurnkeyHash null `
 -CurrentPeriod null `
 -RequiresVerification null `
 -RequiredVerificationTypes null `
 -DefaultCurrency null `
 -DefaultSchedule null `
 -HasBadSubscriptionItemStatuses null `
 -TrialsEnabled null `
 -HasAnyActiveTrialSubscription null `
 -CanEndTrial null `
 -FreeAccountExpiresInDays null `
 -FreeAccountExpired null `
 -FreeAccountEvaluationDenied null `
 -FreeAccountEvaluationDeniedReason null `
 -FreeAccountEvaluationDeniedAllowTrial null `
 -FreeAccountMode null `
 -RequiresTermsAndConditionsAgreement null `
 -EnforceSendingAgreement null `
 -AdminSendPause null `
 -OrganizationName null `
 -OrganizationSlug null `
 -OrganizationBrandColor null `
 -OrganizationLogoUrl null `
 -UserPermissionRole null `
 -EnvironmentAccounts null `
 -DomainPlanQuantity null `
 -AssignedDomainCount null `
 -EffectiveDomainLimit null `
 -RequiresDashboardOnboardingV2 null
```

- Convert the resource to JSON
```powershell
$AccountDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

