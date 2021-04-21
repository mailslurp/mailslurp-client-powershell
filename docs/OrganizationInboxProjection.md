# OrganizationInboxProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** | When the inbox was created. Time stamps are in ISO DateTime Format &#x60;yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX&#x60; e.g. &#x60;2000-10-31T01:30:00.000-05:00&#x60;. | [optional] 
**EmailAddress** | **String** | The inbox&#39;s email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so &#x60;+123&#x60; additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. | [optional] 
**Favourite** | **Boolean** | Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering | [optional] 
**Id** | **String** | ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods &#x60;waitForLatestEmail&#x60; and &#x60;getEmails&#x60; methods respectively. Inboxes can be used with aliases to forward emails automatically. | [optional] 
**Name** | **String** | Name of the inbox. Displayed in the dashboard for easier search | [optional] 
**ReadOnly** | **Boolean** | Is the inbox readOnly for the caller. Read only means can not be deleted or modified. | [optional] 
**Tags** | **String[]** | Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. | [optional] 
**TeamAccess** | **Boolean** | Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. | [optional] 

## Examples

- Prepare the resource
```powershell
$OrganizationInboxProjection = Initialize-maislurp-client-powershellOrganizationInboxProjection  -CreatedAt null `
 -EmailAddress null `
 -Favourite null `
 -Id null `
 -Name null `
 -ReadOnly null `
 -Tags null `
 -TeamAccess null
```

- Convert the resource to JSON
```powershell
$OrganizationInboxProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

