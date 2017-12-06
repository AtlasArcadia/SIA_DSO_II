*** Settings ***
Resource          ../Resource/PageKeywords/ConsultAgent.txt
Resource          ../../../../Config/LocalConfig.txt

*** Test Cases ***
[F1_Help_IOS_1,3_1-2_Y_1_2] Go to Ask Aunjai menu

[F1_Help_IOS_1,3_1-2_Y_2_2] Verify Help&Support page
