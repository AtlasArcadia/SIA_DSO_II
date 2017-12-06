*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/HowToUse.txt

*** Test Cases ***
[F3_Help_IOS_1,3_1-2_Y_1_2] Go to How to use

[F3_Help_IOS_1,3_1-2_Y_2_2] Go to How to use Verify First question

[F3_Help_IOS_1,3_1-2_Y_3_2] Go to How to use Verify Second question

[F3_Help_IOS_1,3_1-2_Y_4_2] Go to How to use Verify Third question

[F3_Help_IOS_1,3_1-2_Y_5_2] Go to How to use Verify Fourth question

[F3_Help_IOS_1,3_1-2_Y_6_2] Go to How to use Verify Fifth question

[F3_Help_IOS_1,3_1-2_Y_7_2] Go to How to use Verify Sixth question

[F3_Help_IOS_1,3_1-2_Y_8_2] Go to How to use Verify Seventh question
