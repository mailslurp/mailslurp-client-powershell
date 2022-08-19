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

DELIVERY_STATUS webhook payload. Sent to your webhook url endpoint via HTTP POST when an email delivery status is created. This could be a successful delivery or a delivery failure.

.PARAMETER MessageId
Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
.PARAMETER WebhookId
ID of webhook entity being triggered
.PARAMETER EventName
Name of the event type webhook is being triggered for.
.PARAMETER WebhookName
Name of the webhook being triggered
.PARAMETER Id
ID of delivery status
.PARAMETER UserId
User ID of event
.PARAMETER SentId
ID of sent email
.PARAMETER RemoteMtaIp
IP address of the remote Mail Transfer Agent
.PARAMETER InboxId
Id of the inbox
.PARAMETER ReportingMta
Mail Transfer Agent reporting delivery status
.PARAMETER Recipients
Recipients for delivery
.PARAMETER SmtpResponse
SMTP server response message
.PARAMETER SmtpStatusCode
SMTP server status
.PARAMETER ProcessingTimeMillis
Time in milliseconds for delivery processing
.PARAMETER Received
Time event was received
.PARAMETER Subject
Email subject
.OUTPUTS

WebhookDeliveryStatusPayload<PSCustomObject>
#>

function Initialize-WebhookDeliveryStatusPayload {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MessageId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "DELIVERY_STATUS", "BOUNCE", "BOUNCE_RECIPIENT", "NEW_SMS")]
        [String]
        ${EventName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SentId},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemoteMtaIp},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReportingMta},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Recipients},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SmtpResponse},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${SmtpStatusCode},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ProcessingTimeMillis},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Received},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => WebhookDeliveryStatusPayload' | Write-Debug
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

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($UserId -eq $null) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "messageId" = ${MessageId}
            "webhookId" = ${WebhookId}
            "eventName" = ${EventName}
            "webhookName" = ${WebhookName}
            "id" = ${Id}
            "userId" = ${UserId}
            "sentId" = ${SentId}
            "remoteMtaIp" = ${RemoteMtaIp}
            "inboxId" = ${InboxId}
            "reportingMta" = ${ReportingMta}
            "recipients" = ${Recipients}
            "smtpResponse" = ${SmtpResponse}
            "smtpStatusCode" = ${SmtpStatusCode}
            "processingTimeMillis" = ${ProcessingTimeMillis}
            "received" = ${Received}
            "subject" = ${Subject}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WebhookDeliveryStatusPayload<PSCustomObject>

.DESCRIPTION

Convert from JSON to WebhookDeliveryStatusPayload<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WebhookDeliveryStatusPayload<PSCustomObject>
#>
function ConvertFrom-JsonToWebhookDeliveryStatusPayload {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => WebhookDeliveryStatusPayload' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WebhookDeliveryStatusPayload
        $AllProperties = ("messageId", "webhookId", "eventName", "webhookName", "id", "userId", "sentId", "remoteMtaIp", "inboxId", "reportingMta", "recipients", "smtpResponse", "smtpStatusCode", "processingTimeMillis", "received", "subject")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "webhookName"))) { #optional property not found
            $WebhookName = $null
        } else {
            $WebhookName = $JsonParameters.PSobject.Properties["webhookName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sentId"))) { #optional property not found
            $SentId = $null
        } else {
            $SentId = $JsonParameters.PSobject.Properties["sentId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "remoteMtaIp"))) { #optional property not found
            $RemoteMtaIp = $null
        } else {
            $RemoteMtaIp = $JsonParameters.PSobject.Properties["remoteMtaIp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) { #optional property not found
            $InboxId = $null
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reportingMta"))) { #optional property not found
            $ReportingMta = $null
        } else {
            $ReportingMta = $JsonParameters.PSobject.Properties["reportingMta"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipients"))) { #optional property not found
            $Recipients = $null
        } else {
            $Recipients = $JsonParameters.PSobject.Properties["recipients"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpResponse"))) { #optional property not found
            $SmtpResponse = $null
        } else {
            $SmtpResponse = $JsonParameters.PSobject.Properties["smtpResponse"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtpStatusCode"))) { #optional property not found
            $SmtpStatusCode = $null
        } else {
            $SmtpStatusCode = $JsonParameters.PSobject.Properties["smtpStatusCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "processingTimeMillis"))) { #optional property not found
            $ProcessingTimeMillis = $null
        } else {
            $ProcessingTimeMillis = $JsonParameters.PSobject.Properties["processingTimeMillis"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "received"))) { #optional property not found
            $Received = $null
        } else {
            $Received = $JsonParameters.PSobject.Properties["received"].value
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
            "id" = ${Id}
            "userId" = ${UserId}
            "sentId" = ${SentId}
            "remoteMtaIp" = ${RemoteMtaIp}
            "inboxId" = ${InboxId}
            "reportingMta" = ${ReportingMta}
            "recipients" = ${Recipients}
            "smtpResponse" = ${SmtpResponse}
            "smtpStatusCode" = ${SmtpStatusCode}
            "processingTimeMillis" = ${ProcessingTimeMillis}
            "received" = ${Received}
            "subject" = ${Subject}
        }

        return $PSO
    }

}

