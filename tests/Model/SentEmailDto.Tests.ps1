#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'maislurp-client-powershell' -name 'SentEmailDto' {
    Context 'SentEmailDto' {
        It 'Initialize-SentEmailDto' {
            # a simple test to create an object
            #$NewObject = Initialize-SentEmailDto -Id "TEST_VALUE" -UserId "TEST_VALUE" -InboxId "TEST_VALUE" -To "TEST_VALUE" -VarFrom "TEST_VALUE" -ReplyTo "TEST_VALUE" -Cc "TEST_VALUE" -Bcc "TEST_VALUE" -Attachments "TEST_VALUE" -Subject "TEST_VALUE" -BodyMD5Hash "TEST_VALUE" -Body "TEST_VALUE" -Charset "TEST_VALUE" -SentAt "TEST_VALUE" -PixelIds "TEST_VALUE" -Html "TEST_VALUE"
            #$NewObject | Should -BeOfType SentEmailDto
            #$NewObject.property | Should -Be 0
        }
    }
}
