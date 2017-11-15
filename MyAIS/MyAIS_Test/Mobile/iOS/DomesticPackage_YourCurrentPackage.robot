*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/DomesticPackage_YourCurrentPackage.txt

*** Test Cases ***
[F1_Package_IOS_1-3_1-2_Y_1_2] Verify Page Menu Package
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. ตรวจสอบสิ่งที่ปรากฎ
    ...    Header "แพ็กเกจในประเทศ"
    ...        - แพ็กเกจปัจจุบันของคุณ
    ...        - สมัครแพ็กเกจเสริมอินเทอร์เน็ต
    ...        - สมัครแพ็กเสริมอื่นๆ
    ...        - เปลี่ยนแพ็กเสริมหลัก
    ...    Header "แพ็กเกจโรมมิ่ง"
    ...        - แพ็กเกจปัจจุบัน/ยอดคงเหลือ
    ...        - สมัครแพ็กเกจโรมมิ่ง
    ...        - อัตราค่าบริการโรมมิ่ง
    ...        - บริการระหว่างประเทศ
    ...    4. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Verify Page Menu Package
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F2_Package_IOS_1-3_1-2_Y_1_2] Verify page Your Current Package In Case : Have main package Only
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "แพ็กเกจปัจจุบันของคุณ"
    ...    4. ตรวจสอบหน้า "แพ็กเกจปัจจุบันของคุณ"
    ...    - หมายเลขโทรศัพท์
    ...    - แถบ "แพ็กเกจหลัก" (Verify ว่ามี Main pack)
    ...    - ปุ่ม "เปลียนแพ็กหลัก"
    ...    - บริการเสริม
    ...    - เงื่อนไขบริการ
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_MainPack
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu from Package    YourCurrentPackage
    Verify Page Current Package Main Package Only    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F2_Package_IOS_1-3_1-2_Y_2_2] Verify page Current Package In Case : Have main+1 on top package
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "แพ็กเกจปัจจุบันของคุณ"
    ...    4. ตรวจสอบหน้า "แพ็กเกจปัจจุบันของคุณ"
    ...    - หมายเลขโทรศัพท์
    ...    - แถบ "แพ็กเกจหลัก" (Verify ว่ามี Main pack)
    ...    - ปุ่ม "เปลี่ยนแพ็กเกจ"
    ...    - แถบ "แพ็กเกจอื่นๆ" (Verify ว่ามี On-Top Pack)
    ...    - ปุ่ม "สมัครแพ็กเสริม"
    ...    - เงื่อนไขบริการ
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_OneOnTopPack
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu from Package    YourCurrentPackage
    Verify Page Current Package Main One On Top package    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F2_Package_IOS_1-3_1-2_Y_3_2] Verify page Current Package In Case : Have main+ 2 on top package
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "แพ็กเกจปัจจุบันของคุณ"
    ...    4. ตรวจสอบหน้า "แพ็กเกจปัจจุบันของคุณ"
    ...    - หมายเลขโทรศัพท์
    ...    - แถบ "แพ็กเกจหลัก" (Verify ว่ามี Main pack)
    ...    - ปุ่ม "เปลี่ยนแพ็กเกจ"
    ...    - แถบ "แพ็กเกจอื่นๆ" (Verify ว่ามี On-Top Pack 2 pack)
    ...    - ปุ่ม "สมัครแพ็กเสริม"
    ...    - เงื่อนไขบริการ
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_TwoOnTopPack
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu from Package    YourCurrentPackage
    Verify Page Current Package Main Two On Top package    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}
