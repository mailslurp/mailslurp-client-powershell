#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER File
No description available.
.OUTPUTS

InlineObject<PSCustomObject>
#>

function Initialize-InlineObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.IO.FileInfo]
        ${File}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => InlineObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($File -eq $null) {
            throw "invalid value for 'File', 'File' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "file" = ${File}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InlineObject<PSCustomObject>

.DESCRIPTION

Convert from JSON to InlineObject<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InlineObject<PSCustomObject>
#>
function ConvertFrom-JsonToInlineObject {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => InlineObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in InlineObject
        $AllProperties = ("file")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'file' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "file"))) {
            throw "Error! JSON cannot be serialized due to the required property 'file' missing."
        } else {
            $File = $JsonParameters.PSobject.Properties["file"].value
        }

        $PSO = [PSCustomObject]@{
            "file" = ${File}
        }

        return $PSO
    }

}

