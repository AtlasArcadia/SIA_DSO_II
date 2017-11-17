*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/RoamingPackage_InternationalServicePostpaid.txt

*** Test Cases ***
[F11_Package_IOS_1,3_1-2_Y_1_2] Verify page International Service
    [Documentation]    Owner : Lek
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...    Have IR Service
    ...    EN
    ...    Test Step
    ...    1. Login MyAIS.
    ...    2. Click "Package" menu
    ...    3. Click "International Service" menu
    ...    4. Verify page "International Service"
    ...    - International Service
    ...    - Mobile no
    ...    - International Roaming Service
    ...    5. Capture screen
    ...
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Have IR Service
    ...    TH
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. กดเมนู "บริการระหว่างประเทศ"
    ...    4. ตรวจสอบหน้า "บริการระหว่างประเทศ"
    ...    - บริการระหว่างประเทศ
    ...    - เบอร์โทรศัพท์
    ...    - บริการข้ามแดนอัตโนมัติ (IR)
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE    IRService
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_IRService
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select International Service Submenu
    Verify International Roaming Service Page    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F11_Package_IOS_1,3_1-2_Y_2_2] Verify popup message Enable IR *popup msg loading
    [Documentation]    Owner : Lek
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...    Have IR Service
    ...    EN
    ...    Test Step
    ...    1. Login MyAIS.
    ...    2. Click "Package" menu
    ...    3. Click "International Service" menu
    ...    4. Click "International Roaming Service"
    ...    5. Verify page popup message "xxx"
    ...    6. Capture screen
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Have IR Service
    ...    TH
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. กดเมนู "บริการระหว่างประเทศ"
    ...    4. กดเปิดใช้งาน "บริการข้ามแดนอัตโนมัติ (IR)"
    ...    5. ตรวจสอบ popup message "xxx"
    ...    6. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE    IRService
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_IRService
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select International Service Submenu
    Select Switch Enable International Roaming Service
    Verify Dialog Message Enable International Service
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F11_Package_IOS_1,3_1-2_Y_3_2] Verify popup message Disable IR *popup msg loading
    [Documentation]    Owner : Lek
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...    Have IR Service
    ...    EN
    ...    Test Step
    ...    1. Login MyAIS.
    ...    2. Click "Package" menu
    ...    3. Click "International Service" menu
    ...    4. Click "International Roaming Service"
    ...    5. Click "OK" (popup เปิด IR)
    ...    6. Click "International Roaming Service"
    ...    7. Verify page popup message "xxx"
    ...    8. Capture screen
    ...
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Have IR Service
    ...    TH
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. กดเมนู "บริการระหว่างประเทศ"
    ...    4. กดเปิดใช้งาน "บริการข้ามแดนอัตโนมัติ (IR)"
    ...    5. กด "ตกลง" (popup เปิด IR)
    ...    6. กดปิดใช้งาน "บริการข้ามแดนอัตโนมัติ (IR)"
    ...    7. ตรวจสอบ popup message "xxx"
    ...    8. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE    IRService    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_IRService
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select International Service Submenu
    Select Switch Disable International Roaming Service
    Verify Dialog Message Disable International Service
    [Teardown]    Keywords For TearDown    ${#dict_device_name}
