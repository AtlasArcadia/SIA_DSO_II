*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/Domestic_ChangePricePlan.txt

*** Test Cases ***
[F3_Package_IOS_1-3_1-2_Y_1_2] Verify page Change Price Plan
    [Documentation]    Owner :
    ...
    ...    TestStep
    [Tags]    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ...    HaveOnTop=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveOnTop
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    Package
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_2_2] Change Price Plan Verify page Talk & Net Plan
    [Documentation]    Owner :
    ...
    ...    TestStep
    [Tags]    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ...    HaveOnTop=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveOnTop
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    Package
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_3_2] Change Price Plan Verify page Internet Plan
    [Documentation]    Owner :
    ...
    ...    TestStep
    [Tags]    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ...    HaveOnTop=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveOnTop
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    Package
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_4_2] Change Price Plan Verify page Talk Plan
    [Documentation]    Owner :
    ...
    ...    TestStep
    [Tags]    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ...    HaveOnTop=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveOnTop
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    Package
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_5_2] Change Price Plan Talk & Net Plan
    [Documentation]    Owner :
    ...
    ...    TestStep
    [Tags]    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ...    HaveOnTop=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveOnTop
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    Package
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_6_2] Change Price Plan Internet Plan
    [Documentation]    Owner :
    ...
    ...    TestStep
    [Tags]    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ...    HaveOnTop=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveOnTop
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    Package
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_7_2] Change Main package Talk Plan In case: Buffet
    [Documentation]    Owner :
    ...
    ...    TestStep
    [Tags]    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ...    HaveOnTop=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveOnTop
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    Package
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_8_2] Change Main package Talk Plan In case : Call to All Networks
    [Documentation]    Owner :
    ...
    ...    TestStep
    [Tags]    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ...    HaveOnTop=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveOnTop
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    Package
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_9_2] Change Main package Talk Plan In case : Call to AIS
    [Documentation]    Owner :
    ...
    ...    TestStep
    [Tags]    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ...    HaveOnTop=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveOnTop
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    Package
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
