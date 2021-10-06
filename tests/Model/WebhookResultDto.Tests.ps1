#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'maislurp-client-powershell' -name 'WebhookResultDto' {
    Context 'WebhookResultDto' {
        It 'Initialize-WebhookResultDto' {
            # a simple test to create an object
            #$NewObject = Initialize-WebhookResultDto -CreatedAt "TEST_VALUE" -HttpMethod "TEST_VALUE" -Id "TEST_VALUE" -InboxId "TEST_VALUE" -MessageId "TEST_VALUE" -RedriveId "TEST_VALUE" -ResponseBodyExtract "TEST_VALUE" -ResponseStatus "TEST_VALUE" -ResponseTimeMillis "TEST_VALUE" -ResultType "TEST_VALUE" -Seen "TEST_VALUE" -UpdatedAt "TEST_VALUE" -UserId "TEST_VALUE" -WebhookEvent "TEST_VALUE" -WebhookId "TEST_VALUE" -WebhookUrl "TEST_VALUE"
            #$NewObject | Should -BeOfType WebhookResultDto
            #$NewObject.property | Should -Be 0
        }
    }
}
