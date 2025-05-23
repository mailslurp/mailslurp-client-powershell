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

JSON output schema for structured content repsonses. This schema dictates the format that an AI should use when responding to your instructions.

.PARAMETER AnyOf
No description available.
.PARAMETER Default
No description available.
.PARAMETER Description
Provide a description of the schema to help the AI understand the schema.
.PARAMETER Enum
When using type string and format enum pass a collection of enum values here.
.PARAMETER Example
No description available.
.PARAMETER Format
Format for string types. Can be null, date-time or enum.
.PARAMETER Items
No description available.
.PARAMETER MaxItems
No description available.
.PARAMETER MinItems
No description available.
.PARAMETER MaxLength
No description available.
.PARAMETER MinLength
No description available.
.PARAMETER Pattern
No description available.
.PARAMETER Properties
Properties of an OBJECT schema. These are key value pairs where the key is the property name and the value is the schema for that property.
.PARAMETER PropertyOrdering
Pass an array of property names to specify the order of properties in the generated JSON object if required.
.PARAMETER Required
No description available.
.PARAMETER MaxProperties
No description available.
.PARAMETER MinProperties
No description available.
.PARAMETER Maximum
No description available.
.PARAMETER Minimum
No description available.
.PARAMETER Nullable
No description available.
.PARAMETER Title
No description available.
.PARAMETER Type
Primitive JSON schema types with a fallback CUSTOM for unknown values.
.OUTPUTS

StructuredOutputSchema<PSCustomObject>
#>

function Initialize-StructuredOutputSchema {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AnyOf},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Default},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Enum},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Example},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Format},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Items},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxItems},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MinItems},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxLength},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MinLength},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Pattern},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Properties},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${PropertyOrdering},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Required},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MaxProperties},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MinProperties},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Maximum},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Minimum},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Nullable},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("string", "number", "integer", "boolean", "object", "array", "null")]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => StructuredOutputSchema' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($MaxItems -and $MaxItems -lt 0) {
          throw "invalid value for 'MaxItems', must be greater than or equal to 0."
        }

        if ($MinItems -and $MinItems -lt 0) {
          throw "invalid value for 'MinItems', must be greater than or equal to 0."
        }

        if ($MaxLength -and $MaxLength -lt 0) {
          throw "invalid value for 'MaxLength', must be greater than or equal to 0."
        }

        if ($MinLength -and $MinLength -lt 0) {
          throw "invalid value for 'MinLength', must be greater than or equal to 0."
        }

        if ($MaxProperties -and $MaxProperties -lt 0) {
          throw "invalid value for 'MaxProperties', must be greater than or equal to 0."
        }

        if ($MinProperties -and $MinProperties -lt 0) {
          throw "invalid value for 'MinProperties', must be greater than or equal to 0."
        }


        $PSO = [PSCustomObject]@{
            "anyOf" = ${AnyOf}
            "default" = ${Default}
            "description" = ${Description}
            "enum" = ${Enum}
            "example" = ${Example}
            "format" = ${Format}
            "items" = ${Items}
            "maxItems" = ${MaxItems}
            "minItems" = ${MinItems}
            "maxLength" = ${MaxLength}
            "minLength" = ${MinLength}
            "pattern" = ${Pattern}
            "properties" = ${Properties}
            "propertyOrdering" = ${PropertyOrdering}
            "required" = ${Required}
            "maxProperties" = ${MaxProperties}
            "minProperties" = ${MinProperties}
            "maximum" = ${Maximum}
            "minimum" = ${Minimum}
            "nullable" = ${Nullable}
            "title" = ${Title}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StructuredOutputSchema<PSCustomObject>

.DESCRIPTION

Convert from JSON to StructuredOutputSchema<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StructuredOutputSchema<PSCustomObject>
#>
function ConvertFrom-JsonToStructuredOutputSchema {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => StructuredOutputSchema' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in StructuredOutputSchema
        $AllProperties = ("anyOf", "default", "description", "enum", "example", "format", "items", "maxItems", "minItems", "maxLength", "minLength", "pattern", "properties", "propertyOrdering", "required", "maxProperties", "minProperties", "maximum", "minimum", "nullable", "title", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "anyOf"))) { #optional property not found
            $AnyOf = $null
        } else {
            $AnyOf = $JsonParameters.PSobject.Properties["anyOf"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "default"))) { #optional property not found
            $Default = $null
        } else {
            $Default = $JsonParameters.PSobject.Properties["default"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enum"))) { #optional property not found
            $Enum = $null
        } else {
            $Enum = $JsonParameters.PSobject.Properties["enum"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "example"))) { #optional property not found
            $Example = $null
        } else {
            $Example = $JsonParameters.PSobject.Properties["example"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "format"))) { #optional property not found
            $Format = $null
        } else {
            $Format = $JsonParameters.PSobject.Properties["format"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "items"))) { #optional property not found
            $Items = $null
        } else {
            $Items = $JsonParameters.PSobject.Properties["items"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxItems"))) { #optional property not found
            $MaxItems = $null
        } else {
            $MaxItems = $JsonParameters.PSobject.Properties["maxItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minItems"))) { #optional property not found
            $MinItems = $null
        } else {
            $MinItems = $JsonParameters.PSobject.Properties["minItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxLength"))) { #optional property not found
            $MaxLength = $null
        } else {
            $MaxLength = $JsonParameters.PSobject.Properties["maxLength"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minLength"))) { #optional property not found
            $MinLength = $null
        } else {
            $MinLength = $JsonParameters.PSobject.Properties["minLength"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pattern"))) { #optional property not found
            $Pattern = $null
        } else {
            $Pattern = $JsonParameters.PSobject.Properties["pattern"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "propertyOrdering"))) { #optional property not found
            $PropertyOrdering = $null
        } else {
            $PropertyOrdering = $JsonParameters.PSobject.Properties["propertyOrdering"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "required"))) { #optional property not found
            $Required = $null
        } else {
            $Required = $JsonParameters.PSobject.Properties["required"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxProperties"))) { #optional property not found
            $MaxProperties = $null
        } else {
            $MaxProperties = $JsonParameters.PSobject.Properties["maxProperties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minProperties"))) { #optional property not found
            $MinProperties = $null
        } else {
            $MinProperties = $JsonParameters.PSobject.Properties["minProperties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maximum"))) { #optional property not found
            $Maximum = $null
        } else {
            $Maximum = $JsonParameters.PSobject.Properties["maximum"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minimum"))) { #optional property not found
            $Minimum = $null
        } else {
            $Minimum = $JsonParameters.PSobject.Properties["minimum"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nullable"))) { #optional property not found
            $Nullable = $null
        } else {
            $Nullable = $JsonParameters.PSobject.Properties["nullable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "title"))) { #optional property not found
            $Title = $null
        } else {
            $Title = $JsonParameters.PSobject.Properties["title"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "anyOf" = ${AnyOf}
            "default" = ${Default}
            "description" = ${Description}
            "enum" = ${Enum}
            "example" = ${Example}
            "format" = ${Format}
            "items" = ${Items}
            "maxItems" = ${MaxItems}
            "minItems" = ${MinItems}
            "maxLength" = ${MaxLength}
            "minLength" = ${MinLength}
            "pattern" = ${Pattern}
            "properties" = ${Properties}
            "propertyOrdering" = ${PropertyOrdering}
            "required" = ${Required}
            "maxProperties" = ${MaxProperties}
            "minProperties" = ${MinProperties}
            "maximum" = ${Maximum}
            "minimum" = ${Minimum}
            "nullable" = ${Nullable}
            "title" = ${Title}
            "type" = ${Type}
        }

        return $PSO
    }

}

