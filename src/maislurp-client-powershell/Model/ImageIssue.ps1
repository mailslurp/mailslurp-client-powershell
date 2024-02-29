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

No description available.

.PARAMETER Url
No description available.
.PARAMETER ResponseStatus
No description available.
.PARAMETER Severity
No description available.
.PARAMETER Message
No description available.
.OUTPUTS

ImageIssue<PSCustomObject>
#>

function Initialize-ImageIssue {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ResponseStatus},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Warning", "Error")]
        [String]
        ${Severity},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ImageIssue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Url -eq $null) {
            throw "invalid value for 'Url', 'Url' cannot be null."
        }

        if ($Severity -eq $null) {
            throw "invalid value for 'Severity', 'Severity' cannot be null."
        }

        if ($Message -eq $null) {
            throw "invalid value for 'Message', 'Message' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "url" = ${Url}
            "responseStatus" = ${ResponseStatus}
            "severity" = ${Severity}
            "message" = ${Message}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ImageIssue<PSCustomObject>

.DESCRIPTION

Convert from JSON to ImageIssue<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ImageIssue<PSCustomObject>
#>
function ConvertFrom-JsonToImageIssue {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ImageIssue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ImageIssue
        $AllProperties = ("url", "responseStatus", "severity", "message")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'url' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) {
            throw "Error! JSON cannot be serialized due to the required property 'url' missing."
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "severity"))) {
            throw "Error! JSON cannot be serialized due to the required property 'severity' missing."
        } else {
            $Severity = $JsonParameters.PSobject.Properties["severity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) {
            throw "Error! JSON cannot be serialized due to the required property 'message' missing."
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "responseStatus"))) { #optional property not found
            $ResponseStatus = $null
        } else {
            $ResponseStatus = $JsonParameters.PSobject.Properties["responseStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "url" = ${Url}
            "responseStatus" = ${ResponseStatus}
            "severity" = ${Severity}
            "message" = ${Message}
        }

        return $PSO
    }

}
