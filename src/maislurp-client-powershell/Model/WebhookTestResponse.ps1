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

No description available.

.PARAMETER Message
No description available.
.PARAMETER StatusCode
No description available.
.OUTPUTS

WebhookTestResponse<PSCustomObject>
#>

function Initialize-WebhookTestResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${StatusCode}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => WebhookTestResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "statusCode" = ${StatusCode}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WebhookTestResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to WebhookTestResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WebhookTestResponse<PSCustomObject>
#>
function ConvertFrom-JsonToWebhookTestResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => WebhookTestResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WebhookTestResponse
        $AllProperties = ("message", "statusCode")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusCode"))) { #optional property not found
            $StatusCode = $null
        } else {
            $StatusCode = $JsonParameters.PSobject.Properties["statusCode"].value
        }

        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "statusCode" = ${StatusCode}
        }

        return $PSO
    }

}

