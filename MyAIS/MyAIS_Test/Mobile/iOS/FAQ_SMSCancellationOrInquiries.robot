*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/FAQ_SMSCancellationOrInquiries.txt

*** Test Cases ***
[F2_Help_IOS_1,3_1-2_Y_30_2] Go to SMS Cancellation/Inquiries

[F2_Help_IOS_1,3_1-2_Y_31_2] Go to SMS Cancellation/Inquiries Verify First question

[F2_Help_IOS_1,3_1-2_Y_32_2] Go to SMS Cancellation/Inquiries Verify Second question

[F2_Help_IOS_1,3_1-2_Y_33_2] Go to SMS Cancellation/Inquiries Verify Third question

[F2_Help_IOS_1,3_1-2_Y_34_2] Go to SMS Cancellation/Inquiries Verify Fourth question

[F2_Help_IOS_1,3_1-2_Y_35_2] Go to SMS Cancellation/Inquiries Verify Fifth question
