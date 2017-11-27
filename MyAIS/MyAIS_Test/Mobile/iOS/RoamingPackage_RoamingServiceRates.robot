*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/RoamingPackage_RoamingServiceRates_Prepaid.txt

*** Test Cases ***
[F9_Package_IOS_1,3_1-2_Y_1_2] Check Roaming Service RatesIn case : Not select country
    [Documentation]    Owner :****Lek****
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...    EN
    ...    Test Step
    ...    1. Login MyAIS.
    ...    2. Click "Package" menu
    ...    3. Click "Roaming Service Rates" menu
    ...    4. Verify "Roaming Service Rates" page
    ...         - Mobile no.
    ...         - Voice Call Roaming
    ...           • Please select country and customer type
    ...         - SMS Roaming (Baht/SMS)
    ...           • Please select country and customer type
    ...         - "Great Saving Roaming Packages" botton
    ...    5. Capture screen
    ...
    ...    Source Number : 3PE,3BE
    ...    TH
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "อัตราค่าบริการโรมมิ่ง"
    ...    4. ตรวจสอบหน้า "อัตราค่าบริการโรมมิ่ง"
    ...         - หมายเลขโทรศัพท์
    ...         - อัตราค่าโทร
    ...           • โปรดเลือกประเทศและระบบ
    ...         - ส่งข้อความ (บาท/ข้อความ)
    ...           • โปรดเลือกประเทศและระบบ
    ...         - ปุ่ม "แพ็กเกจโรมมิ่งราคาประหยัด"
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Roaming Service Rate Submenu
    Verify Page Roming Service Rate Not Select Country    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F9_Package_IOS_1,3_1-2_Y_2_2] Check Roaming Service RatesIn case : Select country
    [Documentation]    Owner :****Lek****
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...    EN
    ...    Test Step
    ...    1. Login MyAIS.
    ...    2. Click "Package" menu
    ...    3. Click "Roaming Service Rates" menu
    ...    4. Select "country" (eg. Australia)
    ...    5. Select "customer type" (auto detect)
    ...    6. Verify "Roaming Service Rates" page
    ...         - Mobile no.
    ...         - Voice call roaming
    ...           • xx  (will show rate each country eg. 23)
    ...         - SMS Roaming (Baht/SMS)
    ...           • xx (will show rate each country eg. 14)
    ...         - "Great Saving Roaming Packages" botton
    ...    7. Capture screen
    ...
    ...    Source Number : 3PE,3BE
    ...    TH
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "อัตราค่าบริการโรมมิ่ง"
    ...    4. เลือกประเทศ (eg. Australia)
    ...    5. เลือกระบบ (auto detect)
    ...    6. ตรวจสอบหน้า "อัตราค่าบริการโรมมิ่ง"
    ...         - หมายเลขโทรศัพท์
    ...         - อัตราค่าโทร
    ...           • xx (จะแสดงเรทของแต่ละประเทศ)
    ...         - ส่งข้อความ (บาท/ข้อความ)
    ...           • xx (จะแสดงเรทของแต่ละประเทศ)
    ...         - ปุ่ม "แพ็กเกจโรมมิ่งราคาประหยัด"
    ...    7. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Roaming Service Rate Submenu
    Select Country To Cameroon
    ${ChooseCountry}    Verify Roaming Service Rate With Select Country iOS    Cameroon    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F9_Package_IOS_1,3_1-2_Y_3_2] Go to Apply Roaming Packages page
    [Documentation]    Owner :****Lek****
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...    EN
    ...    Test Step
    ...    1. Login MyAIS.
    ...    2. Click "Package" menu
    ...    3. Click "Roaming Service Rates" menu
    ...    4. Select "country" (eg. Australia)
    ...    5. Select "customer type" (auto detect)
    ...    6. Verify "Roaming Service Rates" page
    ...         - Mobile no.
    ...         - Voice call roaming
    ...           • xx  (will show rate each country eg. 23)
    ...         - SMS Roaming (Baht/SMS)
    ...           • xx (will show rate each country eg. 14)
    ...    7. Capture screen
    ...    8. Click "Great Saving Roaming Packages" button
    ...    9. Verify "Apply Roaming Packages" page
    ...         - Mobile no.
    ...         - Roaming country ( same country from "Roaming Service Rates" page )
    ...         - Customer type ( same type from "Roaming Service Rates" page )
    ...         - Package type (Please Select)
    ...    10. Capture screen
    ...
    ...    Source Number : 3PE,3BE
    ...    TH
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "อัตราค่าบริการโรมมิ่ง"
    ...    4. เลือกประเทศ (eg. Australia)
    ...    5. เลือกระบบ (auto detect)
    ...    6. ตรวจสอบหน้า "อัตราค่าบริการโรมมิ่ง"
    ...         - หมายเลขโทรศัพท์
    ...         - อัตราค่าโทร
    ...           • xx (จะแสดงเรทของแต่ละประเทศ)
    ...         - ส่งข้อความ (บาท/ข้อความ)
    ...           • xx (จะแสดงเรทของแต่ละประเทศ)
    ...         - ปุ่ม "แพ็กเกจโรมมิ่งราคาประหยัด"
    ...    7. จับภาพหน้าจอ
    ...    8. กดปุ่ม "แพ็กเกจโรมมิ่งราคาประหยัด"
    ...    9.ตรวจสอบหน้า "แพ็กเกจโรมมิ่งราคาประหยัด"
    ...         - หมายเลขโทรศัพท์
    ...         - ประเทศที่ต้องการสมัคร (จะเหมือนกับที่ทำการเลือกจากหน้าอัตราค่าบริการโรมมิ่ง)
    ...         - ระบบของหมายเลขที่ต้องการสมัคร (จะเหมือนกับที่ทำการเลือกจากหน้าอัตราค่าบริการโรมมิ่ง)
    ...         - ประเภทแพ็กเกจที่ต้องการ (โปรดเลือก)
    ...    10. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Roaming Service Rate Submenu
    Select Country To Cameroon
    ${ChooseCountry}    Verify Roaming Service Rate With Select Country iOS    Cameroon    ${Number}
    Click Great Saving Roaming Packages Button
    Verify Apply Roaming Package Page iOS    ${Number}    ${ChooseCountry}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F9_Package_IOS_1,3_1-2_Y_4_2] Check Roaming Service RatesIn Case: เลือก วัน/เวลา เดียวกันกับที่สมัคร
    [Documentation]    Owner : LEk
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...    EN
    ...    Test Step
    ...    1. Login MyAIS.
    ...    2. Click "Package" menu
    ...    3. Click "Roaming Service Rates" menu
    ...    4. Select "country" (eg. Australia)
    ...    5. Select "customer type" (auto detect)
    ...    6. Click "Great Saving Roaming Packages" button
    ...    7. Select "Package type" (eg. Data)
    ...    8. Click "Continue" button
    ...    9. Select 1st Package
    ...    10. Select "Specify start date" radio button
    ...    11. Set date (Current date)
    ...    12. Set time (Current time)
    ...    13. Select "State" (eg. Victoria)
    ...    14. Click "Subscribe"
    ...    15. Verify dialog message "Please specify start date after current date."
    ...    10. Capture screen
    ...
    ...    Source Number : 3PE,3BE
    ...    TH
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. กดเมนู "อัตราค่าบริการโรมมิ่ง"
    ...    4. เลือกประเทศ (eg. Australia)
    ...    5. เลือกระบบ (auto detect)
    ...    6. เลือก "แพ็กเกจโรมมิ่งราคาประหยัด"
    ...    7. เลือก "ประเภทแพ็กเกจที่ต้องการ" (eg. ดาต้า)
    ...    8. เลือก "ดำเนินการต่อ"
    ...    9. เลือกแพ็กเกจที่ 1
    ...    10. เลือกกำหนดวันเริ่มแพ็กเกจแบบ "กำหนดวันเริ่มใช้งานล่วงหน้า"
    ...    10. เลือกวันที่ (เป็นวันปัจจุบัน)
    ...    11. เลือกเวลา (เวลาปัจจุบัน)
    ...    12. เลือกรัฐ/เมือง (Victoria)
    ...    13. กดปุ่ม "สมัครแพ็ก"
    ...    14. ตรวจสอบ dialog message "กรุณาระบุวันเริ่มใช้งานมากกว่าวันที่ปัจจุบัน"
    ...    15. จับภาพหน้าจอ
    ...    16. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE    Onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}
