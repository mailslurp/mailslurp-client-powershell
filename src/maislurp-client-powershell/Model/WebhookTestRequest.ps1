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

Result of webhook test request

.PARAMETER Url
No description available.
.PARAMETER Method
No description available.
.PARAMETER Headers
No description available.
.PARAMETER Payload
No description available.
.OUTPUTS

WebhookTestRequest<PSCustomObject>
#>

function Initialize-WebhookTestRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE")]
        [String]
        ${Method},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Headers},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Payload}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => WebhookTestRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Url -eq $null) {
            throw "invalid value for 'Url', 'Url' cannot be null."
        }

        if ($Method -eq $null) {
            throw "invalid value for 'Method', 'Method' cannot be null."
        }

        if ($Headers -eq $null) {
            throw "invalid value for 'Headers', 'Headers' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "url" = ${Url}
            "method" = ${Method}
            "headers" = ${Headers}
            "payload" = ${Payload}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WebhookTestRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to WebhookTestRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WebhookTestRequest<PSCustomObject>
#>
function ConvertFrom-JsonToWebhookTestRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => WebhookTestRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WebhookTestRequest
        $AllProperties = ("url", "method", "headers", "payload")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "method"))) {
            throw "Error! JSON cannot be serialized due to the required property 'method' missing."
        } else {
            $Method = $JsonParameters.PSobject.Properties["method"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "headers"))) {
            throw "Error! JSON cannot be serialized due to the required property 'headers' missing."
        } else {
            $Headers = $JsonParameters.PSobject.Properties["headers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "payload"))) { #optional property not found
            $Payload = $null
        } else {
            $Payload = $JsonParameters.PSobject.Properties["payload"].value
        }

        $PSO = [PSCustomObject]@{
            "url" = ${Url}
            "method" = ${Method}
            "headers" = ${Headers}
            "payload" = ${Payload}
        }

        return $PSO
    }

}

