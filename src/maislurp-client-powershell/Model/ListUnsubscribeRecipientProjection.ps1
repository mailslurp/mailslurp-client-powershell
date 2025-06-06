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

List unsubscribe recipient

.PARAMETER EmailAddress
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER DomainId
No description available.
.PARAMETER Id
No description available.
.OUTPUTS

ListUnsubscribeRecipientProjection<PSCustomObject>
#>

function Initialize-ListUnsubscribeRecipientProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DomainId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ListUnsubscribeRecipientProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($EmailAddress -eq $null) {
            throw "invalid value for 'EmailAddress', 'EmailAddress' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "emailAddress" = ${EmailAddress}
            "createdAt" = ${CreatedAt}
            "domainId" = ${DomainId}
            "id" = ${Id}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ListUnsubscribeRecipientProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to ListUnsubscribeRecipientProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ListUnsubscribeRecipientProjection<PSCustomObject>
#>
function ConvertFrom-JsonToListUnsubscribeRecipientProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ListUnsubscribeRecipientProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ListUnsubscribeRecipientProjection
        $AllProperties = ("emailAddress", "createdAt", "domainId", "id")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'emailAddress' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) {
            throw "Error! JSON cannot be serialized due to the required property 'emailAddress' missing."
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domainId"))) { #optional property not found
            $DomainId = $null
        } else {
            $DomainId = $JsonParameters.PSobject.Properties["domainId"].value
        }

        $PSO = [PSCustomObject]@{
            "emailAddress" = ${EmailAddress}
            "createdAt" = ${CreatedAt}
            "domainId" = ${DomainId}
            "id" = ${Id}
        }

        return $PSO
    }

}

