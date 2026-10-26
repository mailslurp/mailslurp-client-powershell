# EmailWarmupUsageSummaryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BillingMonth** | **System.DateTime** |  | 
**BillingMonthEndExclusive** | **System.DateTime** |  | 
**IncludedSenderSeats** | **Int32** |  | 
**PurchasedSenderSeats** | **Int32** |  | 
**TotalSenderCapacity** | **Int32** |  | 
**ActiveSenderAssignments** | **Int64** |  | 
**IncludedCreditsPerSender** | **Int32** |  | 
**IncludedCreditsTotal** | **Int64** |  | 
**IncludedCreditsConsumed** | **Int64** |  | 
**IncludedCreditsRemaining** | **Int64** |  | 
**ReservedCredits** | **Int64** |  | 
**AcceptedCredits** | **Int64** |  | 
**AmbiguousCredits** | **Int64** |  | 
**BillableAcceptedCredits** | **Int64** |  | 
**BillablePendingCredits** | **Int64** |  | 
**ControlledRecipientCreditWeight** | **Int32** |  | 
**PremiumRecipientCreditWeight** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$EmailWarmupUsageSummaryDto = Initialize-maislurp-client-powershellEmailWarmupUsageSummaryDto  -BillingMonth null `
 -BillingMonthEndExclusive null `
 -IncludedSenderSeats null `
 -PurchasedSenderSeats null `
 -TotalSenderCapacity null `
 -ActiveSenderAssignments null `
 -IncludedCreditsPerSender null `
 -IncludedCreditsTotal null `
 -IncludedCreditsConsumed null `
 -IncludedCreditsRemaining null `
 -ReservedCredits null `
 -AcceptedCredits null `
 -AmbiguousCredits null `
 -BillableAcceptedCredits null `
 -BillablePendingCredits null `
 -ControlledRecipientCreditWeight null `
 -PremiumRecipientCreditWeight null
```

- Convert the resource to JSON
```powershell
$EmailWarmupUsageSummaryDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

