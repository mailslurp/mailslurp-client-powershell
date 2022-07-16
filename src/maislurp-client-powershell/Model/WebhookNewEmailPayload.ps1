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

NEW_EMAIL webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to. Use the email ID to fetch the full email body or attachments.

.PARAMETER MessageId
Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
.PARAMETER WebhookId
ID of webhook entity being triggered
.PARAMETER EventName
Name of the event type webhook is being triggered for.
.PARAMETER WebhookName
Name of the webhook being triggered
.PARAMETER InboxId
Id of the inbox that received an email
.PARAMETER DomainId
Id of the domain that received an email
.PARAMETER EmailId
ID of the email that was received. Use this ID for fetching the email with the `EmailController`.
.PARAMETER CreatedAt
Date time of event creation
.PARAMETER To
List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
.PARAMETER VarFrom
Who the email was sent from. An email address - see fromName for the sender name.
.PARAMETER Cc
List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
.PARAMETER Bcc
List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
.PARAMETER Subject
The subject line of the email message as specified by SMTP subject header
.PARAMETER AttachmentMetaDatas
List of attachment meta data objects if attachments present
.OUTPUTS

WebhookNewEmailPayload<PSCustomObject>
#>

function Initialize-WebhookNewEmailPayload {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MessageId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "BOUNCE", "BOUNCE_RECIPIENT", "NEW_SMS")]
        [String]
        ${EventName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DomainId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailId},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${To},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFrom},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Cc},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Bcc},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AttachmentMetaDatas}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => WebhookNewEmailPayload' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($MessageId -eq $null) {
            throw "invalid value for 'MessageId', 'MessageId' cannot be null."
        }

        if ($WebhookId -eq $null) {
            throw "invalid value for 'WebhookId', 'WebhookId' cannot be null."
        }

        if ($EventName -eq $null) {
            throw "invalid value for 'EventName', 'EventName' cannot be null."
        }

        if ($InboxId -eq $null) {
            throw "invalid value for 'InboxId', 'InboxId' cannot be null."
        }

        if ($EmailId -eq $null) {
            throw "invalid value for 'EmailId', 'EmailId' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($To -eq $null) {
            throw "invalid value for 'To', 'To' cannot be null."
        }

        if ($VarFrom -eq $null) {
            throw "invalid value for 'VarFrom', 'VarFrom' cannot be null."
        }

        if ($Cc -eq $null) {
            throw "invalid value for 'Cc', 'Cc' cannot be null."
        }

        if ($Bcc -eq $null) {
            throw "invalid value for 'Bcc', 'Bcc' cannot be null."
        }

        if ($AttachmentMetaDatas -eq $null) {
            throw "invalid value for 'AttachmentMetaDatas', 'AttachmentMetaDatas' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "messageId" = ${MessageId}
            "webhookId" = ${WebhookId}
            "eventName" = ${EventName}
            "webhookName" = ${WebhookName}
            "inboxId" = ${InboxId}
            "domainId" = ${DomainId}
            "emailId" = ${EmailId}
            "createdAt" = ${CreatedAt}
            "to" = ${To}
            "from" = ${VarFrom}
            "cc" = ${Cc}
            "bcc" = ${Bcc}
            "subject" = ${Subject}
            "attachmentMetaDatas" = ${AttachmentMetaDatas}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WebhookNewEmailPayload<PSCustomObject>

.DESCRIPTION

Convert from JSON to WebhookNewEmailPayload<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WebhookNewEmailPayload<PSCustomObject>
#>
function ConvertFrom-JsonToWebhookNewEmailPayload {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => WebhookNewEmailPayload' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WebhookNewEmailPayload
        $AllProperties = ("messageId", "webhookId", "eventName", "webhookName", "inboxId", "domainId", "emailId", "createdAt", "to", "from", "cc", "bcc", "subject", "attachmentMetaDatas")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'messageId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messageId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'messageId' missing."
        } else {
            $MessageId = $JsonParameters.PSobject.Properties["messageId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "webhookId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'webhookId' missing."
        } else {
            $WebhookId = $JsonParameters.PSobject.Properties["webhookId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eventName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'eventName' missing."
        } else {
            $EventName = $JsonParameters.PSobject.Properties["eventName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'inboxId' missing."
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'emailId' missing."
        } else {
            $EmailId = $JsonParameters.PSobject.Properties["emailId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "to"))) {
            throw "Error! JSON cannot be serialized due to the required property 'to' missing."
        } else {
            $To = $JsonParameters.PSobject.Properties["to"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "from"))) {
            throw "Error! JSON cannot be serialized due to the required property 'from' missing."
        } else {
            $VarFrom = $JsonParameters.PSobject.Properties["from"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cc"))) {
            throw "Error! JSON cannot be serialized due to the required property 'cc' missing."
        } else {
            $Cc = $JsonParameters.PSobject.Properties["cc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bcc"))) {
            throw "Error! JSON cannot be serialized due to the required property 'bcc' missing."
        } else {
            $Bcc = $JsonParameters.PSobject.Properties["bcc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attachmentMetaDatas"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attachmentMetaDatas' missing."
        } else {
            $AttachmentMetaDatas = $JsonParameters.PSobject.Properties["attachmentMetaDatas"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "webhookName"))) { #optional property not found
            $WebhookName = $null
        } else {
            $WebhookName = $JsonParameters.PSobject.Properties["webhookName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domainId"))) { #optional property not found
            $DomainId = $null
        } else {
            $DomainId = $JsonParameters.PSobject.Properties["domainId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        $PSO = [PSCustomObject]@{
            "messageId" = ${MessageId}
            "webhookId" = ${WebhookId}
            "eventName" = ${EventName}
            "webhookName" = ${WebhookName}
            "inboxId" = ${InboxId}
            "domainId" = ${DomainId}
            "emailId" = ${EmailId}
            "createdAt" = ${CreatedAt}
            "to" = ${To}
            "from" = ${VarFrom}
            "cc" = ${Cc}
            "bcc" = ${Bcc}
            "subject" = ${Subject}
            "attachmentMetaDatas" = ${AttachmentMetaDatas}
        }

        return $PSO
    }

}

