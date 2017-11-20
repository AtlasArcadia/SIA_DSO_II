*** Settings ***
Resource          ../Resource/PageKeywords/RequestAndChangeWifiPassword.txt
Resource          ../../../../Config/LocalConfig.txt

*** Test Cases ***
[F4_Service_IOS_1,3_1-2_Y_1_2] Verify Request/Change WiFi Password page Case : Request WiFi Password
    [Documentation]    Owner :
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...
    ...    *Test Step*
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Service"
    ...    3. Click sub menu "Request/Change WiFi Password"
    ...    4. Verify "request WiFi Password" (Text)
    ...    5. Capture screen
    ...
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. กดเลือก เมนู "บริการ"
    ...    3. กดเลือก เมนูย่อย "ขอรับ/เปลี่ยนรหัส WiFi"
    ...    4. Verify "ขอรับรหัสผ่าน" (Text)
    ...    5. Capture screen
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Service Menu
    Select Request And Change Wifi Password Submenu
    Verify Request Wifi Password
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F4_Service_IOS_1,3_1-2_Y_2_2] Change wifi password
    [Documentation]    Owner :
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...
    ...    *Test Step*
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Service"
    ...    3. Click sub menu "Request/Change WiFi Password"
    ...    4. Verify "Change Wifi Password"
    ...
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. กดเลือก เมนู "บริการ"
    ...    3. กดเลือก เมนูย่อย "ขอรับ/เปลี่ยนรหัส WiFi"
    ...    4. Verify "เปลี่ยนรหัสผ่าน WiFi"
    ...    5. Cap screen
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Service Menu
    Select Request And Change Wifi Password Submenu
    Verify Change Wifi Password
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F4_Service_IOS_1,3_1-2_Y_3_2] Wifi auto login
    [Documentation]    Owner :
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...
    ...    *Test Step*
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Service"
    ...    3. Click sub menu "Request/Change WiFi Password"
    ...    4. Verify "WiFi Auto login "
    ...
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. กดเลือก เมนู "บริการ"
    ...    3. กดเลือก เมนูย่อย "ขอรับ/เปลี่ยนรหัส WiFi"
    ...    4. Verify "ล็อคอิน WiFi อัตโนมัติ "
    ...    5. Cap screen
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Service Menu
    Select Request And Change Wifi Password Submenu
    Verify Wifi Auto Login
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F4_Service_IOS_1,3_1-2_Y_4_2] Wifi auto login (SIM)
    [Documentation]    Owner :
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...
    ...    *Test Step*
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Service"
    ...    3. Click sub menu "Request/Change WiFi Password"
    ...    4. Verify "WiFi Auto login (SIM)"
    ...
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. กดเลือก เมนู "บริการ"
    ...    3. กดเลือก เมนูย่อย "ขอรับ/เปลี่ยนรหัส WiFi"
    ...    4. Verify "ล็อคอิน WiFi อัตโนมัติผ่าน SIM"
    ...    5. Cap screen
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Service Menu
    Select Request And Change Wifi Password Submenu
    Verify WiFi Auto Login (SIM)
    [Teardown]    Keywords For Teardown    ${#dict_device_name}