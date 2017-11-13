*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/RoamingPackage_ApplyRoamingPackage_Prepaid.txt

*** Test Cases ***
[F8_Package_IOS_1,3_1-2_Y_1_2] Subscribe Data Package : Immediate In case : countries with states
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" (eg. ออสเตรเลีย)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (ดาต้า)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. ตรวจสอบหน้า "รายการแพ็กเกจ"
    ...    - หมายเลขโทรศัพท์
    ...    - ประเทศ
    ...    - ประเภทลูกค้า (auto detect)
    ...    - ประเภทแพ็กเกจ
    ...    - รายการแพ็กเกจ
    ...    9. เลือก แพ็กเกจที่ 1
    ...    10. เลือก "เริ่มใช้งานทันที" (radio button)
    ...    11. กดปุ่ม "สมัครแพ็ก"
    ...    12. ตรวจสอบหน้า "สรุปการสมัครแพ็กเกจ"
    ...    - ชื่อแพ็กเกจ
    ...    - ราคา
    ...    - จำนวนวันใช้งาน(วัน)
    ...    - แพ็กเกจเริ่มต้นวันที่
    ...    - แพ็กเกจสิ้นสุดวันที่
    ...    13. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To Australia
    Select Package Type To Data
    ${Country}    ${Package}    Get Country Customer And Package Type iOS
    Click Continue On Apply Roaming Package Page
    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    Select First Package In Select Package Page
    Select Immediate Button
    Select Subscribe Button
    Verify Summary Immediate Page Australia
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_2_2] Subscribe Data Package : Immediate In case : Have only countries
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" (eg. จีน)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (ดาต้า)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. ตรวจสอบหน้า "รายการแพ็กเกจ"
    ...    - หมายเลขโทรศัพท์
    ...    - ประเทศ
    ...    - ประเภทลูกค้า (auto detect)
    ...    - ประเภทแพ็กเกจ
    ...    - รายการแพ็กเกจ
    ...    9. เลือก แพ็กเกจที่ 1
    ...    10. เลือก "เริ่มใช้งานทันที" (radio button)
    ...    11. กดปุ่ม "สมัครแพ็ก"
    ...    12. ตรวจสอบหน้า "สรุปการสมัครแพ็กเกจ"
    ...    - ชื่อแพ็กเกจ
    ...    - ราคา
    ...    - จำนวนวันใช้งาน(วัน)
    ...    - แพ็กเกจเริ่มต้นวันที่
    ...    - แพ็กเกจสิ้นสุดวันที่
    ...    13. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To China
    Select Package Type To Data
    ${Country}    ${Package}    Get Country Customer And Package Type iOS
    Click Continue On Apply Roaming Package Page
    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    Select First Package In Select Package Page
    Select Immediate Button
    Select Subscribe Button
    Verify Summary Immediate Page China
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_3_2] Subscribe Voice Package : Immediate In case : countries with states
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" (eg. ออสเตรเลีย)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (โทรออกและส่งSMS)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. ตรวจสอบหน้า "รายการแพ็กเกจ"
    ...    - หมายเลขโทรศัพท์
    ...    - ประเทศ
    ...    - ประเภทลูกค้า (auto detect)
    ...    - ประเภทแพ็กเกจ
    ...    - รายการแพ็กเกจ
    ...    9. เลือก แพ็กเกจที่ 1
    ...    10. เลือก "เริ่มใช้งานทันที" (radio button)
    ...    11. กดปุ่ม "สมัครแพ็ก"
    ...    12. ตรวจสอบหน้า "สรุปการสมัครแพ็กเกจ"
    ...    - ชื่อแพ็กเกจ
    ...    - ราคา
    ...    - จำนวนวันใช้งาน(วัน)
    ...    - แพ็กเกจเริ่มต้นวันที่
    ...    - แพ็กเกจสิ้นสุดวันที่
    ...    13. Capture screen
    [Tags]    TH    EN    active    success    3PE    3BE
    ...    Onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To Australia
    Select Package Type To VoiceAndSMS
    ${Country}    ${Package}    Get Country Customer And Package Type iOS
    Click Continue On Apply Roaming Package Page
    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    Select First Package In Select Package Page
    Select Immediate Button
    Select Subscribe Button
    Comment    Verify Summary Immediate Page Australia
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_4_2] Subscribe Voice Package : Immediate In case : Have only countries
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" \ (eg. ญี่ปุ่น)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (โทรออกและส่งSMS)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. ตรวจสอบหน้า "รายการแพ็กเกจ"
    ...    - หมายเลขโทรศัพท์
    ...    - ประเทศ
    ...    - ประเภทลูกค้า (auto detect)
    ...    - ประเภทแพ็กเกจ
    ...    - รายการแพ็กเกจ
    ...    9. เลือก แพ็กเกจที่ 1
    ...    10. เลือก "เริ่มใช้งานทันที" (radio button)
    ...    11. กดปุ่ม "สมัครแพ็ก"
    ...    12. ตรวจสอบหน้า "สรุปการสมัครแพ็กเกจ"
    ...    - ชื่อแพ็กเกจ
    ...    - ราคา
    ...    - จำนวนวันใช้งาน(วัน)
    ...    - แพ็กเกจเริ่มต้นวันที่
    ...    - แพ็กเกจสิ้นสุดวันที่
    ...    13. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    ...    Onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To China
    Select Package Type To VoiceAndSMS
    ${Country}    ${Package}    Get Country Customer And Package Type iOS
    Click Continue On Apply Roaming Package Page
    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    Select First Package In Select Package Page
    Select Immediate Button
    Select Subscribe Button
    Comment    Verify Summary Immediate Page China
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_5_2] Subscribe Data Package : FutureIn case : countries with states
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" (eg. ออสเตรเลีย)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (ดาต้า)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. ตรวจสอบหน้า "รายการแพ็กเกจ"
    ...    - หมายเลขโทรศัพท์
    ...    - ประเทศ
    ...    - ประเภทลูกค้า (auto detect)
    ...    - ประเภทแพ็กเกจ
    ...    - รายการแพ็กเกจ
    ...    9. \ เลือก แพ็กเกจที่ 1
    ...    10. เลือก "กำหนดวันเริ่มใช้งานล่วงหน้า(ไม่เกิน 30 วัน)" (radio button)
    ...    11. เลือก "วันที่" เลือกใช้งานแพ็กเกจ
    ...    12. เลือก "เวลา" เลือกใช้งานแพ็กเกจ
    ...    13. เลือก "รัฐ/เมือง" (Victoria)
    ...    14. กดปุ่ม "สมัครแพ็ก"
    ...    15. ตรวจสอบหน้า "สรุปการสมัครแพ็กเกจ"
    ...    - ชื่อแพ็กเกจ
    ...    - ราคา
    ...    - จำนวนวันใช้งาน(วัน)
    ...    - แพ็กเกจเริ่มต้นวันที่
    ...    - แพ็กเกจสิ้นสุดวันที่
    ...    16. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To Australia
    Select Package Type To Data
    ${Country}    ${Package}    Get Country Customer And Package Type iOS
    Click Continue On Apply Roaming Package Page
    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    Select First Package In Select Package Page
    Select Specify Start Date Button
    Select Subscribe Button
    Comment    Verify Summary Immediate Page Australia
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_6_2] Subscribe Data Package : FutureIn case : Have only countries
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" (eg. จีน)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (ดาต้า)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. ตรวจสอบหน้า "รายการแพ็กเกจ"
    ...    - หมายเลขโทรศัพท์
    ...    - ประเทศ
    ...    - ประเภทลูกค้า (auto detect)
    ...    - ประเภทแพ็กเกจ
    ...    - รายการแพ็กเกจ
    ...    9. เลือก แพ็กเกจที่ 1
    ...    10. เลือก "กำหนดวันเริ่มใช้งานล่วงหน้า(ไม่เกิน 30 วัน)" (radio button)
    ...    11. เลือก "วันที่" เลือกใช้งานแพ็กเกจ
    ...    12. เลือก "เวลา" เลือกใช้งานแพ็กเกจ
    ...    13. กดปุ่ม "สมัครแพ็ก"
    ...    14. ตรวจสอบหน้า "สรุปการสมัครแพ็กเกจ"
    ...    - ชื่อแพ็กเกจ
    ...    - ราคา
    ...    - จำนวนวันใช้งาน(วัน)
    ...    - แพ็กเกจเริ่มต้นวันที่
    ...    - แพ็กเกจสิ้นสุดวันที่
    ...    15. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To China
    Select Package Type To Data
    ${Country}    ${Package}    Get Country Customer And Package Type iOS
    Click Continue On Apply Roaming Package Page
    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    Select First Package In Select Package Page
    Select Specify Start Date Button
    Select Subscribe Button
    Comment    Verify Summary Immediate Page China
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_7_2] Subscribe Voice Package : FutureIn case : countries with states
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" (eg. ออสเตรเลีย)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (โทรออกและส่งSMS)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. ตรวจสอบหน้า "รายการแพ็กเกจ"
    ...    - หมายเลขโทรศัพท์
    ...    - ประเทศ
    ...    - ประเภทลูกค้า (auto detect)
    ...    - ประเภทแพ็กเกจ
    ...    - รายการแพ็กเกจ
    ...    9. เลือก แพ็กเกจที่ 1
    ...    10. เลือก "กำหนดวันเริ่มใช้งานล่วงหน้า(ไม่เกิน 30 วัน)" (radio button)
    ...    11. เลือก "วันที่" เลือกใช้งานแพ็กเกจ
    ...    12. เลือก "เวลา" เลือกใช้งานแพ็กเกจ
    ...    13. เลือก "รัฐ/เมือง" (Victoria)
    ...    14. กดปุ่ม "สมัครแพ็ก"
    ...    15. ตรวจสอบหน้า "สรุปการสมัครแพ็กเกจ"
    ...    - ชื่อแพ็กเกจ
    ...    - ราคา
    ...    - จำนวนวันใช้งาน(วัน)
    ...    - แพ็กเกจเริ่มต้นวันที่
    ...    - แพ็กเกจสิ้นสุดวันที่
    ...    16.จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_8_2] Subscribe Voice Package : FutureIn case : Have only countries
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" (eg. ญี่ปุ่น)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (โทรออกและส่งSMS)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. ตรวจสอบหน้า "รายการแพ็กเกจ"
    ...    - หมายเลขโทรศัพท์
    ...    - ประเทศ
    ...    - ประเภทลูกค้า (auto detect)
    ...    - ประเภทแพ็กเกจ
    ...    - รายการแพ็กเกจ
    ...    9. เลือก แพ็กเกจที่ 1
    ...    10. เลือก "กำหนดวันเริ่มใช้งานล่วงหน้า(ไม่เกิน 30 วัน)" (radio button)
    ...    11. เลือก "วันที่" เลือกใช้งานแพ็กเกจ
    ...    12. เลือก "เวลา" เลือกใช้งานแพ็กเกจ
    ...    13. กดปุ่ม "สมัครแพ็ก"
    ...    14. ตรวจสอบหน้า "สรุปการสมัครแพ็กเกจ"
    ...    - ชื่อแพ็กเกจ
    ...    - ราคา
    ...    - จำนวนวันใช้งาน(วัน)
    ...    - แพ็กเกจเริ่มต้นวันที่
    ...    - แพ็กเกจสิ้นสุดวันที่
    ...    15. \ จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_9_2] Apply Roaming Packages Verify page :Apply Roaming Package
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. ตรวจสอบหน้า "สมัครแพ็คเกจโรมมิ่ง"
    ...    - หมายเลขโทรศัพท์
    ...    - ประเทศที่ต้องการสมัคร
    ...    - ระบบของหมายเลขที่ต้องการสมัคร (auto detect)
    ...    - ประเภทแพ็กเกจที่ต้องการ
    ...    - ปุ่ม "ดำเนินการต่อ"
    ...    - เงื่อนไขบริการ
    ...    5. Capture screen
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Verify Apply Roaming Package Page    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_10_2] Apply Roaming Packages Verify page :Package list
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" (eg. Australia)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (eg. ดาต้า)
    ...    7. จับภาพหน้าจอ
    ...    8. กดปุ่ม "ดำเนินการต่อ"
    ...    9. ตรวจสอบหน้า "รายการแพ็กเกจ"
    ...    - หมายเลขโทรศัพท์
    ...    - ประเทศ
    ...    - ประเภทลูกค้า (auto detect)
    ...    - ประเภทแพ็กเกจ
    ...    - รายการแพ็กเกจ (Check object visible)
    ...    10. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To Australia
    Select Package Type To Data
    ${Country}    ${Package}    Get Country Customer And Package Type iOS
    Click Continue On Apply Roaming Package Page
    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_11_2] Apply Roaming Packages Verify page : Package Detail
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" (eg. Australia)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (eg. ดาต้า)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. จับภาพหน้าจอ
    ...    9. กดปุ่ม "รายละเอียด"
    ...    10. ตรวจสอบหน้า "รายละเอียดแพ็กเกจ"
    ...    - หมายเลขโทรศัพท์
    ...    - รายละเอียดแพ็กเกจ
    ...    - ราคา
    ...    - จำนวนการใช้งาน
    ...    - ระยะเวลาใช้งาน
    ...    - ประเทศที่ต้องการสมัคร (label)
    ...    11. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    ...    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To Australia
    Select Package Type To Data
    ${Country}    ${Package}    Get Country Customer And Package Type iOS
    Click Continue On Apply Roaming Package Page
    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    Select Detail First Package
    Verify Detail First Package Page    ${Number}    ${Country}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_12_2] Apply Roaming Packages Verify page : Specify Effective Date (From Package list page)
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Have IR Service
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" (eg. Australia)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (eg. ดาต้า)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. จับภาพหน้าจอ
    ...    9. กดเลือก แพ็กเกจแรก
    ...    10. ตรวจสอบหน้า "กำหนดวันเริ่มใช้งานแพ็กเกจ"
    ...    - หมายเลขโทรศัพท์
    ...    - กรุณากำหนดวันเริ่มใช้แพ็กเกจตามเวลา(label)
    ...    - วันที่
    ...    - เวลา
    ...    11. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To Australia
    Select Package Type To Data
    Click Continue On Apply Roaming Package Page And Capture Screen iOS
    Select First Package In Select Package Page
    Verify Specify Effective Date    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_13_2] Apply Roaming Packages Verify page : Specify Effective Date (From Package Detail page)
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To Australia
    Select Package Type To Data
    Click Continue On Apply Roaming Package Page And Capture Screen iOS
    Select Detail First Package
    Next Detail First Package
    Verify Detail First Package Page    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_14_2] Apply Roaming Packages Verify page : Package summary
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To Australia
    Select Package Type To Data
    Click Continue On Apply Roaming Package Page And Capture Screen iOS
    Select First Package In Select Package Page
    Select Immediate Button
    Select Subscribe Button
    Verify Australia Bridge DataRoam Unlimited 1 Day Summary Page Immediate    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_Y_15_2] Check Convert time (China only)
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To China
    Select Package Type To Data
    Click Continue On Apply Roaming Package Page
    Select First Package In Select Package Page
    Select Specify Start Date Button
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_N_16_2] Error : Apply Roaming Packages page (Not select roaming country)
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Verify Apply Roaming Package Page iOS    ${Number}
    Select Package Type To Data
    Click Continue On Apply Roaming Package Page
    Verify Dialog Message No Country Select
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_N_17_2] Error : Apply Roaming Packages page (Not select customer type)
    [Documentation]    ***Owner :
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_N_18_2] Error : Apply Roaming Packages page (Not select package type)
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Verify Apply Roaming Package Page iOS    ${Number}
    Select Roaming Country To Australia
    Click Continue On Apply Roaming Package Page
    Verify Dialog Message No Package Type
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_N_19_2] Error : Select Effective Date ( Not select effective date )
    [Documentation]    ***Owner : Lek***
    ...
    ...    TestStep
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To Australia
    Select Package Type To Data
    Click Continue On Apply Roaming Package Page
    Select First Package In Select Package Page
    Select Specify Start Date Button
    Select Subscribe Button
    Verify Dialog Message No Set Start Time
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_N_22_2] Error : Select Effective Date In case : countries with states
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To Australia
    Select Package Type To Data
    Click Continue On Apply Roaming Package Page
    Select First Package In Select Package Page
    Select Specify Start Date Button
    Set Current Date
    Select Subscribe Button
    Verify Dialog Message No Select State
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1,3_1-2_N_23_2] Error : Subscribe Package
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Roaming Package Submenu
    Select Roaming Country To Australia
    Select Package Type To Data
    Click Continue On Apply Roaming Package Page And Capture Screen iOS
    Select First Package In Select Package Page iOS
    Select Immediate Button
    Select Subscribe Button
    Select Confirm In Summary Page
    Verify Dialog Message Current AIS Postpaid But Select AIS 12Call
    [Teardown]    Keywords For TearDown    ${#dict_device_name}
