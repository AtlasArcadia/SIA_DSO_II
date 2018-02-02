*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/Domestic_ChangePricePlan.txt

*** Test Cases ***
[F3_Package_IOS_1-3_1-2_Y_1_2] Verify page Change Price Plan
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "เปลี่ยนแพ็กเกจหลัก"
    ...    4. ตรวจสอบหน้า "เปลี่ยนแพ็กเกจหลัก"
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจโทรและเน็ต
    ...    - แพ็กเกจอินเทอร์เน็ต
    ...    - แพ็กเกจสำหรับโทร
    ...    -เงื่อนไขบริการ
    ...    5.จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_2_2] Change Price Plan Verify page Talk & Net Plan
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "เปลี่ยนแพ็กเกจหลัก"
    ...    4. ตรวจสอบหน้า "แพ็กเกจโทรและเน็ต"
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจโทรและเน็ต
    ...    - รายการของแพ็กเกจ
    ...    -เงื่อนไขบริการ
    ...    5.จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_3_2] Change Price Plan Verify page Internet Plan
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "เปลี่ยนแพ็กเกจหลัก"
    ...    4. ตรวจสอบหน้า "แพ็กเกจอินเทอร์เน็ต"
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจอินเทอร์เน็ต
    ...    - รายการของแพ็กเกจ
    ...    -เงื่อนไขบริการ
    ...    5.จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_4_2] Change Price Plan Verify page Talk Plan
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "เปลี่ยนแพ็กเกจหลัก"
    ...    4. ตรวจสอบหน้า "แพ็กเกจสำหรับโทร"
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจสำหรับโทร
    ...    - บุฟเฟ่ต์
    ...    - โทรทุกเครือข่าย
    ...    - โทร AIS ราคาพิเศษ
    ...    5.จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_5_2] Change Price Plan Talk & Net Plan
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "เปลี่ยนแพ็กเกจหลัก"
    ...    5. เลือกแพ็กเกจโทรและเน็ต(First Package)
    ...    6. ตรวจสอบเมนู "เปลี่ยนแพ็กเกจหลัก" step 1 เลือกแพ็กเกจ
    ...    - หมายเลขทรศัพท์
    ...    - แพ็กเกจโทรและเน็ต
    ...    - Pack name เช็คได้ไหมว่าเป็น เดียวกันที่กดเข้ามาจากข้อ 5.
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม "กลับ"
    ...    - ปุ่ม "ต่อไป"
    ...    - เงื่อนไขบริการ
    ...    7. เลือก "ต่อไป"
    ...    8. ตรวจสอบ "เปลียนแพ็กเกจหลัก" step2 ยืนยัน
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจ เชคได้มั้ยว่าเปน pack เดียวกันที่กดเข้ามาจากข้อ 5.
    ...    - โปรดยืนยันแพ็กเกจที่คุณเลือกอีกครั้งก่อนคลิกปุ่มยืนยันเพื่อยืนยันคำขอของคุณ
    ...    - ปุ่ม "กลับ"
    ...    - ปุ่ม "ต่อไป"
    ...    - เงื่อนไขบริการ
    ...    9. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_6_2] Change Price Plan Internet Plan
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "เปลี่ยนแพ็กเกจหลัก"
    ...    5. เลือกแพ็กเกจโทรและเน็ต(First Package)
    ...    6. ตรวจสอบเมนู "เปลี่ยนแพ็กเกจหลัก" step 1 เลือกแพ็กเกจ
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจอินทอร์เน็ต
    ...    - Pack name เช็คได้ไหมว่าเป็น เดียวกันที่กดเข้ามาจากข้อ 5.
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม "กลับ"
    ...    - ปุ่ม "ต่อไป"
    ...    - เงื่อนไขบริการ
    ...    7. เลือก "ต่อไป"
    ...    8. ตรวจสอบ "เปลียนแพ็กเกจหลัก" step2 ยืนยัน
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจ เชคได้มั้ยว่าเปน pack เดียวกันที่กดเข้ามาจากข้อ 5.
    ...    - กรุณาตรวจสอบแพ็กเกจที่คุณเลือกอีกครั้ง แล้วกด ยืนยัน เพื่อทำรายการ
    ...    - ปุ่ม "กลับ"
    ...    - ปุ่ม "ต่อไป"
    ...    - เงื่อนไขบริการ
    ...    9. .จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_7_2] Change Main package Talk Plan In case: Buffet
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "เปลี่ยนแพ็กเกจหลัก"
    ...    4. เลือก "แพ็คเกจสำหรับโทร"
    ...    5.เลือก "บุฟเฟ่ต์"
    ...    6. ตรวจสอบ รายการของแพ็กเกจ
    ...    - แพ็กเกจ 1
    ...    .
    ...    .
    ...    - แพ็กเกจ xx
    ...    7. เลือกแพ็กเกจ(First Package)
    ...    8. ตรวจสอบเมนู "เปลี่ยนแพ็กเกจหลัก" step 1 เลือกแพ็กเกจ
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจอินทอร์เน็ต
    ...    - Pack name เช็คได้ไหมว่าเป็น เดียวกันที่กดเข้ามาจากข้อ 7.
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม "กลับ"
    ...    - ปุ่ม "ต่อไป"
    ...    - เงื่อนไขบริการ
    ...    9. เลือก "ต่อไป"
    ...    10. ตรวจสอบ "เปลียนแพ็กเกจหลัก" step2 ยืนยัน
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจ เชคได้มั้ยว่าเปน pack เดียวกันที่กดเข้ามาจากข้อ 7.
    ...    - กรุณาตรวจสอบแพ็กเกจที่คุณเลือกอีกครั้ง แล้วกด ยืนยัน เพื่อทำรายการ
    ...    - ปุ่ม "กลับ"
    ...    - ปุ่ม "ต่อไป"
    ...    - เงื่อนไขบริการ
    ...    11. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_8_2] Change Main package Talk Plan In case : Call to All Networks
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "เปลี่ยนแพ็กเกจหลัก"
    ...    4. เลือก "แพ็คเกจสำหรับโทร"
    ...    5.เลือก "โทรทุกเครือข่าย"
    ...    6. ตรวจสอบ รายการของแพ็กเกจ
    ...    - แพ็กเกจ 1
    ...    .
    ...    .
    ...    - แพ็กเกจ xx
    ...    7. เลือกแพ็กเกจ(First Package)
    ...    8. ตรวจสอบเมนู "เปลี่ยนแพ็กเกจหลัก" step 1 เลือกแพ็กเกจ
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจอินทอร์เน็ต
    ...    - Pack name เช็คได้ไหมว่าเป็น เดียวกันที่กดเข้ามาจากข้อ 7.
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม "กลับ"
    ...    - ปุ่ม "ต่อไป"
    ...    - เงื่อนไขบริการ
    ...    9. เลือก "ต่อไป"
    ...    10. ตรวจสอบ "เปลียนแพ็กเกจหลัก" step2 ยืนยัน
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจ เชคได้มั้ยว่าเปน pack เดียวกันที่กดเข้ามาจากข้อ 7.
    ...    - กรุณาตรวจสอบแพ็กเกจที่คุณเลือกอีกครั้ง แล้วกด ยืนยัน เพื่อทำรายการ
    ...    - ปุ่ม "กลับ"
    ...    - ปุ่ม "ต่อไป"
    ...    - เงื่อนไขบริการ
    ...    11. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F3_Package_IOS_1-3_1-2_Y_9_2] Change Main package Talk Plan In case : Call to AIS
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "เปลี่ยนแพ็กเกจหลัก"
    ...    4. เลือก "แพ็คเกจสำหรับโทร"
    ...    5.เลือก "โทร AIS ราคาพิเศษ"
    ...    6. ตรวจสอบ รายการของแพ็กเกจ
    ...    - แพ็กเกจ 1
    ...    .
    ...    .
    ...    - แพ็กเกจ xx
    ...    7. เลือกแพ็กเกจ(First Package)
    ...    8. ตรวจสอบเมนู "เปลี่ยนแพ็กเกจหลัก" step 1 เลือกแพ็กเกจ
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจอินทอร์เน็ต
    ...    - Pack name เช็คได้ไหมว่าเป็น เดียวกันที่กดเข้ามาจากข้อ 7.
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม "กลับ"
    ...    - ปุ่ม "ต่อไป"
    ...    - เงื่อนไขบริการ
    ...    9. เลือก "ต่อไป"
    ...    10. ตรวจสอบ "เปลียนแพ็กเกจหลัก" step2 ยืนยัน
    ...    - หมายเลขโทรศัพท์
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจ เชคได้มั้ยว่าเปน pack เดียวกันที่กดเข้ามาจากข้อ 7.
    ...    - กรุณาตรวจสอบแพ็กเกจที่คุณเลือกอีกครั้ง แล้วกด ยืนยัน เพื่อทำรายการ
    ...    - ปุ่ม "กลับ"
    ...    - ปุ่ม "ต่อไป"
    ...    - เงื่อนไขบริการ
    ...    11. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F3_Package_IOS_2,4_2_Y_1_2] Verify page "Apply Internet On-Top Package"
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3BO,3PO
    ...     Status : Active1. เข้าสู่ระบบ My AIS
    ...     2. เลือกเมนู "แพ็กเกจ"
    ...     3. เลือก "สมัครแพ็กเกจเสริมอินเทอร์เน็ต"
    ...     4. ตรวจสอบหน้า "สมัครแพ็กเกจเสริมอินเทอร์เน็ต"
    ...     - แพ็กเกจเสริม อินเทอร์เน็ต at Header
    ...     - เลือกแพ็กเกจตามราคาที่คุณต้องการ at Header
    ...     - TH/EN at Header
    ...     - อินเทอร์เน็ตเต็มสปีด
    ...     - อินเทอร์เน็ตอัพสปีด
    ...     - Entertainment
    ...     - ปุ่ม "ถัดไป"
    ...     - ปุ่ม "ยกเลิก"
    ...     5. จับภาพหน้าจอnone
    [Tags]    TH    EN    active    success    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F3_Package_IOS_2,4_2_Y_2_2] Verify page "Apply Internet On-Top Package" In Case : Apply Max Speed Internet
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO,3BO
    ...     Status : Active1. เข้าสู่ระบบ My AIS
    ...     2. เลือกเมนู "แพ็กเกจ"
    ...     3. เลือก "สมัครแพ็กเกจเสริมอินเทอร์เน็ต"
    ...     4. เลือก "อินเทอร์เน็ตอัพสปีด"
    ...     5. เลือก "อินเทอร์เน็ตเต็มสปีด"
    ...     6. ตรวจสอบหน้า "อินเทอร์เน็ตเต็มสปีด"
    ...     - ปริมาณ
    ...     - จำนวนวัน
    ...     - ปุ่ม "ถัดไป"
    ...     - ปุ่ม "ยกเลิก"
    ...     7. จับภาพหน้าจอ
    ...     8. เลือกแพ็กแกจ
    ...     9. กดปุ่ม ถัดไป
    ...     10. ตรวจสอบหน้า "อินเทอร์เน็ตเต็มสปีด"
    ...     - แพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 7
    ...     - กรุณากด ยืนยัน เพื่อสมัครแพ็กเกจ
    ...     - รายละเอียดแพ็กเกจ
    ...     - คุณจะได้รับ SMS ยืนยัน หลังจากระบบทำการสมัครสำเร็จ
    ...     - ปุ่ม "ยืนยัน"
    ...     - ปุ่ม "ย้อนกลับ"
    ...     11. เลือก "ยืนยัน"
    ...     12. ตรวจสอบ dialog message "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ Heading"
    ...     13. จับภาพหน้าจอnone
    [Tags]    TH    EN    active    success    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F3_Package_IOS_2,4_2_Y_3_2] Verify page "Apply Up On-Top Package" In Case : Apply Up Speed Internet
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO,3BO
    ...     Status : Active1. เข้าสู่ระบบ My AIS
    ...     2. เลือกเมนู "แพ็กเกจ"
    ...     3. เลือก "สมัครแพ็กเกจเสริมอินเทอร์เน็ต"
    ...     4. เลือก "อินเทอร์เน็ตอัพสปีด"
    ...     5. ตรวจสอบหน้า "อินเทอร์เน็ตอัพสปีด"
    ...     - แพ็กเกจเสริมราคาพิเศษ! สำหรับลูกค้าเติมเงิน ที่มีแพ็กเน็ตแบบใช้งานต่อเนื่อง / ลูกค้ารายเดือน
    ...     - ปริมาณ
    ...     - จำนวนวัน
    ...     - ปุ่ม "ถัดไป"
    ...     - ปุ่ม "ยกเลิก"
    ...     6. จับภาพหน้าจอ
    ...     7. เลือกแพ็กแกจ
    ...     8. กดปุ่ม ถัดไป
    ...     9. ตรวจสอบหน้า "อินเทอร์เน็ตอัพสปีด"
    ...     - กรุณากด ยืนยัน เพื่อสมัครแพ็กเกจ
    ...     - แพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 7
    ...     - รายละเอียดแพ็กเกจ
    ...     - คุณจะได้รับ SMS ยืนยัน หลังจากระบบทำการสมัครสำเร็จ
    ...     - ปุ่ม "ยืนยัน"
    ...     - ปุ่ม "ย้อนกลับ"
    ...     10. เลือก "ยืนยัน"
    ...     11. ตรวจสอบ dialog message "ระบบกำลังดำเนินการ กรุณารอรับข้อความยืนยันการใช้บริการค่ะ Heading"
    ...     12. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F3_Package_IOS_2,4_2_Y_4_2] Verify page "Apply Unlimited Social App" In Case : Apply Unlimited Social AppIn Case : Entertainment
    [Documentation]    Owner : Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3BO,3PO
    ...     Status : Active1. เข้าสู่ระบบ My AIS
    ...     2. เลือกเมนู "แพ็กเกจ"
    ...     3. เลือก "สมัครแพ็กเกจเสริมอินเทอร์เน็ต"
    ...     4. เลือก "Entertainment"
    ...     5. ตรวจสอบเมนู Entertainment
    ...     - Entertainment
    ...     - ความบันเทิงระดับโลกทั้งหนัง ซีรีส์ การ์ตูน กีฬา ข่าว และอีกมากมาย
    ...     - ปุ่ม "ถัดไป"
    ...     - ปุ่ม "ยกเลิก"
    ...     6. จับภาพหน้าจอ
    ...     7. เลือกแพ็กเกจ
    ...     8. ตรวจสอบหน้า "สมัครแพ็กเสริม"
    ...     - ชื่อแพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 7.
    ...     - รายละเอียด แพ็กเกจ
    ...     - คุณจะได้รับ SMS ยืนยัน หลังจากระบบทำการสมัครสำเร็จ
    ...     - ปุ่ม "ยืนยัน"
    ...     - ปุ่ม "ย้อนกลับ"
    ...     9. เลือก "ยืนยัน"
    ...     10. ตรวจสอบ dialog message "ระบบกำลังทำรายการ คุณจะได้รับ SMS ตอบกลับในอีกสักครู่ "
    ...     11. จับภาพหน้าจอnone
    [Tags]    TH    EN    active    success    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}