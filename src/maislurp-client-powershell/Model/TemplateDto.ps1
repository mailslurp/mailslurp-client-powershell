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

No description available.

.PARAMETER Content
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER Id
No description available.
.PARAMETER Name
No description available.
.PARAMETER Variables
No description available.
.OUTPUTS

TemplateDto<PSCustomObject>
#>

function Initialize-TemplateDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Content},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Variables}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => TemplateDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Content -eq $null) {
            throw "invalid value for 'Content', 'Content' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($Name -eq $null) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Variables -eq $null) {
            throw "invalid value for 'Variables', 'Variables' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "content" = ${Content}
            "createdAt" = ${CreatedAt}
            "id" = ${Id}
            "name" = ${Name}
            "variables" = ${Variables}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TemplateDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to TemplateDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TemplateDto<PSCustomObject>
#>
function ConvertFrom-JsonToTemplateDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => TemplateDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TemplateDto
        $AllProperties = ("content", "createdAt", "id", "name", "variables")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "variables"))) {
            throw "Error! JSON cannot be serialized due to the required property 'variables' missing."
        } else {
            $Variables = $JsonParameters.PSobject.Properties["variables"].value
        }

        $PSO = [PSCustomObject]@{
            "content" = ${Content}
            "createdAt" = ${CreatedAt}
            "id" = ${Id}
            "name" = ${Name}
            "variables" = ${Variables}
        }

        return $PSO
    }

}

