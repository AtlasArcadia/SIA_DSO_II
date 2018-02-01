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
    ...    Source Number : 3BO
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
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}
