*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/DomesticPackage_ApplyOtherOnTopPackage.txt

*** Test Cases ***
[F5_Package_IOS_1-3_1-2_Y_1_2] Verify page Apply Other OnTop Package
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอื่นๆ"
    ...    4. ตรวจสอบหน้า "สมัครแพ็กเกจเสริมอื่นๆ"
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจเสริมโทรและเน็ต
    ...    - แพ็กเกจเสริมอินเทอร์เน็ต
    ...    - แพ็กเกจเสริมสำหรับโทร
    ...    - เงื่อนไขบริการ
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    ...    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu from Package    ApplyOtherOnTopPackages
    Verify page Apply Other OnTop Package    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_1-3_1-2_Y_2_2] Verify page Apply Other OnTop Package menu: Talk & Net OnTop Package
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอื่นๆ"
    ...    4. ตรวจสอบเมนู "แพ็กเกจเสริมโทรและเน็ต"
    ...    - แพ็กเกจเสริมโทรและเน็ต
    ...    - แพ็กเกจที่ 1
    ...    .
    ...    .
    ...    - แพ็กเกจที่ xx
    ...    - เงื่อนไขบริการ
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu from Package    ApplyOtherOnTopPackages
    Select Talk And Net Ontop Package
    Verify Talk And Net OnTop Package Menu
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_1-3_1-2_Y_3_2] Verify page Apply Other OnTop Package menu: Internet OnTop Package
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอื่นๆ"
    ...    4. เลือก "แพ็กเกจเสริมอินเทอร์เน็ต"
    ...    5. ตรวจสอบเมนู "แพ็กเกจเสริมอินเทอร์เน็ต"
    ...    - แพ็กเกจเสริมอินเทอร์เน็ต
    ...    - Entertainment
    ...    - แบบรายครั้ง
    ...    - แบบรายเดือน
    ...    - WiFi
    ...    6. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu from Package    ApplyOtherOnTopPackages
    Select Internet OnTop Package
    Verify Internet OnTop Package Menu
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_1-3_1-2_Y_4_2] Verify page Apply Other OnTop Package menu: Talk OnTop Package
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอื่นๆ"
    ...    4. เลือก "แพ็กเกจเสริมสำหรับโทร"
    ...    5. ตรวจสอบเมนู "แพ็กเกจเสริมสำหรับโทร"
    ...    - แพ็กเกจเสริมโทรและเน็ต
    ...    - แบบบุฟเฟต์
    ...    - แบบนาที
    ...    6. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu from Package    ApplyOtherOnTopPackages
    Select Talk OnTop Package
    Verify Talk OnTop Package Menu
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_1,3_1-2_Y_5_2] Apply Other OnTop PackageIn case : Talk & Net OnTop Package
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    '1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอื่นๆ"
    ...    4. เลือก "แพ็กเกจเสริมโทรและเน็ต"
    ...    5. เลือกแพ็กเกจที่ 1
    ...    6. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 1
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจเสริมโทรและเน็ต
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 6.)
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม "ต่อไป"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    7. กดปุ่ม "ต่อไป"
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 2
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 6.)
    ...    - ปุ่ม "ยืนยัน"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    9. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    ...    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ApplyOtherOnTopPackages
    Select Talk And Net OnTop Package
    ${FirstPackage}=    Select First Package Talk And Net On-Top Package
    Verify Select First Package Talk And Net On-Top Package Step1    ${Number}    ${FirstPackage}
    Verify Select First Package Talk And Net On-Top Package Step2    ${FirstPackage}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_1,3_1-2_Y_6_2] Apply Other OnTop PackageIn case : Internet OnTop Package - Entertainment
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    '1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอื่นๆ"
    ...    4. เลือก "แพ็กเกจเสริมอินเทอร์เน็ต"
    ...    5. เลือก "Entertainment"
    ...    6. ตรวจสอบรายการ "Entertainment"
    ...    - แพ็กเกจที่ 1
    ...    .
    ...    .
    ...    - แพ็กเกจที่ xx
    ...    7. เลือกแพ็กเกจที่ 1
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 1
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจเสริมโทรและเน็ต
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 8.)
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม "ต่อไป"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    9. กดปุ่ม "ต่อไป"
    ...    10. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 2
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 8.)
    ...    - ปุ่ม "ยืนยัน"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    11. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    ...    Reject
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ApplyOtherOnTopPackages
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_1,3_1-2_Y_7_2] Apply Other OnTop PackageIn case : Internet OnTop Package - OneTime OnTop Package
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    '1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอื่นๆ"
    ...    4. เลือก "แพ็กเกจเสริมอินเทอร์เน็ต"
    ...    5. เลือก "แบบรายครั้ง"
    ...    6. ตรวจสอบรายการ "แบบรายครั้ง"
    ...    - แพ็กเกจที่ 1
    ...    .
    ...    .
    ...    - แพ็กเกจที่ xx
    ...    7. เลือกแพ็กเกจที่ 1
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 1
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจเสริมโทรและเน็ต
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 8.)
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม "ต่อไป"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    9. กดปุ่ม "ต่อไป"
    ...    10. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 2
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 8.)
    ...    - ปุ่ม "ยืนยัน"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    11. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ApplyOtherOnTopPackages
    Select Internet OnTop Package
    Select Submenu OneTime OnTop Package
    ${FirstPackage}=    Verify SubMenu OneTime OnTop Package
    Verify Select First Package OneTime OnTop Package Step1    ${Number}    ${FirstPackage}
    Verify Select First Package OneTime OnTop Package Step2    ${FirstPackage}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_1,3_1-2_Y_8_2] Apply Other OnTop PackageIn case : Internet OnTop Package - Monthly OnTop Package
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    '1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอื่นๆ"
    ...    4. เลือก "แพ็กเกจเสริมอินเทอร์เน็ต"
    ...    5. เลือก "แบบรายเดือน"
    ...    6. ตรวจสอบรายการ "แบบรายเดือน"
    ...    - แพ็กเกจที่ 1
    ...    .
    ...    .
    ...    - แพ็กเกจที่ xx
    ...    7. เลือกแพ็กเกจที่ 1
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 1
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจเสริมโทรและเน็ต
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 8.)
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม "ต่อไป"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    9. กดปุ่ม "ต่อไป"
    ...    10. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 2
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 8.)
    ...    - ปุ่ม "ยืนยัน"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    11. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ApplyOtherOnTopPackages
    Select Internet OnTop Package
    Select Submenu Monthly OnTop Package
    ${FirstPackage}=    Verify SubMenu Monthly OnTop Package
    Verify Select First Package Monthly OnTop Package Step1    ${Number}    ${FirstPackage}
    Verify Select First Package Monthly OnTop Package Step2    ${FirstPackage}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_1,3_1-2_Y_9_2] Apply Other OnTop PackageIn case : Internet OnTop Package - WiFi
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    '1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอื่นๆ"
    ...    4. เลือก "แพ็กเกจเสริมอินเทอร์เน็ต"
    ...    5. เลือก "WiFi"
    ...    6. ตรวจสอบรายการ "WiFi"
    ...    - แพ็กเกจที่ 1
    ...    .
    ...    .
    ...    - แพ็กเกจที่ xx
    ...    7. เลือกแพ็กเกจที่ 1
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 1
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจเสริมโทรและเน็ต
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 8.)
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม "ต่อไป"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    9. กดปุ่ม "ต่อไป"
    ...    10. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 2
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 8.)
    ...    - ปุ่ม "ยืนยัน"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    11.จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ApplyOtherOnTopPackages
    Select Internet OnTop Package
    Select Submenu Wifi
    ${FirstPackage}=    Verify SubMenu Wifi
    Verify Select First Package Wifi Package Step1    ${Number}    ${FirstPackage}
    Verify Select First Package Wifi Package Step2    ${FirstPackage}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_1,3_1-2_Y_10_2] Apply Other OnTop PackageIn case : Talk OnTop Package - Buffet OnTop Package
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    '1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอื่นๆ"
    ...    4. เลือก "แพ็กเกจเสริมสำหรับโทร"
    ...    5. เลือก "แบบบุฟเฟ่ต์"
    ...    6. ตรวจสอบรายการ "แบบบุฟเฟ่ต์"
    ...    - แพ็กเกจที่ 1
    ...    .
    ...    .
    ...    - แพ็กเกจที่ xx
    ...    7. เลือกแพ็กเกจ (First package)
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 1
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจเสริมโทรและเน็ต
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 8.)
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม "ต่อไป"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    9. กดปุ่ม "ต่อไป"
    ...    10. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 2
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 8.)
    ...    - ปุ่ม "ยืนยัน"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    11. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ApplyOtherOnTopPackages
    Select Talk OnTop Package
    Select Submenu Buffet OnTop Package
    ${FirstPackage}=    Verify SubMenu Buffet OnTop Package
    Verify Select First Package Buffet OnTop Package Step1    ${Number}    ${FirstPackage}
    Verify Select First Package Buffet OnTop Package Step2    ${FirstPackage}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_1,3_1-2_Y_11_2] Apply Other OnTop PackageIn case : Talk OnTop Package - Minutes OnTop Package
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    '1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอื่นๆ"
    ...    4. เลือก "แพ็กเกจเสริมสำหรับโทร"
    ...    5. เลือก "แบบนาที"
    ...    6. ตรวจสอบรายการ "แบบนาที"
    ...    - แพ็กเกจที่ 1
    ...    .
    ...    .
    ...    - แพ็กเกจที่ xx
    ...    7. เลือกแพ็กเกจ (First package)
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 1
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจเสริมโทรและเน็ต
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 8.)
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม "ต่อไป"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    9. กดปุ่ม "ต่อไป"
    ...    10. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ ขั้นตอนที่ 2
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจ (เช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 8.)
    ...    - ปุ่ม "ยืนยัน"
    ...    - ปุ่ม "กลับ"
    ...    -เงื่อนไขบริการ
    ...    11. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ApplyOtherOnTopPackages
    Select Talk OnTop Package
    Select Submenu Minutes OnTop Package
    ${FirstPackage}=    Verify SubMenu Minutes OnTop Package
    Verify Select First Package Minutes OnTop Package Step1    ${Number}    ${FirstPackage}
    Verify Select First Package Minutes OnTop Package Step2    ${FirstPackage}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_2, 4_1-2_Y_1_2] Verify page Change Price Plan
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    "1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""แพ็กเกจ""
    ...    3. เลือก ""เปลี่ยนแพ็กเกจหลัก""
    ...    4. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก""
    ...    - หมายเลขโทรศัพท์
    ...    - รอบบิลของคุณ
    ...    - แพ็กเกจโทรและเน็ต
    ...    - แพ็กเกจอินเทอร์เน็ต
    ...    - แพ็กเกจสำหรับโทร
    ...    5. จับภาพหน้าจอ"
    #[Tags]    demotin
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_Package=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Package
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ChangePricePlan
    Verify page Change Price Plan    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_2, 4_1-2_Y_2_2] Change Main package Talk & Net Plan In case : iEntertain Non-Stop (Next billing cycle)"
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    "1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""แพ็กเกจ""
    ...    3. เลือก ""เปลี่ยนแพ็กเกจหลัก""
    ...    4. เลือก ""แพ็กเกจโทรและเน็ต""
    ...    5. เลือก ""iEntertain NonStop""
    ...    6. เลือกแพ็กเกจที่ 1
    ...    7. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก""
    ...    - แพ็กเกจที่เลือก \
    ...    - รายละเอียดแพ็กเกจ
    ...    8. เลือก ""ต่อไป""
    ...    9. เลือก ""รอบบิลถัดไป""
    ...    10. เลือก ""ต่อไป""
    ...    11. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก""
    ...    - แพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 6
    ...    - มีผลรอบบิลถัดไป เริ่มใช้งาน: dd/mm/yyyy
    ...    12. เลือก ""ยืนยัน""
    ...    13. ตรวจสอบ dialog message ""กำลังดำเนินการ กรุณารอรับ SMS แจ้งยืนยันการสมัครและวันมีผลเริ่มใช้งานแพ็กเกจ""
    ...    14. จับภาพหน้าจอ"
    [Tags]    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_Package=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Package
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ChangePricePlan
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_2, 4_1-2_Y_3_2] Change Main package Talk & Net Plan In case : 4G Max Speed (Next billing cycle)
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    "1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""แพ็กเกจ""
    ...    3. เลือก ""เปลี่ยนแพ็กเกจหลัก""
    ...    4. เลือก ""แพ็กเกจโทรและเน็ต""
    ...    5. เลือก ""4G Max Speed""
    ...    6. เลือกแพ็กเกจที่ 1 \
    ...    7. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก""
    ...    - แพ็กเกจที่เลือก
    ...    - รายละเอียดแพ็กเกจ
    ...    8. เลือก ""ต่อไป""
    ...    9. เลือก ""รอบบิลถัดไป""
    ...    10. เลือก ""ต่อไป""
    ...    11. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก""
    ...    - แพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 6
    ...    - มีผลรอบบิลถัดไป เริ่มใช้งาน: dd/mm/yyyy
    ...    12. เลือก ""ยืนยัน""
    ...    13. ตรวจสอบ dialog message ""กำลังดำเนินการ กรุณารอรับ SMS แจ้งยืนยันการสมัครและวันมีผลเริ่มใช้งานแพ็กเกจ""
    ...    14. จับภาพหน้าจอ"
    #[Tags]    demotin
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_Package=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Package
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ChangePricePlan
    ${packname}   Select 4GMaxSpeed And Verify First Step
    Click Next And Select Immediately Effect
    Verify Third Step    ${packname}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_2, 4_1-2_Y_4_2] Change Main package Talk & Net Plan In case : Buffet X3 (Next day)
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    "1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""แพ็กเกจ""
    ...    3. เลือก ""เปลี่ยนแพ็กเกจหลัก""
    ...    4. เลือก ""แพ็กเกจโทรและเน็ต""
    ...    5. เลือก ""Buffet X3""
    ...    6. เลือกแพ็กเกจที่ 1 \
    ...    7. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก""
    ...    - แพ็กเกจที่เลือก
    ...    - รายละเอียดแพ็กเกจ
    ...    8. เลือก ""ต่อไป""
    ...    9. เลือก ""วันถัดไป""
    ...    10. เลือก ""ต่อไป""
    ...    11. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก""
    ...    - แพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 6
    ...    - กรณีเปลี่ยนแพ็กเกจระหว่างรอบบิล
    ...    - มีผลวันถัดไป เริ่มใช้งาน: dd/mm/yyyy
    ...    12. เลือก ""ยืนยัน""
    ...    13. ตรวจสอบ dialog message ""กำลังดำเนินการ กรุณารอรับ SMS แจ้งยืนยันการสมัครและวันมีผลเริ่มใช้งานแพ็กเกจ""
    ...    14. จับภาพหน้าจอ"
    [Tags]    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_Package=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Package
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ChangePricePlan
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_2, 4_1-2_Y_5_2] Change Main package Talk & Net Plan In case : Serenade Pack (Immediately)
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    "1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""แพ็กเกจ""
    ...    3. เลือก ""เปลี่ยนแพ็กเกจหลัก""
    ...    4. เลือก ""แพ็กเกจโทรและเน็ต""
    ...    5. เลือก ""Serenade Pack""
    ...    6. เลือกแพ็กเกจที่ 1 \
    ...    7. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก"" (ขั้นตอนที่1 เลือกแพ็กเกจ)
    ...    - แพ็กเกจที่เลือก
    ...    - รายละเอียดแพ็กเกจ
    ...    8. เลือก ""ต่อไป""
    ...    9. เลือก ""มีผลทันที""
    ...    10. เลือก ""ต่อไป""
    ...    11. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก"" (ขั้นตอนที่3 ยืนยัน)
    ...    - แพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 6
    ...    - กรณีเปลี่ยนแพ็กเกจระหว่างรอบบิล
    ...    - พร้อมใช้งานได้ทันที หลังจากได้รับ SMS ยืนยัน
    ...    12. เลือก ""ยืนยัน""
    ...    13. ตรวจสอบ dialog message ""กำลังดำเนินการ กรุณารอรับ SMS แจ้งยืนยันการสมัครและวันมีผลเริ่มใช้งานแพ็กเกจ""
    ...    14. จับภาพหน้าจอ"
    [Tags]    demotin
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_Package=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Package
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ChangePricePlan
    ${packname}    Select Serenade Package And Verify First Step
    Click Next And Select Immediately Effect
    Verify Third Step    ${packname}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_2, 4_1-2_Y_6_2] Change Main package Internet Plan In case : Net SIM (Immediately)
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    "1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""แพ็กเกจ""
    ...    3. เลือก ""เปลี่ยนแพ็กเกจหลัก""
    ...    4. เลือก ""แพ็กเกจอินเทอร์เน็ต""
    ...    5. เลือกแพ็กเกจที่ 1 \
    ...    6. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก""
    ...    - แพ็กเกจที่เลือก
    ...    - รายละเอียดแพ็กเกจ
    ...    7. เลือก ""ต่อไป""
    ...    8. เลือก ""มีผลทันที""
    ...    9. เลือก ""ต่อไป""
    ...    10. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก""
    ...    - แพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 5
    ...    - กรณีเปลี่ยนแพ็กเกจระหว่างรอบบิล
    ...    - พร้อมใช้งานได้ทันที หลังจากได้รับ SMS ยืนยัน
    ...    11. เลือก ""ยืนยัน""
    ...    12. ตรวจสอบ dialog message ""กำลังดำเนินการ กรุณารอรับ SMS แจ้งยืนยันการสมัครและวันมีผลเริ่มใช้งานแพ็กเกจ""
    ...    13. จับภาพหน้าจอ"
    #[Tags]    demotin
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_Package=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Package
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ChangePricePlan
    ${packname}    Select Package 1 Of Internet Package And Verify
    Click Next And Select Immediately Effect
    Verify Third Step    ${packname}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_2, 4_1-2_Y_7_2] Change Main package Talk Plan In case : Basic Package (Immediately)
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    "1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""แพ็กเกจ""
    ...    3. เลือก ""เปลี่ยนแพ็กเกจหลัก""
    ...    4. เลือก ""แพ็กเกจสำหรับโทร""
    ...    5. เลือกแพ็กเกจที่ 2 \
    ...    6. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก""
    ...    - แพ็กเกจที่เลือก
    ...    - รายละเอียดแพ็กเกจ
    ...    7. เลือก ""ต่อไป""
    ...    8. เลือก ""มีผลทันที""
    ...    9. เลือก ""ต่อไป""
    ...    10. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก"" (ขั้นตอนที่3 ยืนยัน)
    ...    - แพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 5
    ...    - กรณีเปลี่ยนแพ็กเกจระหว่างรอบบิล
    ...    - พร้อมใช้งานได้ทันที หลังจากได้รับ SMS ยืนยัน
    ...    11. เลือก ""ยืนยัน""
    ...    12. ตรวจสอบ dialog message ""กำลังดำเนินการ กรุณารอรับ SMS แจ้งยืนยันการสมัครและวันมีผลเริ่มใช้งานแพ็กเกจ""
    ...    13. จับภาพหน้าจอ"
    #[Tags]    demotin
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_Package=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Package
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ChangePricePlan
    ${packname}    Select Package 2 Of Talk Package And Verify
    Click Next And Select Immediately Effect
    Verify Third Step    ${packname}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F5_Package_IOS_2, 4_1-2_Y_8_2] Change Main package Package And Internet from Current Package And Additional Services Page
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    "1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""แพ็กเกจ""
    ...    3. เลือก ""แพ็กเกจปัจจุบันของคุณ""
    ...    4. ตรวจสอบหน้า ""แพ็กเกจปัจจุบันของคุณ""
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจหลัก at Header (Verify ว่ามี Main pack)
    ...    - ปุ่ม ""เปลี่ยนแพ็กหลัก""
    ...    5. เลือก ปุ่ม ""เปลี่ยนแพ็กเกจ""
    ...    6. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก""
    ...    - หมายเลขโทรศัพท์
    ...    - รอบบิลของคุณเริ่ม
    ...    8. เลือก แพ็กเกจอินเทอร์เน็ต
    ...    9. ตรวจสอบรายการ แพ็กเกจอินเทอร์เน็ต
    ...    - แพ็กเกจที่ 1
    ...    .
    ...    .
    ...    - แพ็กเกจ xxx
    ...    - เงื่อนไขบริการ
    ...    10. เลือกแพ็กเกจลำดับที่ 2
    ...    11. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก"" (ขั้นตอนที่1 เลือกแพ็กเกจ)
    ...    - เบอร์โทรศัพท์
    ...    - รอบบิลของคุณเริ่ม
    ...    - แพ็กเกจที่เลือก
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม ""ต่อไป""
    ...    - ปุ่ม ""กลับ""
    ...    - เงื่อนไขบริการ
    ...    12. เลือก ""ต่อไป""
    ...    13. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก"" (ขั้นตอนที่2 เลือกวันมีผลใช้งาน)
    ...    - หมายเลขโทรศัพท์
    ...    - รอบบิลของคุณเริ่ม
    ...    - เลือกวันมีผลสำหรับการใช้งาน
    ...    - รอบบิลถัดไป
    ...    - วันถัดไป
    ...    - มีผลทันที
    ...    - ปุ่ม ""กลับ""
    ...    - ปุ่ม ""ต่อไป""
    ...    - เงื่อนไขบริการ
    ...    14. เลือก ""มีผลทันที""
    ...    15. เลือก ""ต่อไป""
    ...    16. ตรวจสอบหน้า ""เปลี่ยนแพ็กเกจหลัก"" (ขั้นตอนที่3 ยืนยัน)
    ...    - หมายเลขโทรศัพท์
    ...    - รอบบิลของคุณเริ่ม
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 10
    ...    - กรณีเปลี่ยนแพ็กเกจระหว่างรอบบิล:
    ...    - วันที่มีผลสำหรับการใช้งาน
    ...    - ปุ่ม ""กลับ""
    ...    - ปุ่ม ""ยืนยัน""
    ...    - เงื่อนไขบริการ
    ...    - เงื่อนไขบริการ
    ...    17. เลือก ""ยืนยัน""
    ...    18. ตรวจสอบ dialog message ""กำลังดำเนินการ กรุณารอรับ SMS แจ้งยืนยันการสมัครและวันมีผลเริ่มใช้งานแพ็กเกจ""
    ...    19. จับภาพหน้าจอ
    ...    20. เลือก ""ตกลง""
    ...    21. ตรวจสอบ SMS (2sms)
    ...    ""Your AIS SUPER WiFi Username:09xxxxxxxx. Password:xxxx.""
    ...    ""ชื่อแพ็กเกจ รายละเอียดแพ็กเกจ เริ่มxx/xx/xxxx xx:xx ถึง xx/xx/xxxx xx:xx""
    ...    22. จับภาพหน้าจอ"
    #[Tags]    demotin
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_Package=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Package
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    YourCurrentPackage
    Verify Current Package Page And Click Change Main Package Button    ${Number}
    ${packname}    Verify Internet Package Page And Select Package 2    ${Number}
    Verify Change Main Package Page First Step    ${Number}    ${packname}
    Verify Change Main Package Page Second Step    ${Number}
    Verify Third Step    ${packname}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}
