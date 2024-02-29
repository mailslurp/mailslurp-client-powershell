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

No description available.

.PARAMETER HasIssues
No description available.
.OUTPUTS

DomainIssuesDto<PSCustomObject>
#>

function Initialize-DomainIssuesDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${HasIssues}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => DomainIssuesDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($HasIssues -eq $null) {
            throw "invalid value for 'HasIssues', 'HasIssues' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "hasIssues" = ${HasIssues}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainIssuesDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainIssuesDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainIssuesDto<PSCustomObject>
#>
function ConvertFrom-JsonToDomainIssuesDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => DomainIssuesDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DomainIssuesDto
        $AllProperties = ("hasIssues")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'hasIssues' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasIssues"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hasIssues' missing."
        } else {
            $HasIssues = $JsonParameters.PSobject.Properties["hasIssues"].value
        }

        $PSO = [PSCustomObject]@{
            "hasIssues" = ${HasIssues}
        }

        return $PSO
    }

}

