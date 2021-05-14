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

Domain plus verification records and status

.PARAMETER CatchAllInboxId
The optional catch all inbox that will receive emails sent to the domain that cannot be matched.
.PARAMETER CreatedAt
No description available.
.PARAMETER DkimTokens
Unique token DKIM tokens
.PARAMETER Domain
Custom domain name
.PARAMETER DomainNameRecords
List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider.
.PARAMETER Id
No description available.
.PARAMETER IsVerified
Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records.
.PARAMETER UpdatedAt
No description available.
.PARAMETER UserId
No description available.
.PARAMETER VerificationToken
Verification tokens
.OUTPUTS

DomainDto<PSCustomObject>
#>

function Initialize-DomainDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CatchAllInboxId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${DkimTokens},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${DomainNameRecords},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsVerified},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${UpdatedAt},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VerificationToken}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => DomainDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($UpdatedAt -eq $null) {
            throw "invalid value for 'UpdatedAt', 'UpdatedAt' cannot be null."
        }

        if ($UserId -eq $null) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "catchAllInboxId" = ${CatchAllInboxId}
            "createdAt" = ${CreatedAt}
            "dkimTokens" = ${DkimTokens}
            "domain" = ${Domain}
            "domainNameRecords" = ${DomainNameRecords}
            "id" = ${Id}
            "isVerified" = ${IsVerified}
            "updatedAt" = ${UpdatedAt}
            "userId" = ${UserId}
            "verificationToken" = ${VerificationToken}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainDto<PSCustomObject>
#>
function ConvertFrom-JsonToDomainDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => DomainDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DomainDto
        $AllProperties = ("catchAllInboxId", "createdAt", "dkimTokens", "domain", "domainNameRecords", "id", "isVerified", "updatedAt", "userId", "verificationToken")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'updatedAt' missing."
        } else {
            $UpdatedAt = $JsonParameters.PSobject.Properties["updatedAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "catchAllInboxId"))) { #optional property not found
            $CatchAllInboxId = $null
        } else {
            $CatchAllInboxId = $JsonParameters.PSobject.Properties["catchAllInboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dkimTokens"))) { #optional property not found
            $DkimTokens = $null
        } else {
            $DkimTokens = $JsonParameters.PSobject.Properties["dkimTokens"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domain"))) { #optional property not found
            $Domain = $null
        } else {
            $Domain = $JsonParameters.PSobject.Properties["domain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domainNameRecords"))) { #optional property not found
            $DomainNameRecords = $null
        } else {
            $DomainNameRecords = $JsonParameters.PSobject.Properties["domainNameRecords"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isVerified"))) { #optional property not found
            $IsVerified = $null
        } else {
            $IsVerified = $JsonParameters.PSobject.Properties["isVerified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "verificationToken"))) { #optional property not found
            $VerificationToken = $null
        } else {
            $VerificationToken = $JsonParameters.PSobject.Properties["verificationToken"].value
        }

        $PSO = [PSCustomObject]@{
            "catchAllInboxId" = ${CatchAllInboxId}
            "createdAt" = ${CreatedAt}
            "dkimTokens" = ${DkimTokens}
            "domain" = ${Domain}
            "domainNameRecords" = ${DomainNameRecords}
            "id" = ${Id}
            "isVerified" = ${IsVerified}
            "updatedAt" = ${UpdatedAt}
            "userId" = ${UserId}
            "verificationToken" = ${VerificationToken}
        }

        return $PSO
    }

}

