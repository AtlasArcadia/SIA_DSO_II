*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/TouchID.txt

*** Test Cases ***
[F1_TouchID_IOS_1-4_1-2_Y_1_2]
    [Documentation]    **Owner:Tong**
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status :  Active
    ...
    ...    *Pre-Requisite*
    ...    '- ล็อกรหัส : ปิดการใช้งาน
    ...    - ไม่มีการ Add Fingerprint ไว้ในเครื่องแล้ว
    ...
    ...    **Expected Result**
    ...    1.ระบบแสดงที่หน้าจอ "การล็อกรหัส"
    ...    - แสดงสัญลักษณ์ [<]
    ...    - แสดงเมนู "ล็อกรหัส" [ปิด]
    ...
    ...    ***TestStep***
    ...    1. เปิด App my AIS.
    ...    2. Login ผ่าน 3G/4G หรือ กดรับ OTP
    ...    3. เลือกเมนู Hamburger
    ...    4. เลือกเมนู "ตั้งค่า"
    ...    5. เลือก การล็อกรหัส ที่หน้า "ตั้งค่า"
    ...    6. ตรวจสอบหน้าจอ "การล็อกรหัส"
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Verify Passcode Page Setting
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_2_2]
    [Documentation]    **Owner:Tong**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...    '- ล็อกรหัส : เปิดการใช้งาน
    ...    - ไม่มีการ Add Fingerprint ไว้ในเครื่องแล้ว
    ...
    ...    **Expected Result**
    ...    1.ระบบแสดงที่หน้าจอ "การล็อกรหัส"
    ...    - แสดงสัญลักษณ์ [<]
    ...    - แสดงเมนู "ล็อกรหัส" [เปิด]
    ...    - แสดงเมนู "เปลี่ยนรหัส"
    ...
    ...    ***TestStep***
    ...    1. เปิด App my AIS.
    ...    2. ใส่รหัส ถูกต้อง ที่หน้า "ใส่รหัสของคุณ"
    ...    3. เลือกเมนู Hamburger
    ...    4. เลือกเมนู "ตั้งค่า"
    ...    5. เลือก การล็อกรหัส ที่หน้า "ตั้งค่า"
    ...    6. กรอกรหัสที่ตั้งค่าไว้
    ...    7. ตรวจสอบหน้าจอ "การล็อกรหัส"
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Verify Passcode Pin Setting
    Comment    Disable Passcode
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_3_2]
    [Documentation]    **Owner:Tong**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login with Passcode
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Verify Passcode Enable TouchID
    Logout
    Verify Login With Touch ID
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_4_2]
    [Documentation]    **Owner:Tong**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login with Passcode
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Verify Passcode Disable TouchID
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_6_2]
    [Documentation]    **Owner:Tong**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_7_2]
    [Documentation]    **Owner:Tong**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_8_2]
    [Documentation]    **Owner:Tong**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_9_2]
    [Documentation]    **Owner:**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_10_2]
    [Documentation]    **Owner:**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_11_2]
    [Documentation]    **Owner:**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_N_12_2]
    [Documentation]    **Owner:**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_N_13_2]
    [Documentation]    **Owner:**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_14_2]
    [Documentation]    **Owner:Now**
    ...
    ...    *Source*
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    fail    active    regression    3PO    3PE    3BO
    ...    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login And Verify Login Passcode Success    ${Number}
    [Teardown]    Keywords For Teardown With Reset Passcode    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_N_15_2]
    [Documentation]    **Owner:Now**
    ...
    ...    *Source*
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    fail    active    regression    3PO    3PE    3BO
    ...    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login And Verify Login Passcode Fail
    [Teardown]    Keywords For Teardown With Reset Passcode    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_N_16_2]
    [Documentation]    **Owner:Eng**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    [Tags]    fail    active    regression    3PO    3PE    3BO
    ...    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Comment    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}=    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login Passcode Incorrect 3 Times
    Verify Dialog Reached Maximum Passcode Limit
    Verify Manual Login Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_N_17_2]
    [Documentation]    **Owner:Eng**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    fail    active    regression    3PO    3PE    3BO
    ...    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Comment    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}=    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Press Reset At Login Passcode Page
    Confirm Set New Password
    Verify Manual Login Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_N_18_2]
    [Documentation]    **Owner:Eng**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    [Tags]    fail    active    regression    3PO    3PE    3BO
    ...    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Comment    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}=    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Press Reset At Login Passcode Page
    Cancel Set New Password
    Verify Enter Your Passcode Page
    [Teardown]    Keywords For Teardown With Reset Passcode    ${#dict_device_name}

[F0_0_0_Y_0_Test] Smoke test
    [Tags]    smoke
    log    test smoke
