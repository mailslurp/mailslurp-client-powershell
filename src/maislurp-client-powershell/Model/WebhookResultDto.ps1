#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Id
No description available.
.PARAMETER UserId
No description available.
.PARAMETER InboxId
No description available.
.PARAMETER WebhookId
No description available.
.PARAMETER WebhookUrl
No description available.
.PARAMETER MessageId
No description available.
.PARAMETER RedriveId
No description available.
.PARAMETER HttpMethod
No description available.
.PARAMETER WebhookEvent
No description available.
.PARAMETER ResponseStatus
No description available.
.PARAMETER ResponseTimeMillis
No description available.
.PARAMETER ResponseBodyExtract
No description available.
.PARAMETER ResultType
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER UpdatedAt
No description available.
.PARAMETER Seen
No description available.
.OUTPUTS

WebhookResultDto<PSCustomObject>
#>

function Initialize-WebhookResultDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WebhookUrl},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MessageId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RedriveId},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE")]
        [String]
        ${HttpMethod},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ")]
        [String]
        ${WebhookEvent},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ResponseStatus},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${ResponseTimeMillis},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ResponseBodyExtract},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("BAD_RESPONSE", "EXCEPTION", "SUCCESS")]
        [String]
        ${ResultType},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${UpdatedAt},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Seen}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => WebhookResultDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($UserId -eq $null) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }

        if ($InboxId -eq $null) {
            throw "invalid value for 'InboxId', 'InboxId' cannot be null."
        }

        if ($WebhookId -eq $null) {
            throw "invalid value for 'WebhookId', 'WebhookId' cannot be null."
        }

        if ($WebhookUrl -eq $null) {
            throw "invalid value for 'WebhookUrl', 'WebhookUrl' cannot be null."
        }

        if ($MessageId -eq $null) {
            throw "invalid value for 'MessageId', 'MessageId' cannot be null."
        }

        if ($HttpMethod -eq $null) {
            throw "invalid value for 'HttpMethod', 'HttpMethod' cannot be null."
        }

        if ($WebhookEvent -eq $null) {
            throw "invalid value for 'WebhookEvent', 'WebhookEvent' cannot be null."
        }

        if ($ResponseTimeMillis -eq $null) {
            throw "invalid value for 'ResponseTimeMillis', 'ResponseTimeMillis' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($UpdatedAt -eq $null) {
            throw "invalid value for 'UpdatedAt', 'UpdatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "inboxId" = ${InboxId}
            "webhookId" = ${WebhookId}
            "webhookUrl" = ${WebhookUrl}
            "messageId" = ${MessageId}
            "redriveId" = ${RedriveId}
            "httpMethod" = ${HttpMethod}
            "webhookEvent" = ${WebhookEvent}
            "responseStatus" = ${ResponseStatus}
            "responseTimeMillis" = ${ResponseTimeMillis}
            "responseBodyExtract" = ${ResponseBodyExtract}
            "resultType" = ${ResultType}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
            "seen" = ${Seen}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WebhookResultDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to WebhookResultDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WebhookResultDto<PSCustomObject>
#>
function ConvertFrom-JsonToWebhookResultDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => WebhookResultDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WebhookResultDto
        $AllProperties = ("id", "userId", "inboxId", "webhookId", "webhookUrl", "messageId", "redriveId", "httpMethod", "webhookEvent", "responseStatus", "responseTimeMillis", "responseBodyExtract", "resultType", "createdAt", "updatedAt", "seen")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'userId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'inboxId' missing."
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "webhookId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'webhookId' missing."
        } else {
            $WebhookId = $JsonParameters.PSobject.Properties["webhookId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "webhookUrl"))) {
            throw "Error! JSON cannot be serialized due to the required property 'webhookUrl' missing."
        } else {
            $WebhookUrl = $JsonParameters.PSobject.Properties["webhookUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messageId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'messageId' missing."
        } else {
            $MessageId = $JsonParameters.PSobject.Properties["messageId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "httpMethod"))) {
            throw "Error! JSON cannot be serialized due to the required property 'httpMethod' missing."
        } else {
            $HttpMethod = $JsonParameters.PSobject.Properties["httpMethod"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "webhookEvent"))) {
            throw "Error! JSON cannot be serialized due to the required property 'webhookEvent' missing."
        } else {
            $WebhookEvent = $JsonParameters.PSobject.Properties["webhookEvent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "responseTimeMillis"))) {
            throw "Error! JSON cannot be serialized due to the required property 'responseTimeMillis' missing."
        } else {
            $ResponseTimeMillis = $JsonParameters.PSobject.Properties["responseTimeMillis"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'updatedAt' missing."
        } else {
            $UpdatedAt = $JsonParameters.PSobject.Properties["updatedAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "redriveId"))) { #optional property not found
            $RedriveId = $null
        } else {
            $RedriveId = $JsonParameters.PSobject.Properties["redriveId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "responseStatus"))) { #optional property not found
            $ResponseStatus = $null
        } else {
            $ResponseStatus = $JsonParameters.PSobject.Properties["responseStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "responseBodyExtract"))) { #optional property not found
            $ResponseBodyExtract = $null
        } else {
            $ResponseBodyExtract = $JsonParameters.PSobject.Properties["responseBodyExtract"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "resultType"))) { #optional property not found
            $ResultType = $null
        } else {
            $ResultType = $JsonParameters.PSobject.Properties["resultType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "seen"))) { #optional property not found
            $Seen = $null
        } else {
            $Seen = $JsonParameters.PSobject.Properties["seen"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "inboxId" = ${InboxId}
            "webhookId" = ${WebhookId}
            "webhookUrl" = ${WebhookUrl}
            "messageId" = ${MessageId}
            "redriveId" = ${RedriveId}
            "httpMethod" = ${HttpMethod}
            "webhookEvent" = ${WebhookEvent}
            "responseStatus" = ${ResponseStatus}
            "responseTimeMillis" = ${ResponseTimeMillis}
            "responseBodyExtract" = ${ResponseBodyExtract}
            "resultType" = ${ResultType}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
            "seen" = ${Seen}
        }

        return $PSO
    }

}

