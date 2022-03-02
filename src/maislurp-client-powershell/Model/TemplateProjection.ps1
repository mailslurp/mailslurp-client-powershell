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

.PARAMETER Name
No description available.
.PARAMETER Id
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER UpdatedAt
No description available.
.PARAMETER Variables
No description available.
.OUTPUTS

TemplateProjection<PSCustomObject>
#>

function Initialize-TemplateProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${UpdatedAt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Variables}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => TemplateProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Name -eq $null) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($UpdatedAt -eq $null) {
            throw "invalid value for 'UpdatedAt', 'UpdatedAt' cannot be null."
        }

        if ($Variables -eq $null) {
            throw "invalid value for 'Variables', 'Variables' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "id" = ${Id}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
            "variables" = ${Variables}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TemplateProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to TemplateProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TemplateProjection<PSCustomObject>
#>
function ConvertFrom-JsonToTemplateProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => TemplateProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TemplateProjection
        $AllProperties = ("name", "id", "createdAt", "updatedAt", "variables")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'updatedAt' missing."
        } else {
            $UpdatedAt = $JsonParameters.PSobject.Properties["updatedAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "variables"))) {
            throw "Error! JSON cannot be serialized due to the required property 'variables' missing."
        } else {
            $Variables = $JsonParameters.PSobject.Properties["variables"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "id" = ${Id}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
            "variables" = ${Variables}
        }

        return $PSO
    }

}

