#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

EMAIL_OPENED webhook payload. Sent to your webhook url endpoint via HTTP POST when an email containing a tracking pixel is opened and the pixel image is loaded by a reader.

.PARAMETER MessageId
Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
.PARAMETER WebhookId
ID of webhook entity being triggered
.PARAMETER EventName
Name of the event type webhook is being triggered for.
.PARAMETER WebhookName
Name of the webhook being triggered
.PARAMETER InboxId
Id of the inbox
.PARAMETER PixelId
ID of the tracking pixel
.PARAMETER SentEmailId
ID of sent email
.PARAMETER Recipient
Email address for the recipient of the tracking pixel
.PARAMETER CreatedAt
Date time of event creation
.OUTPUTS

WebhookEmailOpenedPayload<PSCustomObject>
#>

function Initialize-WebhookEmailOpenedPayload {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MessageId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "DELIVERY_STATUS", "BOUNCE", "BOUNCE_RECIPIENT", "NEW_SMS", "NEW_GUEST_USER")]
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
        ${PixelId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SentEmailId},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Recipient},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => WebhookEmailOpenedPayload' | Write-Debug
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

        if ($PixelId -eq $null) {
            throw "invalid value for 'PixelId', 'PixelId' cannot be null."
        }

        if ($SentEmailId -eq $null) {
            throw "invalid value for 'SentEmailId', 'SentEmailId' cannot be null."
        }

        if ($Recipient -eq $null) {
            throw "invalid value for 'Recipient', 'Recipient' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "messageId" = ${MessageId}
            "webhookId" = ${WebhookId}
            "eventName" = ${EventName}
            "webhookName" = ${WebhookName}
            "inboxId" = ${InboxId}
            "pixelId" = ${PixelId}
            "sentEmailId" = ${SentEmailId}
            "recipient" = ${Recipient}
            "createdAt" = ${CreatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WebhookEmailOpenedPayload<PSCustomObject>

.DESCRIPTION

Convert from JSON to WebhookEmailOpenedPayload<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WebhookEmailOpenedPayload<PSCustomObject>
#>
function ConvertFrom-JsonToWebhookEmailOpenedPayload {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => WebhookEmailOpenedPayload' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WebhookEmailOpenedPayload
        $AllProperties = ("messageId", "webhookId", "eventName", "webhookName", "inboxId", "pixelId", "sentEmailId", "recipient", "createdAt")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pixelId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'pixelId' missing."
        } else {
            $PixelId = $JsonParameters.PSobject.Properties["pixelId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sentEmailId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sentEmailId' missing."
        } else {
            $SentEmailId = $JsonParameters.PSobject.Properties["sentEmailId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipient"))) {
            throw "Error! JSON cannot be serialized due to the required property 'recipient' missing."
        } else {
            $Recipient = $JsonParameters.PSobject.Properties["recipient"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "webhookName"))) { #optional property not found
            $WebhookName = $null
        } else {
            $WebhookName = $JsonParameters.PSobject.Properties["webhookName"].value
        }

        $PSO = [PSCustomObject]@{
            "messageId" = ${MessageId}
            "webhookId" = ${WebhookId}
            "eventName" = ${EventName}
            "webhookName" = ${WebhookName}
            "inboxId" = ${InboxId}
            "pixelId" = ${PixelId}
            "sentEmailId" = ${SentEmailId}
            "recipient" = ${Recipient}
            "createdAt" = ${CreatedAt}
        }

        return $PSO
    }

}

