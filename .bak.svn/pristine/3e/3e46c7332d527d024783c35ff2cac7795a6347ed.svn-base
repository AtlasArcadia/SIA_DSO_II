*** Settings ***
Resource          Resource/PageKeywords/BalanceTransfer.txt
Resource          ../../../Config/LocalConfig.txt

*** Test Cases ***
BalanceTransfer Check BalanceFrom Home
    [Tags]    success    login    3BE    active    regression    demo
    &{#dict_device_name1}=    Create Dictionary
    &{#dict_device_name1}=    Take And Define Virtual Local Configuration    ${#dict_device_name1}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    &{#dict_device_name2}=    Create Dictionary
    &{#dict_device_name2}=    Take And Define Virtual Local Configuration    ${#dict_device_name2}    ${lo_MyAIS_local_config_file_path}    virtual_device_2    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number1}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${Number2}    Get From Dictionary    ${virtual_device_2_Number}    ${ar_NType}
    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number1}    Wifi
    Wait Mobile Until Element Visible    ${lblRemainBalance}
    ${remBalanceBeforeTransfer}=    Get mobile text    ${lblRemainBalance}
    log    ${remBalanceBeforeTransfer}
    Close Application
    Open My AIS    ${virtual_device_2_IPAppium}    ${virtual_device_2_Platfrom_Name}    ${virtual_device_2_Platfrom_Version}    ${virtual_device_2_SN}
    Login    ${virtual_device_2_IPAppium}    ${virtual_device_2_Platfrom_Name}    ${virtual_device_2_Platfrom_Version}    ${virtual_device_2_SN}    ${Number2}    Wifi
    Click Mobile Element    ${mnuTopup}
    Click Mobile Element    ${mnuService}
    Click Mobile Element    ${subMnuBalanceTransfer}
    Input Mobile Text    ${BalanceTransferDestinationTransfer}    ${Number1}
    Click Mobile Element    ${ddlBalanceTransferAmount}
    ${transferAmount}    Set Variable    xpath=//*[@name="10"]
    Click Mobile Element    ${transferAmount}
    Click Mobile Element    ${btnBalanceTransferOK}
    Click Mobile Element    ${btnBalanceTransferConfirm}
    Sleep    5
    Close Application
    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number1}    Wifi
    Wait Mobile Until Element Visible    ${lblRemainBalance}
    ${remBalanceAferTransfer}=    Get mobile text    ${lblRemainBalance}
    log    ${remBalanceBeforeTransfer}
    ${NewBalance}=    Set Variable    Convert To Number    ${remBalanceBeforeTransfer}    2
    ${toralTransfer}=    Set Variable    10
    ${NewBalance}=    Set Variable    ${NewBalance}+${toralTransfer}
    Should Be Equal    ${remBalanceBeforeTransfer}    ${NewBalance}
    [Teardown]    Keywords For Teardown    ${#dict_device_name1}    ${#dict_device_name2}


*** Keywords ***
Keywords For Teardown
    [Arguments]    ${#dict_device_name1}    ${#dict_device_name2}
    Run Keyword If Test Failed    Capture Screen with Specific name
    Run Keyword If Test Failed    Log Dialog Msg From MyAIS
    Run Keyword And Ignore Error    Logout
    Run Keyword And Continue On Failure    Close Application
    Release Virtual Local Configurations    ${lo_MyAIS_local_config_file_path}    ${#dict_device_name1}
    Release Virtual Local Configurations    ${lo_MyAIS_local_config_file_path}    ${#dict_device_name2}
