# CreateInboxDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** | A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as &#x60;123@mailslurp.com&#x60;. If you use the &#x60;useDomainPool&#x60; option when the email address is null it will generate an email address with a more varied domain ending such as &#x60;123@mailslurp.info&#x60; or &#x60;123@mailslurp.biz&#x60;. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so &#x60;SMTP&#x60; inboxes will only work with &#x60;SMTP&#x60; type domains. Avoid &#x60;SMTP&#x60; inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. | [optional] 
**DomainName** | **String** | FQDN domain name for the domain you have verified. Will be appended with a randomly assigned recipient name. Use the &#x60;emailAddress&#x60; option instead to specify the full custom inbox. | [optional] 
**DomainId** | **String** | ID of custom domain to use for email address. | [optional] 
**Name** | **String** | Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails. | [optional] 
**Description** | **String** | Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with | [optional] 
**UseDomainPool** | **Boolean** | Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default &#x60;@mailslurp.com&#x60; email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in &#x60;@mailslurp.{world,info,xyz,...}&#x60; . This means a TLD is randomly selecting from a list of &#x60;.biz&#x60;, &#x60;.info&#x60;, &#x60;.xyz&#x60; etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of &#x60;@mailslurp.com&#x60; or custom email address provided by the emailAddress field. Note this feature is only available for &#x60;HTTP&#x60; inbox types. | [optional] 
**Tags** | **String[]** | Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. | [optional] 
**ExpiresAt** | **System.DateTime** | Optional inbox expiration date. If null then this inbox is permanent and the emails in it won&#39;t be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX. | [optional] 
**Favourite** | **Boolean** | Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering | [optional] 
**ExpiresIn** | **Int64** | Number of milliseconds that inbox should exist for | [optional] 
**AllowTeamAccess** | **Boolean** | DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization. | [optional] 
**InboxType** | **String** | Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send). | [optional] 
**VirtualInbox** | **Boolean** | Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending. | [optional] 
**UseShortAddress** | **Boolean** | Use a shorter email address under 31 characters | [optional] 
**Prefix** | **String** | Prefix to add before the email address for easier labelling or identification. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateInboxDto = Initialize-maislurp-client-powershellCreateInboxDto  -EmailAddress null `
 -DomainName null `
 -DomainId null `
 -Name null `
 -Description null `
 -UseDomainPool null `
 -Tags null `
 -ExpiresAt null `
 -Favourite null `
 -ExpiresIn null `
 -AllowTeamAccess null `
 -InboxType null `
 -VirtualInbox null `
 -UseShortAddress null `
 -Prefix null
```

- Convert the resource to JSON
```powershell
$CreateInboxDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

