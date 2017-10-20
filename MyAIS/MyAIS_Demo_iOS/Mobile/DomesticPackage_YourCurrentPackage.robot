*** Settings ***
Resource          Resource/PageKeywords/BalanceTransfer.txt
Resource          ../../../Config/LocalConfig.txt

*** Test Cases ***
Verify Your Current Package
    [Tags]    success    youcurrentpackage    3BE    active    regression    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    Wifi
    Comment    change language    EN
    Comment    Verify Home Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}