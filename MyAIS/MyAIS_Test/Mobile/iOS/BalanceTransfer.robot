*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/BalanceTransfer.txt

*** Test Cases ***
[F1_Service_IOS_1_2_Y_1_2] Verify Menu : Service

[F1_Service_IOS_1_2_Y_2_2] Verify Balance Transfer page

[F1_Service_IOS_1_2_Y_3_2] Balance Transfer Case : Transfer to Prepaid Number (3PE)

[F1_Service_IOS_1_2_N_4_2] Balance Transfer Case : Transfer to Prepaid Number (3BE)

[F1_Service_IOS_1_2_N_5_2] Balance Transfer Case : Transfer to Postpaid Number

[F1_Service_IOS_1_2_N_6_2] Balance Transfer Case : Transfer to other network

[F1_Service_IOS_1_2_N_7_2] Balance Transfer Case : Transfer to Self Number

[F1_Service_IOS_1_2_N_8_2] Balance Transfer Case : Not input destination number

[F1_Service_IOS_1_2_Y_9_2] Balance Transfer Case : Input destination number wrong format (eg. 6666666666)

[F1_Service_IOS_1_2_Y_10_2] Balance Transfer Case : Input destination number wrong digit (eg. 093701)

[F1_Service_IOS_1_2_Y_11_2] Balance Transfer Case : Not select amount

[F1_Service_IOS_1_2_N_12_2] Balance Transfer Case : Insufficient balance

[F1_Service_IOS_1_2_N_13_2] Balance Transfer Case : Destination number has max balance

[F1_Service_IOS_1_2_N_14_2] Balance Transfer Case : Source Number Status = suspend

[F1_Service_IOS_1_2_N_15_2] Balance Transfer Case : Destination Number Status = suspend

[F1_Service_IOS_1_2_N_16_2] Balance Transfer Case : Source Number = Black List

[F1_Service_IOS_1_2_N_17_2] Balance Transfer Case : Dest Number
    = Black List

[F1_Service_IOS_1_2_N_18_2] Balance Transfer Case : Source Number
    register date < 90 Days
