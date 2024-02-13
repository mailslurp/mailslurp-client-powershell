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

Preview object for domain entity

.PARAMETER Id
No description available.
.PARAMETER Domain
No description available.
.PARAMETER CatchAllInboxId
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER DomainType
Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
.PARAMETER IsVerified
No description available.
.PARAMETER HasMissingRecords
No description available.
.OUTPUTS

DomainPreview<PSCustomObject>
#>

function Initialize-DomainPreview {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CatchAllInboxId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("HTTP_INBOX", "SMTP_DOMAIN")]
        [String]
        ${DomainType},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsVerified},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${HasMissingRecords}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => DomainPreview' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($Domain -eq $null) {
            throw "invalid value for 'Domain', 'Domain' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($DomainType -eq $null) {
            throw "invalid value for 'DomainType', 'DomainType' cannot be null."
        }

        if ($IsVerified -eq $null) {
            throw "invalid value for 'IsVerified', 'IsVerified' cannot be null."
        }

        if ($HasMissingRecords -eq $null) {
            throw "invalid value for 'HasMissingRecords', 'HasMissingRecords' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "domain" = ${Domain}
            "catchAllInboxId" = ${CatchAllInboxId}
            "createdAt" = ${CreatedAt}
            "domainType" = ${DomainType}
            "isVerified" = ${IsVerified}
            "hasMissingRecords" = ${HasMissingRecords}
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
        $AllProperties = ("id", "domain", "catchAllInboxId", "createdAt", "domainType", "isVerified", "hasMissingRecords")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domain"))) {
            throw "Error! JSON cannot be serialized due to the required property 'domain' missing."
        } else {
            $Domain = $JsonParameters.PSobject.Properties["domain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domainType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'domainType' missing."
        } else {
            $DomainType = $JsonParameters.PSobject.Properties["domainType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isVerified"))) {
            throw "Error! JSON cannot be serialized due to the required property 'isVerified' missing."
        } else {
            $IsVerified = $JsonParameters.PSobject.Properties["isVerified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasMissingRecords"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hasMissingRecords' missing."
        } else {
            $HasMissingRecords = $JsonParameters.PSobject.Properties["hasMissingRecords"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "catchAllInboxId"))) { #optional property not found
            $CatchAllInboxId = $null
        } else {
            $CatchAllInboxId = $JsonParameters.PSobject.Properties["catchAllInboxId"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "domain" = ${Domain}
            "catchAllInboxId" = ${CatchAllInboxId}
            "createdAt" = ${CreatedAt}
            "domainType" = ${DomainType}
            "isVerified" = ${IsVerified}
            "hasMissingRecords" = ${HasMissingRecords}
        }

        return $PSO
    }

}

