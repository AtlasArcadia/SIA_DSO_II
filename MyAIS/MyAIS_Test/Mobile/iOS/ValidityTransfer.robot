*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/ValidityTransfer.txt

*** Test Cases ***
[F2_Service_IOS_1_2_Y_1_2] Verify Validity Transfer page

[F2_Service_IOS_1_2_Y_2_2] Validity Transfer Case : Transfer to Prepaid Number (3PE)

[F2_Service_IOS_1_2_Y_3_2] Validity Transfer Case : Transfer to Prepaid Number (3BE)

[F2_Service_IOS_1_2_N_4_2] Validity Transfer Case : Transfer to Postpaid Number

[F2_Service_IOS_1_2_N_5_2] Validity Transfer Case : Transfer to other network

[F2_Service_IOS_1_2_N_6_2] Validity Transfer Case : Transfer to Self Number

[F2_Service_IOS_1_2_N_7_2] Validity Transfer Case : Not input destination number

[F2_Service_IOS_1_2_N_8_2] Validity Transfer Case : Input destination number wrong format (eg. 6666666666)

[F2_Service_IOS_1_2_Y_9_2] Validity Transfer Case : Input destination number wrong digit (eg. 093701)

[F2_Service_IOS_1_2_Y_10_2] Validity Transfer Case : Not select amount

[F2_Service_IOS_1_2_Y_11_2] Validity TransferCase : Insufficient Balance

[F2_Service_IOS_1_2_N_12_2] Validity TransferCase : Insufficient Validity

[F2_Service_IOS_1_2_N_13_2] Validity Transfer Case : Destination number has max Validity

[F2_Service_IOS_1_2_N_14_2] Validity Transfer Case : Source Number Status = suspend

[F2_Service_IOS_1_2_N_15_2] Validity Transfer Case : Destination Number Status = suspend

[F2_Service_IOS_1_2_N_16_2] Validity Transfer Case : Source Number = Black List

[F2_Service_IOS_1_2_N_17_2] Validity Transfer Case : Dest Number = Black List

[F2_Service_IOS_1_2_N_18_2] Validity Transfer Case : Source Number register date < 30 Days
