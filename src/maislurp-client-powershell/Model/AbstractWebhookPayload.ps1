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

Abstract webhook payload. Use the correct payload type for your webhook event type in order to access all the specific properties for that event. See the `NEW_EMAIL`,`NEW_CONTACT`, `NEW_ATTACHMENT` and `EMAIL_OPENED` payloads for the properties available for those events.

.PARAMETER EventName
No description available.
.PARAMETER MessageId
No description available.
.PARAMETER WebhookId
No description available.
.PARAMETER WebhookName
No description available.
.OUTPUTS

AbstractWebhookPayload<PSCustomObject>
#>

function Initialize-AbstractWebhookPayload {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "DELIVERY_STATUS", "BOUNCE", "BOUNCE_RECIPIENT", "NEW_SMS")]
        [String]
        ${EventName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MessageId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookName}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => AbstractWebhookPayload' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($EventName -eq $null) {
            throw "invalid value for 'EventName', 'EventName' cannot be null."
        }

        if ($MessageId -eq $null) {
            throw "invalid value for 'MessageId', 'MessageId' cannot be null."
        }

        if ($WebhookId -eq $null) {
            throw "invalid value for 'WebhookId', 'WebhookId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "eventName" = ${EventName}
            "messageId" = ${MessageId}
            "webhookId" = ${WebhookId}
            "webhookName" = ${WebhookName}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AbstractWebhookPayload<PSCustomObject>

.DESCRIPTION

Convert from JSON to AbstractWebhookPayload<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AbstractWebhookPayload<PSCustomObject>
#>
function ConvertFrom-JsonToAbstractWebhookPayload {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => AbstractWebhookPayload' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AbstractWebhookPayload
        $AllProperties = ("eventName", "messageId", "webhookId", "webhookName")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'eventName' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eventName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'eventName' missing."
        } else {
            $EventName = $JsonParameters.PSobject.Properties["eventName"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "webhookName"))) { #optional property not found
            $WebhookName = $null
        } else {
            $WebhookName = $JsonParameters.PSobject.Properties["webhookName"].value
        }

        $PSO = [PSCustomObject]@{
            "eventName" = ${EventName}
            "messageId" = ${MessageId}
            "webhookId" = ${WebhookId}
            "webhookName" = ${WebhookName}
        }

        return $PSO
    }

}

