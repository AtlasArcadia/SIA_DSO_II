*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/DomesticsPackage_CancelOnTopPackage.txt

*** Test Cases ***
[F6_Package_IOS_2,4_1-2_Y_1_2]
    [Documentation]    *Owner : TiNn*
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""แพ็กเกจ""
    ...    3. เลือก ""แพ็กเกจปัจจุบันของคุณ""
    ...    4. เลือก ""ยกเลิกแพ็กเสริม""
    ...    5. ตรวจสอบหน้า ""ยกเลิกแพ็กเสริม""
    ...    - หมายเลขของคุณไม่มีการใช้งานแพ็กเกจเสริม หรือแพ็กเกจเสริมที่ใช้งานอยู่ไม่สามารถยกเลิกได้
    ...    6. จับภาพหน้าจอ"
    [Tags]    demotin
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_Package=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Package
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    YourCurrentPackage
    Select Cancel Package
    Verify Dialog MSG
    [Teardown]    Keywords For TearDown    ${#dict_device_name}


[F6_Package_IOS_2,4_1-2_Y_2_2]
    [Documentation]    *Owner : TiNn*
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""แพ็กเกจ""
    ...    3. เลือก ""แพ็กเกจปัจจุบันของคุณ""
    ...    4. เลือก ""ยกเลิกแพ็กเสริม""
    ...    5. ตรวจสอบหน้า ""ยกเลิกแพ็กเสริม""
    ...    - หมายเลขโทรศัพท์
    ...    - รอบบิลของคุณเริ่ม
    ...    - แพ็กเสริม
    ...    - ชื่อแพ็กเกจ
    ...    - เงื่อนไขบริการ
    ...    6. เลือก ""แพ็กเสริม"" ที่ต้องการยกเลิก
    ...    7. ตรวจสอบหน้า ""ยกเลิกแพ็กเกจ"" ยืนยัน
    ...    - หมายเลขโทรศัพท์
    ...    - รอบบิลของคุณเริ่ม
    ...    - รายละเอียด
    ...    - ปุ่ม ""ยืนยัน""
    ...    - ปุ่ม ""กลับ""
    ...    - เงื่อนไขบริการ
    ...    8. เลือก ""ยืนยัน""
    ...    9. ตรวจสอบ dialog message ""กำลังดำเนินการ กรุณารอรับ SMS ยืนยันการยกเลิก""
    ...    - ปุ่ม ""ตกลง""
    ...    10. จับภาพหน้าจอ"
    [Tags]    demotin
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CancelPackage=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CancelPackage
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    YourCurrentPackage
    Select Cancel Package
    Verify Cancel Package Page    ${Number}
    Verify Confirm Cancel Package Page    ${Number}
    Verify Dialog MSG Wait SMS
    [Teardown]    Keywords For TearDown    ${#dict_device_name}
