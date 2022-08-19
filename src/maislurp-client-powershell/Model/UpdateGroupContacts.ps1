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

Update group contacts options. Pass a list of contact ids to replace existing group contacts.

.PARAMETER ContactIds
No description available.
.OUTPUTS

UpdateGroupContacts<PSCustomObject>
#>

function Initialize-UpdateGroupContacts {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ContactIds}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => UpdateGroupContacts' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($ContactIds -eq $null) {
            throw "invalid value for 'ContactIds', 'ContactIds' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "contactIds" = ${ContactIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UpdateGroupContacts<PSCustomObject>

.DESCRIPTION

Convert from JSON to UpdateGroupContacts<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UpdateGroupContacts<PSCustomObject>
#>
function ConvertFrom-JsonToUpdateGroupContacts {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => UpdateGroupContacts' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UpdateGroupContacts
        $AllProperties = ("contactIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'contactIds' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contactIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'contactIds' missing."
        } else {
            $ContactIds = $JsonParameters.PSobject.Properties["contactIds"].value
        }

        $PSO = [PSCustomObject]@{
            "contactIds" = ${ContactIds}
        }

        return $PSO
    }

}

