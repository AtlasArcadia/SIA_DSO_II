*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/BalanceTransfer.txt

*** Test Cases ***
[F1_Service_IOS_1,3_1-2_Y_1_2] Verify Menu : Service
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Verify Service Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_Y_2_2] Verify Balance Transfer page
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Verify Balance Transfer Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_Y_3_2] Balance Transfer Case : Transfer to Prepaid Number (3PE)
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_4_2] Balance Transfer Case : Transfer to Prepaid Number (3BE)
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_5_2] Balance Transfer Case : Transfer to Postpaid Number
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_6_2] Balance Transfer Case : Transfer to other network
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${DtacNumber}    #Other Network Number
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Balance Transfer To Other Network
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_7_2] Balance Transfer Case : Transfer to Self Number
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${Number}    #MyNumber
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Balance Transfer To Self Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_8_2] Balance Transfer Case : Not input destination number
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Select Min Amount
    Click OK Button
    Verify Not Input Destination Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_9_2] Balance Transfer Case : Input destination number wrong format (eg. 6666666666)
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${WrongFormatNumber}    #WrongFormat
    Select Min Amount
    Click OK Button
    Verify Input Wrong Format Destination Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_Y_10_2] Balance Transfer Case : Input destination number wrong digit (eg. 093701)
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${WrongDigitNumber}    #WrongFormat
    Select Min Amount
    Click OK Button
    Verify Input Wrong Format Destination Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_Y_11_2] Balance Transfer Case : Not select amount
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${AISPrepaidNumberTest}
    Click OK Button
    Verify Not Select Amount
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_12_2] Balance Transfer Case : Insufficient balance
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_13_2] Balance Transfer Case : Destination number has max balance
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${AISNonBosPrepaidMaxBalance}    #MaxBlance
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Transfer To Max Balance Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_14_2] Balance Transfer Case : Source Number Status = suspend
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_Suspend=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Suspend
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Verify Balance Transfer Source Suspend Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_15_2] Balance Transfer Case : Destination Number Status = suspend
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    0925380508    #${AISNonBosPrepaidSuspensionNumberTest}
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Balance Transfer To Suspend Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_16_2] Balance Transfer Case : Source Number = Black List
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_17_2] Balance Transfer Case : Dest Number = Black List
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_18_2] Balance Transfer Case : Source Number register date < 90 Days
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
