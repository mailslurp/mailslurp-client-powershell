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

Response object for email validation operation

.PARAMETER EmailId
ID of the email validated
.PARAMETER Html
No description available.
.OUTPUTS

ValidationDto<PSCustomObject>
#>

function Initialize-ValidationDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Html}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ValidationDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "emailId" = ${EmailId}
            "html" = ${Html}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ValidationDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to ValidationDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ValidationDto<PSCustomObject>
#>
function ConvertFrom-JsonToValidationDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ValidationDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ValidationDto
        $AllProperties = ("emailId", "html")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailId"))) { #optional property not found
            $EmailId = $null
        } else {
            $EmailId = $JsonParameters.PSobject.Properties["emailId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "html"))) { #optional property not found
            $Html = $null
        } else {
            $Html = $JsonParameters.PSobject.Properties["html"].value
        }

        $PSO = [PSCustomObject]@{
            "emailId" = ${EmailId}
            "html" = ${Html}
        }

        return $PSO
    }

}

