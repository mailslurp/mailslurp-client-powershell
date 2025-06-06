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

Email verification result. Valid means email address exists according to response from mail server running at the domain and port given.

.PARAMETER DomainName
No description available.
.PARAMETER Port
No description available.
.PARAMETER EmailAddress
No description available.
.PARAMETER IsValid
No description available.
.PARAMETER VarError
No description available.
.OUTPUTS

EmailVerificationResult<PSCustomObject>
#>

function Initialize-EmailVerificationResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DomainName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Port},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsValid},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarError}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => EmailVerificationResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($DomainName -eq $null) {
            throw "invalid value for 'DomainName', 'DomainName' cannot be null."
        }

        if ($Port -eq $null) {
            throw "invalid value for 'Port', 'Port' cannot be null."
        }

        if ($EmailAddress -eq $null) {
            throw "invalid value for 'EmailAddress', 'EmailAddress' cannot be null."
        }

        if ($IsValid -eq $null) {
            throw "invalid value for 'IsValid', 'IsValid' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "domainName" = ${DomainName}
            "port" = ${Port}
            "emailAddress" = ${EmailAddress}
            "isValid" = ${IsValid}
            "error" = ${VarError}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailVerificationResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailVerificationResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailVerificationResult<PSCustomObject>
#>
function ConvertFrom-JsonToEmailVerificationResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => EmailVerificationResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailVerificationResult
        $AllProperties = ("domainName", "port", "emailAddress", "isValid", "error")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'domainName' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domainName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'domainName' missing."
        } else {
            $DomainName = $JsonParameters.PSobject.Properties["domainName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "port"))) {
            throw "Error! JSON cannot be serialized due to the required property 'port' missing."
        } else {
            $Port = $JsonParameters.PSobject.Properties["port"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) {
            throw "Error! JSON cannot be serialized due to the required property 'emailAddress' missing."
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isValid"))) {
            throw "Error! JSON cannot be serialized due to the required property 'isValid' missing."
        } else {
            $IsValid = $JsonParameters.PSobject.Properties["isValid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "error"))) { #optional property not found
            $VarError = $null
        } else {
            $VarError = $JsonParameters.PSobject.Properties["error"].value
        }

        $PSO = [PSCustomObject]@{
            "domainName" = ${DomainName}
            "port" = ${Port}
            "emailAddress" = ${EmailAddress}
            "isValid" = ${IsValid}
            "error" = ${VarError}
        }

        return $PSO
    }

}

