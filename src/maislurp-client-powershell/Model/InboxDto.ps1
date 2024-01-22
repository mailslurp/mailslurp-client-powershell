#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Representation of a MailSlurp inbox. An inbox has an ID and a real email address. Emails can be sent to or from this email address. Inboxes are either `SMTP` or `HTTP` mailboxes. The default, `HTTP` inboxes, use AWS SES to process emails and are best suited as test email accounts and do not support IMAP or POP3. `SMTP` inboxes use a custom mail server at `mx.mailslurp.com` and support SMTP login, IMAP and POP3. Use the `EmailController` or the `InboxController` methods to send and receive emails and attachments. Inboxes may have a description, name, and tags for display purposes. You can also favourite an inbox for easier searching.

.PARAMETER Id
ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically.
.PARAMETER UserId
ID of user that inbox belongs to
.PARAMETER CreatedAt
When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
.PARAMETER Name
Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
.PARAMETER DomainId
ID of custom domain used by the inbox if any
.PARAMETER Description
Description of an inbox for labelling and searching purposes
.PARAMETER EmailAddress
The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
.PARAMETER ExpiresAt
Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.
.PARAMETER Favourite
Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
.PARAMETER Tags
Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
.PARAMETER InboxType
Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
.PARAMETER ReadOnly
Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes.
.PARAMETER VirtualInbox
Virtual inbox can receive email but will not send emails to real recipients. Will save sent email record but never send an actual email. Perfect for testing mail server actions.
.PARAMETER FunctionsAs
Inbox function if used as a primitive for another system.
.OUTPUTS

InboxDto<PSCustomObject>
#>

function Initialize-InboxDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DomainId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExpiresAt},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Favourite},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Tags},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("HTTP_INBOX", "SMTP_INBOX")]
        [String]
        ${InboxType},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${ReadOnly},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${VirtualInbox},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ALIAS", "THREAD", "CATCH_ALL", "CONNECTOR")]
        [String]
        ${FunctionsAs}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => InboxDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($EmailAddress -eq $null) {
            throw "invalid value for 'EmailAddress', 'EmailAddress' cannot be null."
        }

        if ($Favourite -eq $null) {
            throw "invalid value for 'Favourite', 'Favourite' cannot be null."
        }

        if ($ReadOnly -eq $null) {
            throw "invalid value for 'ReadOnly', 'ReadOnly' cannot be null."
        }

        if ($VirtualInbox -eq $null) {
            throw "invalid value for 'VirtualInbox', 'VirtualInbox' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "createdAt" = ${CreatedAt}
            "name" = ${Name}
            "domainId" = ${DomainId}
            "description" = ${Description}
            "emailAddress" = ${EmailAddress}
            "expiresAt" = ${ExpiresAt}
            "favourite" = ${Favourite}
            "tags" = ${Tags}
            "inboxType" = ${InboxType}
            "readOnly" = ${ReadOnly}
            "virtualInbox" = ${VirtualInbox}
            "functionsAs" = ${FunctionsAs}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InboxDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to InboxDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InboxDto<PSCustomObject>
#>
function ConvertFrom-JsonToInboxDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => InboxDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in InboxDto
        $AllProperties = ("id", "userId", "createdAt", "name", "domainId", "description", "emailAddress", "expiresAt", "favourite", "tags", "inboxType", "readOnly", "virtualInbox", "functionsAs")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) {
            throw "Error! JSON cannot be serialized due to the required property 'emailAddress' missing."
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "favourite"))) {
            throw "Error! JSON cannot be serialized due to the required property 'favourite' missing."
        } else {
            $Favourite = $JsonParameters.PSobject.Properties["favourite"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "readOnly"))) {
            throw "Error! JSON cannot be serialized due to the required property 'readOnly' missing."
        } else {
            $ReadOnly = $JsonParameters.PSobject.Properties["readOnly"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "virtualInbox"))) {
            throw "Error! JSON cannot be serialized due to the required property 'virtualInbox' missing."
        } else {
            $VirtualInbox = $JsonParameters.PSobject.Properties["virtualInbox"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) { #optional property not found
            $UserId = $null
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domainId"))) { #optional property not found
            $DomainId = $null
        } else {
            $DomainId = $JsonParameters.PSobject.Properties["domainId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiresAt"))) { #optional property not found
            $ExpiresAt = $null
        } else {
            $ExpiresAt = $JsonParameters.PSobject.Properties["expiresAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxType"))) { #optional property not found
            $InboxType = $null
        } else {
            $InboxType = $JsonParameters.PSobject.Properties["inboxType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "functionsAs"))) { #optional property not found
            $FunctionsAs = $null
        } else {
            $FunctionsAs = $JsonParameters.PSobject.Properties["functionsAs"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "createdAt" = ${CreatedAt}
            "name" = ${Name}
            "domainId" = ${DomainId}
            "description" = ${Description}
            "emailAddress" = ${EmailAddress}
            "expiresAt" = ${ExpiresAt}
            "favourite" = ${Favourite}
            "tags" = ${Tags}
            "inboxType" = ${InboxType}
            "readOnly" = ${ReadOnly}
            "virtualInbox" = ${VirtualInbox}
            "functionsAs" = ${FunctionsAs}
        }

        return $PSO
    }

}

