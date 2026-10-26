# SubscriptionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**UserId** | **String** |  | 
**CustomerId** | **String** |  | [optional] 
**SubscriptionId** | **String** |  | [optional] 
**Currency** | **String** |  | [optional] 
**Cost** | **Int32** |  | [optional] 
**IsDecimalLess** | **Boolean** |  | 
**SubscriptionType** | **String** |  | 
**SubscriptionSchedule** | **String** |  | 
**MonthlyInboxes** | **Int32** |  | 
**MonthlyReceive** | **Int32** |  | 
**OauthConnections** | **Int32** |  | 
**StorageBytes** | **Int64** |  | 
**TotalInboxes** | **Int32** |  | 
**PhoneNumbers** | **Int32** |  | 
**PhoneProvisionRequestLimit** | **Int32** |  | 
**MonthlySend** | **Int32** |  | 
**Domains** | **Int32** |  | 
**Members** | **Int32** |  | 
**Aliases** | **Int32** |  | 
**Threads** | **Int32** |  | 
**Recipients** | **Int32** |  | 
**Attachments** | **Boolean** |  | 
**Bulk** | **Boolean** |  | 
**PermanentInbox** | **Boolean** |  | 
**Contacts** | **Boolean** |  | 
**Webhooks** | **Boolean** |  | 
**Password** | **Boolean** |  | 
**InboxRulesets** | **Boolean** |  | 
**Zapier** | **Boolean** |  | 
**TrackingPixels** | **Boolean** |  | 
**InboxForwarders** | **Boolean** |  | 
**InboxRepliers** | **Boolean** |  | 
**AttachmentAutomations** | **Boolean** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**MonthlyGetMailServerRecords** | **Int32** |  | 
**MonthlyVerifyEmailAddress** | **Int32** |  | 
**Metered** | **Boolean** |  | 
**MaxUniqueRecipients** | **Int32** |  | 
**ExternalPlanId** | **String** |  | [optional] 
**ExternalValidationPlanId** | **String** | Use validation entity | [optional] 
**ExternalValidationSubscriptionItemId** | **String** | Use validation entity | [optional] 
**SendWithQueue** | **Boolean** |  | [optional] 
**TrialDays** | **Int32** |  | [optional] 
**CancelAt** | **System.DateTime** |  | [optional] 
**TrialEnd** | **System.DateTime** |  | [optional] 
**TrialStart** | **System.DateTime** |  | [optional] 
**TrialAdjustmentReason** | **String** |  | [optional] 
**TrialAdjustedAt** | **System.DateTime** |  | [optional] 
**SamlSSO** | **Boolean** |  | [optional] 
**OidcSSO** | **Boolean** |  | [optional] 
**ScimProvisioning** | **Boolean** |  | [optional] 
**DemoDaysRemaining** | **Int32** |  | [optional] 
**Organizations** | **Int32** |  | [optional] 
**EmailFeatureCheck** | **Boolean** |  | [optional] 
**Backup** | **Boolean** |  | [optional] 
**Screenshots** | **Boolean** |  | [optional] 
**DevicePreviews** | **Boolean** |  | [optional] 
**UserPermissions** | **Boolean** |  | [optional] 
**Environments** | **Boolean** |  | [optional] 
**ImportExport** | **Boolean** |  | [optional] 
**AuditLogs** | **Boolean** |  | [optional] 
**DeliverabilityTest** | **Boolean** |  | [optional] 
**EmailAudit** | **Boolean** |  | [optional] 
**InboxWarmUp** | **Boolean** |  | [optional] 
**WarmupPremiumSeedAccess** | **Boolean** |  | [optional] 
**DomainMonitor** | **Boolean** |  | [optional] 
**CampaignProbe** | **Boolean** |  | [optional] 
**VirtualTotpDevices** | **Boolean** |  | [optional] 
**CurrentPeriodEnd** | **System.DateTime** |  | 
**CurrentPeriodStart** | **System.DateTime** |  | 
**SubscriptionStatus** | **String** |  | [optional] 
**SubscriptionStatusIsBad** | **Boolean** |  | 
**DailyReceive** | **Int32** |  | 
**DailySend** | **Int32** |  | 
**MaxEmailSizeMb** | **Int32** |  | 
**AiTransformers** | **Boolean** |  | 
**GmailInboxConnection** | **Boolean** |  | 
**AiDestinationSheets** | **Boolean** |  | 
**GmailInboxConnectionLimit** | **Int32** |  | 
**PermitsExternalSend** | **Boolean** |  | [optional] 
**TotalPermanentInboxes** | **Int32** |  | [optional] 
**MonthlyTemporaryInboxes** | **Int32** |  | [optional] 
**Agents** | **Int32** | Maximum active API or MCP agent connections. Null identifies a legacy unlimited subscription. | [optional] 
**MaxInboxPlacementSeedAddressesPerTest** | **Int32** | Maximum seed inbox addresses assigned to one inbox placement test. | 
**MaxAutomatedInboxPlacementSchedules** | **Int32** | Maximum non-deleted automated inbox placement schedules. Paused schedules count; deleted schedules release capacity. | 
**IncludedWarmupSenderSeats** | **Int32** | Warmup sender seats included by the base subscription before paid add-ons. | 
**IncludedMonthlyWarmupCreditsPerSender** | **Int32** |  | 
**WarmupControlledRecipientCreditWeight** | **Int32** |  | 
**WarmupPremiumRecipientCreditWeight** | **Int32** |  | 
**LoadTest** | **Boolean** |  | [optional] 
**CostMajor** | **Decimal** | Subscription cost in major currency units for analytics and conversion value reporting. | [optional] 

## Examples

- Prepare the resource
```powershell
$SubscriptionDto = Initialize-maislurp-client-powershellSubscriptionDto  -Id null `
 -UserId null `
 -CustomerId null `
 -SubscriptionId null `
 -Currency null `
 -Cost null `
 -IsDecimalLess null `
 -SubscriptionType null `
 -SubscriptionSchedule null `
 -MonthlyInboxes null `
 -MonthlyReceive null `
 -OauthConnections null `
 -StorageBytes null `
 -TotalInboxes null `
 -PhoneNumbers null `
 -PhoneProvisionRequestLimit null `
 -MonthlySend null `
 -Domains null `
 -Members null `
 -Aliases null `
 -Threads null `
 -Recipients null `
 -Attachments null `
 -Bulk null `
 -PermanentInbox null `
 -Contacts null `
 -Webhooks null `
 -Password null `
 -InboxRulesets null `
 -Zapier null `
 -TrackingPixels null `
 -InboxForwarders null `
 -InboxRepliers null `
 -AttachmentAutomations null `
 -CreatedAt null `
 -UpdatedAt null `
 -MonthlyGetMailServerRecords null `
 -MonthlyVerifyEmailAddress null `
 -Metered null `
 -MaxUniqueRecipients null `
 -ExternalPlanId null `
 -ExternalValidationPlanId null `
 -ExternalValidationSubscriptionItemId null `
 -SendWithQueue null `
 -TrialDays null `
 -CancelAt null `
 -TrialEnd null `
 -TrialStart null `
 -TrialAdjustmentReason null `
 -TrialAdjustedAt null `
 -SamlSSO null `
 -OidcSSO null `
 -ScimProvisioning null `
 -DemoDaysRemaining null `
 -Organizations null `
 -EmailFeatureCheck null `
 -Backup null `
 -Screenshots null `
 -DevicePreviews null `
 -UserPermissions null `
 -Environments null `
 -ImportExport null `
 -AuditLogs null `
 -DeliverabilityTest null `
 -EmailAudit null `
 -InboxWarmUp null `
 -WarmupPremiumSeedAccess null `
 -DomainMonitor null `
 -CampaignProbe null `
 -VirtualTotpDevices null `
 -CurrentPeriodEnd null `
 -CurrentPeriodStart null `
 -SubscriptionStatus null `
 -SubscriptionStatusIsBad null `
 -DailyReceive null `
 -DailySend null `
 -MaxEmailSizeMb null `
 -AiTransformers null `
 -GmailInboxConnection null `
 -AiDestinationSheets null `
 -GmailInboxConnectionLimit null `
 -PermitsExternalSend null `
 -TotalPermanentInboxes null `
 -MonthlyTemporaryInboxes null `
 -Agents null `
 -MaxInboxPlacementSeedAddressesPerTest null `
 -MaxAutomatedInboxPlacementSchedules null `
 -IncludedWarmupSenderSeats null `
 -IncludedMonthlyWarmupCreditsPerSender null `
 -WarmupControlledRecipientCreditWeight null `
 -WarmupPremiumRecipientCreditWeight null `
 -LoadTest null `
 -CostMajor null
```

- Convert the resource to JSON
```powershell
$SubscriptionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

