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

.PARAMETER CreatedAt
No description available.
.PARAMETER VarFrom
No description available.
.PARAMETER Id
No description available.
.PARAMETER Subject
No description available.
.PARAMETER To
No description available.
.OUTPUTS

UnknownMissedEmailProjection<PSCustomObject>
#>

function Initialize-UnknownMissedEmailProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFrom},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${To}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => UnknownMissedEmailProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "createdAt" = ${CreatedAt}
            "from" = ${VarFrom}
            "id" = ${Id}
            "subject" = ${Subject}
            "to" = ${To}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UnknownMissedEmailProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to UnknownMissedEmailProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UnknownMissedEmailProjection<PSCustomObject>
#>
function ConvertFrom-JsonToUnknownMissedEmailProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => UnknownMissedEmailProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UnknownMissedEmailProjection
        $AllProperties = ("createdAt", "from", "id", "subject", "to")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'createdAt' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "from"))) { #optional property not found
            $VarFrom = $null
        } else {
            $VarFrom = $JsonParameters.PSobject.Properties["from"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "to"))) { #optional property not found
            $To = $null
        } else {
            $To = $JsonParameters.PSobject.Properties["to"].value
        }

        $PSO = [PSCustomObject]@{
            "createdAt" = ${CreatedAt}
            "from" = ${VarFrom}
            "id" = ${Id}
            "subject" = ${Subject}
            "to" = ${To}
        }

        return $PSO
    }

}
