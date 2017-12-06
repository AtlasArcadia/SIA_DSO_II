*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/FAQ_SpecialCampaignAndPrivileges.txt

*** Test Cases ***
[F2_Help_IOS_1,3_1-2_Y_56_2] Go to Special campaign & Privileges

[F2_Help_IOS_1,3_1-2_Y_57_2] Go to Special campaign & Privileges - Serenade privileges Verify First question

[F2_Help_IOS_1,3_1-2_Y_58_2] Go to Special campaign & Privileges - Serenade privileges Verify Second question

[F2_Help_IOS_1,3_1-2_Y_59_2] Go to Special campaign & Privileges - Serenade Card & Stricker Verify First question

[F2_Help_IOS_1,3_1-2_Y_60_2] Go to Special campaign & Privileges - Serenade Card & Stricker Verify Second question
