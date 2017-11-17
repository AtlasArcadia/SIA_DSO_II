*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/DomesticPackage_ApplyInternetOntopPackage.txt

*** Test Cases ***
[F4_Package_IOS_1-3_1-2_Y_1_2] Verify page Apply Internet On-Top Package
    [Documentation]    Owner :Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอินเทอร์เน็ต"
    ...    4. เลือก "TH"
    ...    5. ตรวจสอบหน้า "สมัครแพ็กเกจเสริมอินเทอร์เน็ต"
    ...    - แพ็กเกจเสริม อินเทอร์เน็ต at header
    ...    - เลือกแพ็กเกจตามราคาที่คุณต้องการ at header
    ...    - อินเทอร์เน็ตเต็มสปีด
    ...    - อินเทอร์เน็ตสุดคุ้ม
    ...    - Entertainment
    ...    - ปุ่ม "ถัดไป"
    ...    - ปุ่ม "ยกเลิก"
    ...    6. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F4_Package_IOS_1-3_1-2_Y_2_2] Apply Internet On-Top Package In case: Max Speed Internet
    [Documentation]    Owner :Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอินเทอร์เน็ต"
    ...    4. เลือก "TH"
    ...    5. เลือก "อินเทอร์เน็ตเต็มสปีด"
    ...    6. ตรวจสอบเมนู "อินเทอร์เน็ตเต็มสปีด"
    ...    - ปริมาณ
    ...    - จำนวนวัน
    ...    - ปุ่ม "ถัดไป"
    ...    - ปุ่ม "ยกเลิก"
    ...    7. เลือกแพ้กเกจ (Default)
    ...    8. ตรวจสอบหน้า "สมัครแพ็กเสริม" ขั้นตอนที่1 เลือกแพ็กเกจ
    ...    - ชื่อแพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 7.
    ...    - รายละเอียด แพ็กเกจ
    ...    - คุณจะได้รับ SMS ยืนยัน หลังจากระบบทำการสมัครสำเร็จ Heading
    ...    - ปุ่ม "ยืนยัน"
    ...    - ปุ่ม "ย้อนกลับ"
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

[F4_Package_IOS_1-3_1-2_Y_3_2] Apply Internet On-Top Package In case: Up Speed Internet
    [Documentation]    Owner :Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอินเทอร์เน็ต"
    ...    4. เลือก "TH"
    ...    5. เลือก "อินเทอร์เน็ตสุดคุ้ม"
    ...    6. ตรวจสอบเมนู อินเทอร์เน็ตสุดคุ้ม
    ...    - แพ็กเกจเสริมอินเทอร์เน็ต เลือกแพ็กเกจตามที่คุณต้องการ
    ...    - เล่นเน็ตไม่อั้น ความเร็วสูงสุด สำหรับลูกค้าเติมเงิน / รายเดือน
    ...    - จำนวนวัน
    ...    - อินเตอร์เน็ตอัพสปีด แพ็กเกจเสริมราคาพิเศษ! สำหรับลูกค้าเติมเงิน ที่มีแพ็กเกจแบบใช้งานต่อเนื่อง / ลูกค้ารายเดือน
    ...    - จำนวนวัน
    ...    - ปริมาณ
    ...    - ปุ่ม "ถัดไป"
    ...    - ปุ่ม "ยกเลิก"
    ...    7. เลือกแพ้กเกจ (Default)
    ...    8. ตรวจสอบหน้า "สมัครแพ็กเสริม" ขั้นตอนที่1 เลือกแพ็กเกจ
    ...    - ชื่อแพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 7.
    ...    - รายละเอียด แพ็กเกจ
    ...    - คุณจะได้รับ SMS ยืนยัน หลังจากระบบทำการสมัครสำเร็จ Heading
    ...    - ปุ่ม "ยืนยัน"
    ...    - ปุ่ม "ย้อนกลับ"
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

[F4_Package_IOS_1-3_1-2_Y_4_2] Apply Internet On-Top Package In case : Entertainment
    [Documentation]    Owner :Asma
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริมอินเทอร์เน็ต"
    ...    4. เลือก "TH"
    ...    5. เลือก "Entertainment"
    ...    6. ตรวจสอบเมนู Entertainment
    ...    - Entertainment
    ...    - ความบันเทิงระดับโลกทั้งหนัง ซีรีส์ การ์ตูน กีฬา ข่าว และอีกมากมาย
    ...    - ปุ่ม "ถัดไป"
    ...    - ปุ่ม "ยกเลิก"
    ...    7. เลือกแพ็กเกจ (First package)
    ...    8. ตรวจสอบหน้า "สมัครแพ็กเสริม" ขั้นตอนที่1 เลือกแพ็กเกจ
    ...    - ชื่อแพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 7.
    ...    - รายละเอียด แพ็กเกจ
    ...    - คุณจะได้รับ SMS ยืนยัน หลังจากระบบทำการสมัครสำเร็จ
    ...    - ปุ่ม "ยืนยัน"
    ...    - ปุ่ม "ย้อนกลับ"
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
