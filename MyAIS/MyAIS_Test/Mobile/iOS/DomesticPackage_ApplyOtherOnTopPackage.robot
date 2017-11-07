*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/DomesticPackage_ApplyOtherOnTopPackage.txt

*** Test Cases ***
[F5_Package_IOS_1-3_1-2_Y_1_2] Verify page Apply Other OnTop Package
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

[F5_Package_IOS_1-3_1-2_Y_2_2] Verify page Apply Other OnTop Package menu: Talk & Net OnTop Package
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

[F5_Package_IOS_1-3_1-2_Y_3_2] Verify page Apply Other OnTop Package menu: Internet OnTop Package
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

[F5_Package_IOS_1-3_1-2_Y_4_2] Verify page Apply Other OnTop Package menu: Talk OnTop Package
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

[F5_Package_IOS_1,3_1-2_Y_5_2] Apply Other OnTop PackageIn case : Talk & Net OnTop Package
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

[F5_Package_IOS_1,3_1-2_Y_6_2] Apply Other OnTop PackageIn case : Internet OnTop Package - Entertainment
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

[F5_Package_IOS_1,3_1-2_Y_7_2] Apply Other OnTop PackageIn case : Internet OnTop Package - OneTime OnTop Package
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

[F5_Package_IOS_1,3_1-2_Y_8_2] Apply Other OnTop PackageIn case : Internet OnTop Package - Monthly OnTop Package
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

[F5_Package_IOS_1,3_1-2_Y_9_2] Apply Other OnTop PackageIn case : Internet OnTop Package - WiFi
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

[F5_Package_IOS_1,3_1-2_Y_10_2] Apply Other OnTop PackageIn case : Talk OnTop Package - Buffet OnTop Package
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

[F5_Package_IOS_1,3_1-2_Y_11_2] Apply Other OnTop PackageIn case : Talk OnTop Package - Minutes OnTop Package
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
