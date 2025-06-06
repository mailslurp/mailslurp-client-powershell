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

Options for testing new inbox forwarder rules

.PARAMETER InboxForwarderTestOptions
No description available.
.PARAMETER CreateInboxForwarderOptions
No description available.
.OUTPUTS

TestNewInboxForwarderOptions<PSCustomObject>
#>

function Initialize-TestNewInboxForwarderOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InboxForwarderTestOptions},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CreateInboxForwarderOptions}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => TestNewInboxForwarderOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($InboxForwarderTestOptions -eq $null) {
            throw "invalid value for 'InboxForwarderTestOptions', 'InboxForwarderTestOptions' cannot be null."
        }

        if ($CreateInboxForwarderOptions -eq $null) {
            throw "invalid value for 'CreateInboxForwarderOptions', 'CreateInboxForwarderOptions' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "inboxForwarderTestOptions" = ${InboxForwarderTestOptions}
            "createInboxForwarderOptions" = ${CreateInboxForwarderOptions}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TestNewInboxForwarderOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to TestNewInboxForwarderOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TestNewInboxForwarderOptions<PSCustomObject>
#>
function ConvertFrom-JsonToTestNewInboxForwarderOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => TestNewInboxForwarderOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TestNewInboxForwarderOptions
        $AllProperties = ("inboxForwarderTestOptions", "createInboxForwarderOptions")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'inboxForwarderTestOptions' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxForwarderTestOptions"))) {
            throw "Error! JSON cannot be serialized due to the required property 'inboxForwarderTestOptions' missing."
        } else {
            $InboxForwarderTestOptions = $JsonParameters.PSobject.Properties["inboxForwarderTestOptions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createInboxForwarderOptions"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createInboxForwarderOptions' missing."
        } else {
            $CreateInboxForwarderOptions = $JsonParameters.PSobject.Properties["createInboxForwarderOptions"].value
        }

        $PSO = [PSCustomObject]@{
            "inboxForwarderTestOptions" = ${InboxForwarderTestOptions}
            "createInboxForwarderOptions" = ${CreateInboxForwarderOptions}
        }

        return $PSO
    }

}

