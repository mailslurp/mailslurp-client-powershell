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

.PARAMETER Domain
No description available.
.OUTPUTS

DescribeDomainOptions<PSCustomObject>
#>

function Initialize-DescribeDomainOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => DescribeDomainOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Domain -eq $null) {
            throw "invalid value for 'Domain', 'Domain' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "domain" = ${Domain}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DescribeDomainOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to DescribeDomainOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DescribeDomainOptions<PSCustomObject>
#>
function ConvertFrom-JsonToDescribeDomainOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => DescribeDomainOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DescribeDomainOptions
        $AllProperties = ("domain")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'domain' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domain"))) {
            throw "Error! JSON cannot be serialized due to the required property 'domain' missing."
        } else {
            $Domain = $JsonParameters.PSobject.Properties["domain"].value
        }

        $PSO = [PSCustomObject]@{
            "domain" = ${Domain}
        }

        return $PSO
    }

}

