#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Content in raw format

.PARAMETER Content
No description available.
.OUTPUTS

RawEmailJson<PSCustomObject>
#>

function Initialize-RawEmailJson {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Content}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => RawEmailJson' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Content -eq $null) {
            throw "invalid value for 'Content', 'Content' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "content" = ${Content}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RawEmailJson<PSCustomObject>

.DESCRIPTION

Convert from JSON to RawEmailJson<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RawEmailJson<PSCustomObject>
#>
function ConvertFrom-JsonToRawEmailJson {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => RawEmailJson' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RawEmailJson
        $AllProperties = ("content")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'content' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "content"))) {
            throw "Error! JSON cannot be serialized due to the required property 'content' missing."
        } else {
            $Content = $JsonParameters.PSobject.Properties["content"].value
        }

        $PSO = [PSCustomObject]@{
            "content" = ${Content}
        }

        return $PSO
    }

}

