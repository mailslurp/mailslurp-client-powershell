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

.PARAMETER TestValue
No description available.
.OUTPUTS

InboxForwarderTestOptions<PSCustomObject>
#>

function Initialize-InboxForwarderTestOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestValue}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => InboxForwarderTestOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($TestValue -eq $null) {
            throw "invalid value for 'TestValue', 'TestValue' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "testValue" = ${TestValue}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InboxForwarderTestOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to InboxForwarderTestOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InboxForwarderTestOptions<PSCustomObject>
#>
function ConvertFrom-JsonToInboxForwarderTestOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => InboxForwarderTestOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in InboxForwarderTestOptions
        $AllProperties = ("testValue")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'testValue' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testValue"))) {
            throw "Error! JSON cannot be serialized due to the required property 'testValue' missing."
        } else {
            $TestValue = $JsonParameters.PSobject.Properties["testValue"].value
        }

        $PSO = [PSCustomObject]@{
            "testValue" = ${TestValue}
        }

        return $PSO
    }

}
