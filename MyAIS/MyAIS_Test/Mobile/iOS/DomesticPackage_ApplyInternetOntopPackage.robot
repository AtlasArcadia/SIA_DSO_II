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

[F4_Package_IOS_2, 4_1-2_Y_8_2] Verify page Apply Other On-Top Package In Case : One-Time On-Top Package (Immediately)
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    "1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""แพ็กเกจ""
    ...    3. เลือก ""สมัครแพ็กเกจเสริมอื่นๆ""
    ...    4. เลือก แพ็กเกจเสริมโทรและเน็ต
    ...    5. เลือก แบบรายครั้ง
    ...    6. ตรวจสอบรายการ แบบรายครั้ง
    ...    - แพ็กเกจที่ 1
    ...    .
    ...    .
    ...    - แพ็กเกจ xxx
    ...    - เงื่อนไขบริการ
    ...    7. เลือกแพ็กเกจที่ 1
    ...    8. ตรวจสอบหน้า ""สมัครแพ็กเกจเสริมอื่นๆ"" ขั้นตอนที่1 เลือกแพ็กเกจ
    ...    - หมายเลขโทรศัพท์
    ...    - รอบบิลของคุณเริ่ม
    ...    - แพ็กเกจเสริมโทรและเน็ต
    ...    - ชื่อแพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 7
    ...    - รายละเอียด แพ็กเกจ
    ...    - ปุ่ม ""กลับ""
    ...    - ปุ่ม ""ต่อไป""
    ...    - เงื่อนไขบริการ
    ...    9. เลือก ""ต่อไป""
    ...    10. ตรวจสอบหน้า ""สมัครแพ็กเสริม"" ขั้นตอนที่2 เลือกวันมีผลใช้งาน
    ...    - หมายเลขโทรศัพท์
    ...    - รอบบิลของคุณเริ่ม
    ...    - เลือก เลือกวันมีผลสำหรับการใช้งาน
    ...    - รอบบิลถัดไป
    ...    - วันถัดไป
    ...    - มีผลทันที
    ...    - ปุ่ม ""กลับ""
    ...    - ปุ่ม ""ต่อไป""
    ...    - เงื่อนไขบริการ
    ...    11. เลือก ""มีผลทันที""
    ...    12. เลือก ""ต่อไป""
    ...    13. ตรวจสอบหน้า ""สมัครแพ็กเสริม"" ขั้นตอนที่3 ยืนยัน
    ...    - หมายเลขโทรศัพท์
    ...    - รอบบิลของคุณเริ่ม
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 7
    ...    - กรณีเปลี่ยนแพ็กเกจระหว่างรอบบิล:
    ...    - เลือกวันมีผลสำหรับการใช้งาน
    ...    - ปุ่ม ""กลับ""
    ...    - ปุ่ม ""ยืนยัน""
    ...    - เงื่อนไขบริการ
    ...    14. เลือก ""ยืนยัน""
    ...    15. ตรวจสอบ dialog message ""กำลังดำเนินการ กรุณารอรับ SMS แจ้งยืนยันการสมัครและวันมีผลเริ่มใช้งานแพ็กเกจ""
    ...    - ปุ่ม ""ตกลง""
    ...    16. จับภาพหน้าจอ"
    ...
    [Tags]    demotin
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_Package=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Package
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    ApplyOtherOnTopPackages
    ${packname}    Verify Apply Other On Top Package Page
    Select First Package
    Verify Apply Other On Top Package First Step And Click Next    ${Number}    ${packname}
    Verify Apply Other On Top Package Second Step And Select Immediate Effect Button Then Click Next    ${Number}
    Verify Apply Other On Top Package Third Step And Dialog Nessage    ${Number}    ${packname}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F4_Package_IOS_2, 4_1-2_Y_9_2] Apply Other On-Top Package In Case : Monthly On-Top Package \ (Immediately)
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    "1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""แพ็กเกจ""
    ...    3. เลือก ""แพ็กเกจปัจจุบันของคุณ""
    ...    4. ตรวจสอบหน้า ""แพ็กเกจปัจจุบันของคุณ""
    ...    - หมายเลขโทรศัพท์
    ...    - แถบ ""แพ็กเกจหลัก""
    ...    - ชื่อแพ็กเกจ
    ...    - สิ้นสุดวันที่ วว/ดด/ปปปป hh:mm:ss
    ...    - ปุ่ม ""เปลี่ยนแพ็กเกจหลัก""
    ...    - แถบ ""สมัครแพ็กเสริม""
    ...    - ชื่อแพ็กเกจ
    ...    - สิ้นสุดวันที่ วว/ดด/ปปปป hh:mm:ss
    ...    - ปุ่ม ""ยกเลิกแพ็กเสริม""
    ...    - ปุ่ม ""สมัครแพ็กเสริม""
    ...    5. เลือก ""สมัครแพ็กเสริม""
    ...    6. ตรวจสอบหน้า ""สมัครแพ็กเกจเสริมอื่นๆ""
    ...    - หมายเลขโทรศัพท์
    ...    - รอบบิลของคุณเริ่ม
    ...    - แพ็กเกจเสริมโทรและเน็ต
    ...    - แพ็กเกจเสริมอินเทอร์เน็ต
    ...    - แพ็กเกจเสริมสำหรับโทร
    ...    7. เลือก แพ็กเกจเสริมสำหรับโทร
    ...    8. เลือก แบบรายเดือน
    ...    9. เลือกแพ็กเกจลำดับที่ 2
    ...    10. ตรวจสอบหน้า ""สมัครแพ็กเสริม"" ขั้นตอนที่1 เลือกแพ็กเกจ
    ...    - หมายเลขโทรศัพท์
    ...    - รอบบิลของคุณเริ่ม
    ...    - แพ็กเกจเน้นคุย
    ...    - ชื่อแพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 9
    ...    - รายละเอียด แพ็กเกจ
    ...    - ปุ่ม ""กลับ""
    ...    - ปุ่ม ""ต่อไป""
    ...    - เงื่อนไขบริการ
    ...    11. เลือก ""ต่อไป""
    ...    12. ตรวจสอบหน้า ""สมัครแพ็กเสริม"" ขั้นตอนที่2 เลือกวันมีผลใช้งาน
    ...    - ปุ่ม ""<""
    ...    - หมายเลขโทรศัพท์
    ...    - รอบบิลของคุณเริ่ม
    ...    - เลือก เลือกวันมีผลสำหรับการใช้งาน
    ...    - รอบบิลถัดไป
    ...    - วันถัดไป
    ...    - มีผลทันที
    ...    - ปุ่ม ""กลับ""
    ...    - ปุ่ม ""ต่อไป""
    ...    13. เลือก ""มีผลทันที""
    ...    14. เลือก ""ต่อไป""
    ...    15. ตรวจสอบหน้า ""สมัครแพ็กเสริม"" ขั้นตอนที่3 ยืนยัน
    ...    - หมายเลขโทรศัพท์
    ...    - รอบบิลของคุณเริ่ม
    ...    - แพ็กเกจที่คุณเลือก
    ...    - ชื่อแพ็กเกจเช็คได้มั้ยว่าเป็น แพ็กเกจ เดียวกันที่กดเข้ามาจากข้อ 9
    ...    - กรณีเปลี่ยนแพ็กเกจระหว่างรอบบิล:
    ...    - เลือกวันมีผลสำหรับการใช้งาน
    ...    - ปุ่ม ""กลับ""
    ...    - ปุ่ม ""ยืนยัน""
    ...    - เงื่อนไขบริการ
    ...    16. เลือก ""ยืนยัน""
    ...    17. ตรวจสอบ dialog message ""กำลังดำเนินการ กรุณารอรับ SMS แจ้งยืนยันการสมัครและวันมีผลเริ่มใช้งานแพ็กเกจ""
    ...    - ปุ่ม ""ตกลง""
    ...    18. จับภาพหน้าจอ
    ...    19. เลือก ""ตกลง""
    ...    20. ตรวจสอบ SMS ""แพ็กเสริมคุยฟรีกลางคืน ใช้ได้ตั้งแต่ xx/xx/xxxx xx:xx ขอบคุณค่ะ""
    ...    21. จับภาพหน้าจอ"
    ...
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
    Verify Current Package Page And Click Register    ${Number}
    ${packname}    Verify Register Other Package Page    ${Number}
    Verify Apply Other Talk Package First Step And Click Next    ${Number}    ${packname}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}
