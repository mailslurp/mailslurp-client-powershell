#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

EMAIL_OPENED webhook payload. Sent to your webhook url endpoint via HTTP POST when an email containing a tracking pixel is opened and the pixel image is loaded by a reader.

.PARAMETER CreatedAt
Date time of event creation
.PARAMETER EventName
Name of the event type webhook is being triggered for.
.PARAMETER InboxId
Id of the inbox that received an email
.PARAMETER MessageId
Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
.PARAMETER PixelId
ID of the tracking pixel
.PARAMETER Recipient
Email address for the recipient of the tracking pixel
.PARAMETER SentEmailId
ID of sent email
.PARAMETER WebhookId
ID of webhook entity being triggered
.PARAMETER WebhookName
Name of the webhook being triggered
.OUTPUTS

WebhookEmailOpenedPayload<PSCustomObject>
#>

function Initialize-WebhookEmailOpenedPayload {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedAt},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ")]
        [String]
        ${EventName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MessageId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PixelId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Recipient},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SentEmailId},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookId},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookName}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => WebhookEmailOpenedPayload' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "createdAt" = ${CreatedAt}
            "eventName" = ${EventName}
            "inboxId" = ${InboxId}
            "messageId" = ${MessageId}
            "pixelId" = ${PixelId}
            "recipient" = ${Recipient}
            "sentEmailId" = ${SentEmailId}
            "webhookId" = ${WebhookId}
            "webhookName" = ${WebhookName}
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
        $AllProperties = ("createdAt", "eventName", "inboxId", "messageId", "pixelId", "recipient", "sentEmailId", "webhookId", "webhookName")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) { #optional property not found
            $CreatedAt = $null
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eventName"))) { #optional property not found
            $EventName = $null
        } else {
            $EventName = $JsonParameters.PSobject.Properties["eventName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) { #optional property not found
            $InboxId = $null
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messageId"))) { #optional property not found
            $MessageId = $null
        } else {
            $MessageId = $JsonParameters.PSobject.Properties["messageId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pixelId"))) { #optional property not found
            $PixelId = $null
        } else {
            $PixelId = $JsonParameters.PSobject.Properties["pixelId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipient"))) { #optional property not found
            $Recipient = $null
        } else {
            $Recipient = $JsonParameters.PSobject.Properties["recipient"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sentEmailId"))) { #optional property not found
            $SentEmailId = $null
        } else {
            $SentEmailId = $JsonParameters.PSobject.Properties["sentEmailId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "webhookId"))) { #optional property not found
            $WebhookId = $null
        } else {
            $WebhookId = $JsonParameters.PSobject.Properties["webhookId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "webhookName"))) { #optional property not found
            $WebhookName = $null
        } else {
            $WebhookName = $JsonParameters.PSobject.Properties["webhookName"].value
        }

        $PSO = [PSCustomObject]@{
            "createdAt" = ${CreatedAt}
            "eventName" = ${EventName}
            "inboxId" = ${InboxId}
            "messageId" = ${MessageId}
            "pixelId" = ${PixelId}
            "recipient" = ${Recipient}
            "sentEmailId" = ${SentEmailId}
            "webhookId" = ${WebhookId}
            "webhookName" = ${WebhookName}
        }

        return $PSO
    }

}

