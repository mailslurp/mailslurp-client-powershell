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

IP Address look up result for a given domain / hostname

.PARAMETER Address
No description available.
.PARAMETER Hostname
No description available.
.OUTPUTS

IPAddressResult<PSCustomObject>
#>

function Initialize-IPAddressResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Address},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Hostname}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => IPAddressResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Address -eq $null) {
            throw "invalid value for 'Address', 'Address' cannot be null."
        }

        if ($Hostname -eq $null) {
            throw "invalid value for 'Hostname', 'Hostname' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "address" = ${Address}
            "hostname" = ${Hostname}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IPAddressResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to IPAddressResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IPAddressResult<PSCustomObject>
#>
function ConvertFrom-JsonToIPAddressResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => IPAddressResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IPAddressResult
        $AllProperties = ("address", "hostname")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'address' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "address"))) {
            throw "Error! JSON cannot be serialized due to the required property 'address' missing."
        } else {
            $Address = $JsonParameters.PSobject.Properties["address"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hostname"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hostname' missing."
        } else {
            $Hostname = $JsonParameters.PSobject.Properties["hostname"].value
        }

        $PSO = [PSCustomObject]@{
            "address" = ${Address}
            "hostname" = ${Hostname}
        }

        return $PSO
    }

}

