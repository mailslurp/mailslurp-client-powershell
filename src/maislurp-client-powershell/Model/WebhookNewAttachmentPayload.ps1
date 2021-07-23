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

NEW_ATTACHMENT webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to that contains an attachment. You can use the attachmentId to download the attachment.

.PARAMETER AttachmentId
ID of attachment. Use the `AttachmentController` to
.PARAMETER ContentLength
Size of attachment in bytes
.PARAMETER ContentType
Content type of attachment such as 'image/png' or 'application/pdf
.PARAMETER EventName
Name of the event type webhook is being triggered for.
.PARAMETER MessageId
Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
.PARAMETER Name
Filename of the attachment if present
.PARAMETER WebhookId
ID of webhook entity being triggered
.PARAMETER WebhookName
Name of the webhook being triggered
.OUTPUTS

WebhookNewAttachmentPayload<PSCustomObject>
#>

function Initialize-WebhookNewAttachmentPayload {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttachmentId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ContentLength},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContentType},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED")]
        [String]
        ${EventName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MessageId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookId},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookName}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => WebhookNewAttachmentPayload' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "attachmentId" = ${AttachmentId}
            "contentLength" = ${ContentLength}
            "contentType" = ${ContentType}
            "eventName" = ${EventName}
            "messageId" = ${MessageId}
            "name" = ${Name}
            "webhookId" = ${WebhookId}
            "webhookName" = ${WebhookName}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WebhookNewAttachmentPayload<PSCustomObject>

.DESCRIPTION

Convert from JSON to WebhookNewAttachmentPayload<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WebhookNewAttachmentPayload<PSCustomObject>
#>
function ConvertFrom-JsonToWebhookNewAttachmentPayload {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => WebhookNewAttachmentPayload' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WebhookNewAttachmentPayload
        $AllProperties = ("attachmentId", "contentLength", "contentType", "eventName", "messageId", "name", "webhookId", "webhookName")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attachmentId"))) { #optional property not found
            $AttachmentId = $null
        } else {
            $AttachmentId = $JsonParameters.PSobject.Properties["attachmentId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contentLength"))) { #optional property not found
            $ContentLength = $null
        } else {
            $ContentLength = $JsonParameters.PSobject.Properties["contentLength"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contentType"))) { #optional property not found
            $ContentType = $null
        } else {
            $ContentType = $JsonParameters.PSobject.Properties["contentType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eventName"))) { #optional property not found
            $EventName = $null
        } else {
            $EventName = $JsonParameters.PSobject.Properties["eventName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messageId"))) { #optional property not found
            $MessageId = $null
        } else {
            $MessageId = $JsonParameters.PSobject.Properties["messageId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
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
            "attachmentId" = ${AttachmentId}
            "contentLength" = ${ContentLength}
            "contentType" = ${ContentType}
            "eventName" = ${EventName}
            "messageId" = ${MessageId}
            "name" = ${Name}
            "webhookId" = ${WebhookId}
            "webhookName" = ${WebhookName}
        }

        return $PSO
    }

}

