*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/RoamingPackage_ApplyRoamingPackage_Prepaid.txt

*** Test Cases ***
[F8_Package_IOS_1-4_1-2_Y_1_2] Subscribe Data Package : Immediate In case : countries with states
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
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
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
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
    Run Keyword If    "${ar_NType}"=="3PE" or "${ar_NType}"=="3BE"    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    Select First Package In Select Package Page
    Select Immediate Button
    Select Subscribe Button
    Verify Summary Immediate Page Australia
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_Y_2_2] Subscribe Data Package : Immediate In case : Have only countries
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
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
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
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
    Run Keyword If    "${ar_NType}"=="3PE" or "${ar_NType}"=="3BE"    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    Select First Package In Select Package Page
    Select Immediate Button
    Select Subscribe Button
    Verify Summary Immediate Page China
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_Y_3_2] Subscribe Voice Package : Immediate In case : countries with states
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
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
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO    Onhold
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
    Run Keyword If    "${ar_NType}"=="3PE" or "${ar_NType}"=="3BE"    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    Select First Package In Select Package Page
    Select Immediate Button
    Select Subscribe Button
    Comment    Verify Summary Immediate Page Australia
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_Y_4_2] Subscribe Voice Package : Immediate In case : Have only countries
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
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
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO    Onhold
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
    Run Keyword If    "${ar_NType}"=="3PE" or "${ar_NType}"=="3BE"    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    Select First Package In Select Package Page
    Select Immediate Button
    Select Subscribe Button
    Comment    Verify Summary Immediate Page China
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_Y_5_2] Subscribe Data Package : FutureIn case : countries with states
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
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
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
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
    Run Keyword If    "${ar_NType}"=="3PE" or "${ar_NType}"=="3BE"    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    Select First Package In Select Package Page
    Select Specify Start Date Button
    ${StartDate}    Set Specify Start Date Not More Than 30 Day
    Select Start to Use in State
    Select Subscribe Button
    Verify Summary Specify Page Australia    ${StartDate}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_Y_6_2] Subscribe Data Package : FutureIn case : Have only countries
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
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
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
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
    Run Keyword If    "${ar_NType}"=="3PE" or "${ar_NType}"=="3BE"    Verify Package Roaming Page iOS    ${Number}    ${Country}    ${Package}
    Select First Package In Select Package Page
    Select Specify Start Date Button
    ${StartDate}    Set Specify Start Date Not More Than 30 Day
    Select Subscribe Button
    Verify Summary Specify Page China    ${StartDate}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_Y_7_2] Subscribe Voice Package : FutureIn case : countries with states
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
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
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_Y_8_2] Subscribe Voice Package : FutureIn case : Have only countries
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
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
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_Y_9_2] Apply Roaming Packages Verify page :Apply Roaming Package
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
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
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO    demo
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

[F8_Package_IOS_1-4_1-2_Y_10_2] Apply Roaming Packages Verify page :Package list
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
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
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO    demo
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

[F8_Package_IOS_1-4_1-2_Y_11_2] Apply Roaming Packages Verify page : Package Detail
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
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
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
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
    Select Detail First Package
    Verify Detail First Package Page    ${Number}    ${Country}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_Y_12_2] Apply Roaming Packages Verify page : Specify Effective Date (From Package list page)
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
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
    ...    9. กดเลือก แพ็กเกจแรก
    ...    10. ตรวจสอบหน้า "กำหนดวันเริ่มใช้งานแพ็กเกจ"
    ...    - หมายเลขโทรศัพท์
    ...    - กรุณากำหนดวันเริ่มใช้แพ็กเกจตามเวลา(label)
    ...    - วันที่
    ...    - เวลา
    ...    11. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
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
    Select package type to    Data
    Click Continue On Apply Roaming Package Page And Capture Screen iOS
    Select First Package In Select Package Page
    Verify Specify Effective Date    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_Y_13_2] Apply Roaming Packages Verify page : Specify Effective Date (From Package Detail page)
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
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
    ...    10. กดปุ่ม "ต่อไป"
    ...    11. ตรวจสอบหน้า "กำหนดวันเริ่มใช้งานแพ็กเกจ"
    ...        - หมายเลขโทรศัพท์
    ...        - กรุณากำหนดวันเริ่มใช้แพ็กเกจตามเวลา(label)
    ...        - วันที่
    ...        - เวลา
    ...    12. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
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
    Select package type to    Data
    Click Continue On Apply Roaming Package Page And Capture Screen iOS
    Select Detail First Package
    Next Detail First Package
    Verify Specify Effective Date    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_Y_14_2] Apply Roaming Packages Verify page : Package summary
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" (eg. ออสเตรเลีย)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (eg. ดาต้า)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. จับภาพหน้าจอ
    ...    9. กดเลือก แพ็กเกจแรก
    ...    10. กดเลือก "เริ่มใช้งานทันที" (radio button)
    ...    11. กดปุ่ม "สมัครแพ็ก"
    ...    12. ตรวจสอบหน้า "สรุปการสมัครแพ็กเกจ"
    ...        - หมายเลขโทรศัพท์
    ...        - ยืนยันการสมัครแพ็กเกจ(label)
    ...        - ชื่อแพ็กเกจ
    ...        - ราคา
    ...        - จำนวนวันใช้งาน(วัน)
    ...        - แพ็กเกจเริ่มต้นวันที่
    ...        - แพ็กเกจสิ้นสุดวันที่
    ...        - ปุ่ม "ยืนยัน"
    ...        - ปุ่ม "แก้ไข"
    ...        - ปุ่ม "ยกเลิก"
    ...    13. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
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
    Select package type to    Data
    Click Continue On Apply Roaming Package Page And Capture Screen iOS
    Select First Package In Select Package Page
    Select Immediate Button
    Select Subscribe Button
    Verify Australia Bridge DataRoam Unlimited 1 Day Summary Page Immediate    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_Y_15_2] Check Convert time (China only)
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" (จีน)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (eg. ดาต้า)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. จับภาพหน้าจอ
    ...    9. กดเลือก แพ็กเกจแรก
    ...    10. เลือกกำหนดวันเริ่มแพ็กเกจแบบ "กำหนดวันเริ่มใช้งานล่วงหน้า" radio button
    ...    11. เลือกวันที่ (เป็นวันพรุ่งนี้)
    ...    12. เลือกเวลา (00:00)
    ...    13. ตรวจสอบ "การเทียบเวลากับประเทศไทย"
    ...         "วันและเวลาเมื่อเทียบกับเวลาประเทศไทย"
    ...         -  dd mm yyyy  hh:mm
    ...           eg. 09 มี.ค. 2560 23:00
    ...          (*เวลาในประเทศไทยควรเป็นวันที่ปัจจุบันและเวลาควรเป็น23:00 น. )
    ...    14. ตรวจสอบ "วันเริ่มต้นและสิ้นสุดแพ็กเกจ"
    ...         "แพ็กเกจที่คุณเลือก วันเริ่มต้นและสิ้นสุดแพ็กเกจยึดตาม           เวลาประเทศไทย"
    ...         - แพ็กเกจเริ่มต้นวันที่ dd mm yyyy  hh:mm
    ...           eg.แพ็กเกจเริ่มต้นวันที่ 09 มี.ค. 2560 23:00 น.
    ...         - แพ็กเกจสิ้นสุด dd mm yyyy  hh:mm ( เวลาสิ้นสุดจะเท่ากับเวลาเริ่มต้น+ 23:59 ชม. หรือ เวลาเริ่มต้น+ 24:00 ชม.)
    ...           eg. แพ็กเกจสิ้นสุด 09 มี.ค. 23:00
    ...           หรือ  แพ็กเกจสิ้นสุด 10 มี.ค. 22:59
    ...    15. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
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
    Select package type to    Data
    Click Continue On Apply Roaming Package Page And Capture Screen iOS
    Select First Package In Select Package Page
    Select Specify Start Date Button
    set date tomorrow
    Verify Converted To Thailand Time
    Verify End And Start Time
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_N_16_2] Error : Apply Roaming Packages page (Not select roaming country)
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. ตรวจสอบหน้า "สมัครแพ็คเกจโรมมิ่ง"
    ...        - หมายเลขโทรศัพท์
    ...        - ประเทศที่ต้องการสมัคร
    ...        - ระบบของหมายเลขที่ต้องการสมัคร (auto detect)
    ...        - ประเภทแพ็กเกจที่ต้องการ
    ...    5. เลือก ระบบของหมายเลขที่ต้องการสมัคร (auto detect)
    ...    6. เลือกประเภทแพ็กเกจที่ต้องการ  (eg. ดาต้า)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. ตรวจสอบ dialog message "กรุณาเลือกประเทศที่ต้องการสมัคร"
    ...    9. จับภาพหน้าจอ
    [Tags]    TH    EN    active    fail    3PE    3BE    3PO    3BO
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
    Select package type to    Data
    Click Continue On Apply Roaming Package Page
    Verify Dialog Message No Country Select
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_N_17_2] Error : Apply Roaming Packages page (Not select customer type)
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. ตรวจสอบหน้า "สมัครแพ็คเกจโรมมิ่ง"
    ...        - หมายเลขโทรศัพท์
    ...        - ประเทศที่ต้องการสมัคร
    ...        - ระบบของหมายเลขที่ต้องการสมัคร (auto detect)
    ...        - ประเภทแพ็กเกจที่ต้องการ
    ...    5. เลือกประเทศที่ต้องการสมัคร(eg. ออสเตรเลีย)
    ...    6.เลือก ระบบของหมายเลขที่ต้องการสมัคร = "โปรดเลือก"
    ...    7. เลือกประเภทแพ็กเกจที่ต้องการ  (eg. ดาต้า)
    ...    8. กดปุ่ม "ดำเนินการต่อ"
    ...    9. ตรวจสอบ dialog message "กรุณาเลือกระบบของหมายเลขที่ต้องการสมัคร"
    ...    10. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO    Onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_N_18_2] Error : Apply Roaming Packages page (Not select package type)
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. ตรวจสอบหน้า "สมัครแพ็คเกจโรมมิ่ง"
    ...        - หมายเลขโทรศัพท์
    ...        - ประเทศที่ต้องการสมัคร
    ...        - ระบบของหมายเลขที่ต้องการสมัคร (auto detect)
    ...        - ประเภทแพ็กเกจที่ต้องการ
    ...    5. เลือกประเทศที่ต้องการสมัคร(eg. ออสเตรเลีย)
    ...    6.เลือก ระบบของหมายเลขที่ต้องการสมัคร (auto detect)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. ตรวจสอบ dialog message "กรุณาเลือกประเภทแพ็กเกจที่ต้องการสมัคร"
    ...    9. จับภาพหน้าจอ
    [Tags]    TH    EN    active    fail    3PE    3BE    3PO    3BO
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

[F8_Package_IOS_1-4_1-2_N_19_2] Error : Select Effective Date ( Not select effective date )
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร"(eg. ออสเตรเลีย)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (eg. ดาต้า)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. กดเลือก แพ็กเกจแรก
    ...    9. เลือกกำหนดวันเริ่มแพ็กเกจแบบ "กำหนดวันเริ่มใช้งานล่วงหน้า" radio button
    ...    10. กดปุ่ม "สมัครแพ็ก"
    ...    11. ตรวจสอบ dialog message "กรุณาเลือกวันและเวลาเริ่มใช้งานแพ็กเกจ"
    ...    12. จับภาพหน้าจอ
    [Tags]    TH    EN    active    fail    3PE    3BE    3PO    3BO
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
    Select package type to    Data
    Click Continue On Apply Roaming Package Page
    Select First Package In Select Package Page
    Select Specify Start Date Button
    Select Subscribe Button
    Verify Dialog Message No Set Start Time
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_N_22_2] Error : Select Effective Date In case : countries with states
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร"(eg. ออสเตรเลีย)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (eg. ดาต้า)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. กดเลือก แพ็กเกจแรก
    ...    9. เลือกกำหนดวันเริ่มแพ็กเกจแบบ "กำหนดวันเริ่มใช้งานล่วงหน้า" radio button
    ...    10. เลือกวันที่ (วันปัจจุบัน)
    ...    11. เลือกเวลา (เวลาปัจจุบัน)
    ...    12. กดปุ่ม "สมัครแพ็ก"
    ...    13. ตรวจสอบ dialog message "โปรดเลือกรัฐ/เมือง"
    ...    14. จับภาพหน้าจอ
    [Tags]    TH    EN    active    fail    3PE    3BE    3PO    3BO
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
    Select package type to    Data
    Click Continue On Apply Roaming Package Page
    Select First Package In Select Package Page
    Select Specify Start Date Button
    Set Current Date
    Select Subscribe Button
    Verify Dialog Message No Select State
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F8_Package_IOS_1-4_1-2_N_23_2] Error : Subscribe Package
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "สมัครแพ็คเกจโรมมิ่ง"
    ...    4. เลือก "ประเทศที่ต้องการสมัคร" (eg. ออสเตรเลีย)
    ...    5. เลือก "ระบบของหมายเลขที่ต้องการสมัคร" (เอไอเอส วัน-ทู-คอล!)
    ...    6. เลือก "ประเภทแพ็กเกจที่ต้องการ" (eg. ดาต้า)
    ...    7. กดปุ่ม "ดำเนินการต่อ"
    ...    8. จับภาพหน้าจอ
    ...    9. กดเลือก แพ็กเกจแรก
    ...    10. เลือกกำหนดวันเริ่มแพ็กเกจแบบ "เริ่มใช้งานทันที" radio button
    ...    11. กดปุ่ม "สมัครแพ็ก"
    ...    12. กดปุ่ม "ยืนยัน"
    ...    13. ตรวจสอบ dialog message "แพ็กเกจที่คุณสมัครเป็นแพ็กเกจสำหรับระบบ เอไอเอส รายเดือน ปัจจุบันคุณใช้งานในระบบ เอไอเอส วันทูคอล! กรุณาเลือกระบบของหมายเลขที่ต้องการสมัครเป็น เอไอเอส วันทูคอล! และทำการสมัครแพ็กเกจใหม่อีกครั้ง"
    ...    14. จับภาพหน้าจอ
    [Tags]    TH    EN    active    fail   3PE    3BE    3PO    3BO    Onhold
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
    Select package type to    Data
    Click Continue On Apply Roaming Package Page And Capture Screen iOS
    Select First Package In Select Package Page iOS
    Select Immediate Button
    Select Subscribe Button
    Select Confirm In Summary Page
    Verify Dialog Message Current AIS Postpaid But Select AIS 12Call
    [Teardown]    Keywords For TearDown    ${#dict_device_name}
