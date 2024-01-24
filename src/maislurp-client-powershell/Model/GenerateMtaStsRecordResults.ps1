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

.PARAMETER Name
No description available.
.PARAMETER Type
Domain Name Server Record Types
.PARAMETER Ttl
No description available.
.PARAMETER Value
No description available.
.PARAMETER WellKnownValue
No description available.
.PARAMETER WellKnownUrl
No description available.
.OUTPUTS

GenerateMtaStsRecordResults<PSCustomObject>
#>

function Initialize-GenerateMtaStsRecordResults {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("A", "NS", "MD", "MF", "CNAME", "SOA", "MB", "MG", "MR", "NULL", "WKS", "PTR", "HINFO", "MINFO", "MX", "TXT", "RP", "AFSDB", "X25", "ISDN", "RT", "NSAP", "NSAP_PTR", "SIG", "KEY", "PX", "GPOS", "AAAA", "LOC", "NXT", "EID", "NIMLOC", "SRV", "ATMA", "NAPTR", "KX", "CERT", "A6", "DNAME", "SINK", "OPT", "APL", "DS", "SSHFP", "IPSECKEY", "RRSIG", "NSEC", "DNSKEY", "DHCID", "NSEC3", "NSEC3PARAM", "TLSA", "SMIMEA", "HIP", "NINFO", "RKEY", "TALINK", "CDS", "CDNSKEY", "OPENPGPKEY", "CSYNC", "ZONEMD", "SVCB", "HTTPS", "SPF", "UINFO", "UID", "GID", "UNSPEC", "NID", "L32", "L64", "LP", "EUI48", "EUI64", "TKEY", "TSIG", "IXFR", "AXFR", "MAILB", "MAILA", "ANY", "URI", "CAA", "AVC", "DOA", "AMTRELAY", "TA", "DLV")]
        [String]
        ${Type},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Ttl},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WellKnownValue},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WellKnownUrl}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => GenerateMtaStsRecordResults' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Name -eq $null) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Type -eq $null) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($Ttl -eq $null) {
            throw "invalid value for 'Ttl', 'Ttl' cannot be null."
        }

        if ($Value -eq $null) {
            throw "invalid value for 'Value', 'Value' cannot be null."
        }

        if ($WellKnownValue -eq $null) {
            throw "invalid value for 'WellKnownValue', 'WellKnownValue' cannot be null."
        }

        if ($WellKnownUrl -eq $null) {
            throw "invalid value for 'WellKnownUrl', 'WellKnownUrl' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "ttl" = ${Ttl}
            "value" = ${Value}
            "wellKnownValue" = ${WellKnownValue}
            "wellKnownUrl" = ${WellKnownUrl}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GenerateMtaStsRecordResults<PSCustomObject>

.DESCRIPTION

Convert from JSON to GenerateMtaStsRecordResults<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GenerateMtaStsRecordResults<PSCustomObject>
#>
function ConvertFrom-JsonToGenerateMtaStsRecordResults {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => GenerateMtaStsRecordResults' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GenerateMtaStsRecordResults
        $AllProperties = ("name", "type", "ttl", "value", "wellKnownValue", "wellKnownUrl")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ttl"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ttl' missing."
        } else {
            $Ttl = $JsonParameters.PSobject.Properties["ttl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) {
            throw "Error! JSON cannot be serialized due to the required property 'value' missing."
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "wellKnownValue"))) {
            throw "Error! JSON cannot be serialized due to the required property 'wellKnownValue' missing."
        } else {
            $WellKnownValue = $JsonParameters.PSobject.Properties["wellKnownValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "wellKnownUrl"))) {
            throw "Error! JSON cannot be serialized due to the required property 'wellKnownUrl' missing."
        } else {
            $WellKnownUrl = $JsonParameters.PSobject.Properties["wellKnownUrl"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "ttl" = ${Ttl}
            "value" = ${Value}
            "wellKnownValue" = ${WellKnownValue}
            "wellKnownUrl" = ${WellKnownUrl}
        }

        return $PSO
    }

}
