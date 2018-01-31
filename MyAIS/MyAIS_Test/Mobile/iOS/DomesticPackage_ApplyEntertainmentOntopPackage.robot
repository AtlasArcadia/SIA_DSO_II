*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/DomesticPackage_ApplyEntertainmentOntopPackage_Prepaid.txt

*** Test Cases ***
[F10_Package_IOS_1,3_1-2_Y_1_2] Verify page Apply Entertainment OnTop Package
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...    EN
    ...    Test Step
    ...    1. Login MyAIS.
    ...    2. Click "Package" menu
    ...    3. Click "Apply Entertainment OnTop Package" menu
    ...    4. Verify "Apply Entertainment OnTop Package"page
    ...       - Fulfill your lifestyle with The Premier Entertainment via AIS PLAY
    ...       - The ultimate of world class entertainment
    ...       - Anywhere Anytime Movie on the go with HBO GO
    ...       - Available in original with subtitle and Thai Dub
    ...       - Fun & Relax Seamless entertainment experience
    ...       - List Package
    ...       - Term & Condition
    ...    5. Capture screen
    ...
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    TH
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริม Entertainment"
    ...    4. ตรวจสอบหน้า "สมัครแพ็กเกจเสริม Entertainment"
    ...    - เบอร์โทรศัพท์
    ...    - แพ็กเกจเสริม Entertainment
    ...    - Entertainment
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
    Select Package Menu
    Select Apply Entertainment On Top Package Submenu
    Verify Page Apply Entertainment On Top Package By NType    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F10_Package_IOS_2,4_1-2_Y_1_2] Verify page Apply Entertainment OnTop Package
    [Documentation]    ***Owner : Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO,3BO
    ...    Status : Active
    ...    EN
    ...    Test Step
    ...    1. Login MyAIS.
    ...    2. Click "Package" menu
    ...    3. Click "Apply Entertainment On-Top Package"
    ...    4. Verify Page "Apply Entertainment On-Top Package"
    ...    - Fulfill your lifestyle with The Premier Entertainment! via AIS PLAY
    ...    5. Capture Screen
    ...
    ...    Source Number : 3PO,3BO
    ...    Status : Active
    ...    TH
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริม Entertainment"
    ...    4. ตรวจสอบหน้า "สมัครแพ็กเกจเสริม Entertainment"
    ...    - สมัครแพ็กเกจเสริม Entertainment at Header
    ...    - แพ็กเกจเสริม PREMIER FULL HD 399บ.
    ...    - ปุ่ม สมัคร
    ...    - แพ็กเกจเสริม PREMIER FULL HD 499บ.
    ...    - ปุ่ม สมัคร
    ...    - เงื่อนไขบริการ
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Entertainment On Top Package Submenu
    Verify Page Apply Entertainment On Top Package    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F10_Package_IOS_1,3_1-2_Y_2_2] Apply Entertainment OnTop Package
    [Documentation]    Owner : ***Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...    EN
    ...    Test Step
    ...    1. Login MyAIS.
    ...    2. Select menu "Pacjage"
    ...    3. Select "Apply Entertainment OnTop Package"
    ...    4. Select Package(First package)
    ...    5. Apply Entertainment OnTop Package (Step 1)
    ...       - Pack name
    ...       - Detail
    ...       - "Confirm" botton
    ...       - "Cancel" botton
    ...    6. Click "Confirm"
    ...    7. Verify popup msg: Transaction processed successfully. Thank you for your using our service.
    ...    8. Capture screen
    ...
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    TH
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริม Entertainment"
    ...    4. เลือกแพ็กเกจ (First package)
    ...    5. ตรวจสอบหน้า สมัครแพ็กเกจเสริม Entertainment ขั้นตอนที่ 1
    ...    - เบอร์โทรศัพท์
    ...    - Pack name
    ...    - รายละเอียดแพ็กเกจ
    ...    - ปุ่ม "ต่อไป"
    ...    - ปุ่ม "กลับ"
    ...    - เงื่อนไขบริการ
    ...    6. กด "ต่อไป"
    ...    7. ตรวจสอบหน้า สมัครแพ็กเกจเสริม Entertainment ขั้นตอนที่ 2
    ...    - เบอร์โทรศัพท์
    ...    - แพ็กเกจที่คุณเลือก
    ...    - แพ็กเกจ (เชคว่าเป็นแพ็กเดียวกับที่เลือกมา)
    ...    - วันที่มีผลสำหรับการใช้งาน
    ...    - ปุ่ม "ต่อไป"
    ...    - ปุ่ม "กลับ"
    ...    - เงื่อนไขบริการ
    ...    8. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Entertainment On Top Package Submenu
    Select First Package
    Verify Page First Package Detail    ${Number}
    Select Continue Apply Entertainment On Top Package
    Verify Summary Page    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F10_Package_IOS_2,4_1-2_Y_2_2] Verify page Apply Other On-Top Package In Case PREMIER FULL HD on-top 399B
    [Documentation]    Owner : ***Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO,3BO
    ...    Status : Active
    ...    EN
    ...    Test Step
    ...    1. Login MyAIS.
    ...    2. Click "Package" menu
    ...    3. Click "Apply Entertainment On-Top Package"
    ...    4. Click "PREMIER FULL HD on-top 399B. (Special 299B.)"
    ...    5. Click "Apply"
    ...    6. Verify Page Detail Pack
    ...       - PREMIER FULL HD on-top 399B. (Special 299B.)
    ...       - PREMIER FULL HD on-top 399Baht On-top Package with special price 299B/M get free for 1 Month. Enjoy TV, movies, sereis, cartoons,sport,and news from top channels via AIS PLAY app. To download app, dial*357#. For available channels www.ais.co.th/playapp
    ...       - Your package will be effective immediately after SMS confirmation
    ...    7. Capture Screen
    ...
    ...    Source Number : 3PO,3BO
    ...    Status : Active
    ...    TH
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริม Entertainment"
    ...    4. เลือก "แพ็กเกจเสริม PREMIER FULL HD 399บ."
    ...    5. ตรวจสอบหน้า "แพ็กเกจเสริม PREMIER FULL HD 399บ."
    ...    - แพ็กเกจเสริม PREMIER FULL HD 399บ.(พิเศษ299บ.)
    ...    - แพ็กเกจเสริม PREMIER FULL HD 399บ. ราคาพิเศษ 299บ.ดูฟรีนาน 1 เดือน ดูทีวี หนัง ซีรีย์ การ์ตูน กีฬา ข่าวช่องดังระดับโลก ผ่านแอป AIS PLAY บนมือถือหรือแท็บเล็ต โหลดAIS PLAY กด*357# เช็กช่องที่รับชมได้ที่www.ais.co.th/playapp
    ...    - วันที่ทีผลสำหรับการใช้งาน: มีผลทันที หลังจากได้รับ SMS ยืนยัน
    ...    - ปุ่ม "ยืนยัน"
    ...    - ปุ่ม "ยกเลิก"
    ...    6. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Entertainment On Top Package Submenu
    ${FirstPackage}    Select First Package
    Verify Page First Package Detail    ${Number}    ${FirstPackage}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F10_Package_IOS_2,4_1-2_Y_3_2] Verify page Apply Other On-Top Package In Case PREMIER FULL HD on-top 499B
    [Documentation]    Owner : ***Lek***
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO,3BO
    ...    Status : Active
    ...    EN
    ...    Test Step
    ...    1. Login MyAIS.
    ...    2. Click "Package" menu
    ...    3. Click "Apply Entertainment On-Top Package"
    ...    4. Click "PREMIER FULL HD on-top 499B."
    ...    5. Click "Apply"
    ...    6. Verify Page Detail Pack
    ...       - PREMIER FULL HD on-top 499B.
    ...       - PREMIER FULL HD on-top package 499B. Enjoy unlimited TV, movies, sereis, cartoons,sport such as HBO via AIS PLAY and unlimited Internet for AIS PLAY valid for 12 bill cycles
    ...       - Your package will be effective immediately after SMS confirmation
    ...    7. Capture Screen
    ...
    ...    Source Number : 3PO,3BO
    ...    Status : Active
    ...    TH
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "แพ็กเกจ"
    ...    3. เลือก "สมัครแพ็กเกจเสริม Entertainment"
    ...    4. เลือก "แพ็กเกจเสริม PREMIER FULL HD 499บ."
    ...    5. ตรวจสอบหน้า "แพ็กเกจเสริม PREMIER FULL HD 499บ."
    ...    - แพ็กเกจเสริม PREMIER FULL HD 499บ.
    ...    - แพ็กเกจเสริม PREMIER FULL HD 499บ. ดูทีวี หนัง ซีรีย์ การ์ตูน กีฬาจากช่องดังระดับโลกไม่อั้น เช่น HBO ผ่านแอป AIS PLAY และ อินเทอร์เน็ตไม่จำกัดสำหรับแอป AIS PLAY นาน 12 รอบบิล
    ...    - วันที่ทีผลสำหรับการใช้งาน: มีผลทันที หลังจากได้รับ SMS ยืนยัน
    ...    - ปุ่ม "ยืนยัน"
    ...    - ปุ่ม "ยกเลิก"
    ...    6. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Package Menu
    Select Apply Entertainment On Top Package Submenu
    ${SecondPackage}    Select Second Package
    Verify Page Second Package Detail    ${Number}    ${SecondPackage}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}
