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

Results of testing a webhook

.PARAMETER Message
No description available.
.PARAMETER Response
No description available.
.PARAMETER Request
No description available.
.OUTPUTS

WebhookTestResult<PSCustomObject>
#>

function Initialize-WebhookTestResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Response},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Request}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => WebhookTestResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Response -eq $null) {
            throw "invalid value for 'Response', 'Response' cannot be null."
        }

        if ($Request -eq $null) {
            throw "invalid value for 'Request', 'Request' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "response" = ${Response}
            "request" = ${Request}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WebhookTestResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to WebhookTestResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WebhookTestResult<PSCustomObject>
#>
function ConvertFrom-JsonToWebhookTestResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => WebhookTestResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WebhookTestResult
        $AllProperties = ("message", "response", "request")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'response' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "response"))) {
            throw "Error! JSON cannot be serialized due to the required property 'response' missing."
        } else {
            $Response = $JsonParameters.PSobject.Properties["response"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "request"))) {
            throw "Error! JSON cannot be serialized due to the required property 'request' missing."
        } else {
            $Request = $JsonParameters.PSobject.Properties["request"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "response" = ${Response}
            "request" = ${Request}
        }

        return $PSO
    }

}

