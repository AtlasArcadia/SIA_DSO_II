*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/CallingMelody.txt

*** Test Cases ***
[F5_Service_IOS_1,3_1-2_Y_1_2] Register AIS Fibre Case : "Verify Calling Melody" page
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active"
    ...    EN
    ...    "1. Login My AIS
    ...    2. Click menu ""Service""
    ...    3. Click sub menu ""Calling Melody""
    ...    4. Verify ""Calling Melody"" page \ (Logo AIS)
    ...    5. Capture screen"
    ...
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "เพลงรอสาย"
    ...    4. ตรวจสอบ หน้า"เพลงรอสาย"  (Logo AIS)
    ...    5. Capture screen
    [Tags]    TH    EN    active    success    3PE    3BE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Service Menu
    Select Calling Melody Submenu
    Verify Calling Melody Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
