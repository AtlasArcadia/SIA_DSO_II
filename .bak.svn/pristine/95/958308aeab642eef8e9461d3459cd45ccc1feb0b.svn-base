
*** Settings ***
Resource          Resource/PageKeywords/RoamingPackage_ApplyRoamingPackage.txt
Resource          ../../../Config/LocalConfig.txt

*** Test Cases ***
Typing Thai Keyword
    [Tags]    success    login    3BE    active    regression    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    Wifi
    Swipe to element    ${mnuPackage}    Container=${mnuContainer}    Direction=up    ratio=0.2    Round=10    duration=1000    appium_info="noinfo"
    Sleep    5
    Click Mobile Element    ${mnuPackage}
    Click Mobile Element    ${btnApplyRoamingPackage}
    Click Mobile Element    ${ddlRoamingCountry}
    Input Mobile Text    ${txtRoamingSearch}    ญี่ปุ่น
    Sleep    5
    Mobile Capture Screen At Verify Point    input Thai text

*** Keywords ***
Keywords For Teardown
    [Arguments]    ${#dict_device_name}
    Run Keyword If Test Failed    Capture Screen with Specific name
    Run Keyword If Test Failed    Log Dialog Msg From MyAIS
    Run Keyword And Ignore Error    Logout
    Run Keyword And Continue On Failure    Close Application
    Release Virtual Local Configurations    ${lo_MyAIS_local_config_file_path}    ${#dict_device_name}