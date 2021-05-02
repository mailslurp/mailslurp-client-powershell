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

Preview object for domain entity

.PARAMETER CatchAllInboxId
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER Domain
No description available.
.PARAMETER Id
No description available.
.OUTPUTS

DomainPreview<PSCustomObject>
#>

function Initialize-DomainPreview {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CatchAllInboxId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => DomainPreview' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($Domain -eq $null) {
            throw "invalid value for 'Domain', 'Domain' cannot be null."
        }

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "catchAllInboxId" = ${CatchAllInboxId}
            "createdAt" = ${CreatedAt}
            "domain" = ${Domain}
            "id" = ${Id}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainPreview<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainPreview<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainPreview<PSCustomObject>
#>
function ConvertFrom-JsonToDomainPreview {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => DomainPreview' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DomainPreview
        $AllProperties = ("catchAllInboxId", "createdAt", "domain", "id")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domain"))) {
            throw "Error! JSON cannot be serialized due to the required property 'domain' missing."
        } else {
            $Domain = $JsonParameters.PSobject.Properties["domain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "catchAllInboxId"))) { #optional property not found
            $CatchAllInboxId = $null
        } else {
            $CatchAllInboxId = $JsonParameters.PSobject.Properties["catchAllInboxId"].value
        }

        $PSO = [PSCustomObject]@{
            "catchAllInboxId" = ${CatchAllInboxId}
            "createdAt" = ${CreatedAt}
            "domain" = ${Domain}
            "id" = ${Id}
        }

        return $PSO
    }

}

