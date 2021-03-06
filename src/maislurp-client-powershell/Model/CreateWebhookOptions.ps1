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

Options for creating a webhook. Webhooks can be attached to inboxes and MailSlurp will POST a webhook payload to the URL specified whenever the webhook's event is triggered. Webhooks are great for processing many inbound emails and responding to other events at scale.

.PARAMETER Url
Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received or an event is trigger. The payload of the submitted JSON is dependent on the webhook event type. See docs.mailslurp.com/webhooks for event payload documentation.
.PARAMETER BasicAuth
No description available.
.PARAMETER Name
Optional name for the webhook
.PARAMETER EventName
Optional webhook event name. Default is `EMAIL_RECEIVED` and is triggered when an email is received by the inbox associated with the webhook. Payload differ according to the webhook event name.
.PARAMETER IncludeHeaders
No description available.
.OUTPUTS

CreateWebhookOptions<PSCustomObject>
#>

function Initialize-CreateWebhookOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${BasicAuth},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "BOUNCE", "BOUNCE_RECIPIENT", "NEW_SMS")]
        [String]
        ${EventName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${IncludeHeaders}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => CreateWebhookOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Url -eq $null) {
            throw "invalid value for 'Url', 'Url' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "url" = ${Url}
            "basicAuth" = ${BasicAuth}
            "name" = ${Name}
            "eventName" = ${EventName}
            "includeHeaders" = ${IncludeHeaders}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateWebhookOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateWebhookOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateWebhookOptions<PSCustomObject>
#>
function ConvertFrom-JsonToCreateWebhookOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => CreateWebhookOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreateWebhookOptions
        $AllProperties = ("url", "basicAuth", "name", "eventName", "includeHeaders")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'url' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) {
            throw "Error! JSON cannot be serialized due to the required property 'url' missing."
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "basicAuth"))) { #optional property not found
            $BasicAuth = $null
        } else {
            $BasicAuth = $JsonParameters.PSobject.Properties["basicAuth"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eventName"))) { #optional property not found
            $EventName = $null
        } else {
            $EventName = $JsonParameters.PSobject.Properties["eventName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "includeHeaders"))) { #optional property not found
            $IncludeHeaders = $null
        } else {
            $IncludeHeaders = $JsonParameters.PSobject.Properties["includeHeaders"].value
        }

        $PSO = [PSCustomObject]@{
            "url" = ${Url}
            "basicAuth" = ${BasicAuth}
            "name" = ${Name}
            "eventName" = ${EventName}
            "includeHeaders" = ${IncludeHeaders}
        }

        return $PSO
    }

}

