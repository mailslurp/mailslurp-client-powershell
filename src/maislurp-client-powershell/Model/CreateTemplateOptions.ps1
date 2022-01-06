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

.PARAMETER Name
No description available.
.PARAMETER Content
No description available.
.OUTPUTS

CreateTemplateOptions<PSCustomObject>
#>

function Initialize-CreateTemplateOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Content}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => CreateTemplateOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "content" = ${Content}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateTemplateOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateTemplateOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateTemplateOptions<PSCustomObject>
#>
function ConvertFrom-JsonToCreateTemplateOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => CreateTemplateOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreateTemplateOptions
        $AllProperties = ("name", "content")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "content"))) { #optional property not found
            $Content = $null
        } else {
            $Content = $JsonParameters.PSobject.Properties["content"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "content" = ${Content}
        }

        return $PSO
    }

}

