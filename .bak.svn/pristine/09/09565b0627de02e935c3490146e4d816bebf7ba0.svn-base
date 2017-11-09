*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/QuickMenu_VerifyMenu.txt

*** Test Cases ***
[F2_QuickMenu_IOS_1_1-2_Y_1_2] Verify Ask Aunjai page
    [Documentation]    Owner : Tinpan
    ...    source : 3PE
    ...    TH
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ถามอุ่นใจ"
    ...    6. ตรวจสอบหน้า "ถามอุ่นใจ" [1]
    ...    7. Capture screen
    ...    [1] verify "ถาม อุ่นใจ"
    ...
    ...    EN
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Ask Aunjai"
    ...    6. ตรวจสอบหน้า "Ask Aunjai" [1]
    ...    7. Capture screen
    ...    [1] verify "Ask Aunjai"
    [Tags]    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu from QuickMenu    AskAunJai    #Submenu list AskAunJai,Payment,ApplyOnTopPackage,PointAndPrivilege,RegisterAISFibre,Search
    Verify Aunjai Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_QuickMenu_IOS_1_1-2_Y_2_2] Verify TopUp Page
    [Documentation]    Owner : Tinpan
    ...    source : 3PE
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "เติมเงิน"
    ...    6. เลือก "เติมเงิน/ จ่ายบิล"
    ...    7. ตรวจสอบหน้า "เติมเงิน" [1]
    ...    8. Capture screen
    ...
    ...    [1] verify
    ...    - เติมเงิน
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - ระบุหมายเลขโทรศัพท์ที่ต้องการเติมเงิน
    ...    - เลือกช่องทางการเติมเงิน
    ...    - เลือกจำนวนที่ต้องการเติมเงิน
    ...
    ...    EN
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Top Up"
    ...    6. ตรวจสอบหน้า "Top Up" [1]
    ...    7. Capture screen
    ...    [1]
    ...    - Top Up
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - Enter destination number you wish to top up
    ...    - Please select top up channels
    ...    - Select top up amount
    [Tags]    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu from QuickMenu    TopUp    #Submenu list AskAunJai,Payment,ApplyOnTopPackage,PointAndPrivilege,RegisterAISFibre,Search
    Verify TopUp Page From QuickMenu    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_QuickMenu_IOS_1_1-2_Y_3_2] Verify Apply On-Top Package Page
    [Documentation]    Owner : Tinpan
    ...    source : 3PE
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "สมัครแพ็กเกจเสริมอื่นๆ"
    ...    6. ตรวจสอบหน้า "สมัครแพ็กเกจเสริมอื่นๆ" [1]
    ...    7. Capture screen
    ...
    ...    [1] verify
    ...    - สมัครแพ็กเกจเสริมอื่นๆ
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - แพ็กเกจเสริมโทรและเน็ต
    ...
    ...    EN
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Apply On-Top Package"
    ...    6. ตรวจสอบหน้า "Apply Other On-Top Package" [1]
    ...    7. Capture screen
    ...    [1] verify
    ...    - Apply Other On-Top Package
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - Talk & Net On-Top Package
    [Tags]    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu from QuickMenu    ApplyOnTopPackage    #Submenu list AskAunJai,Payment,ApplyOnTopPackage,PointAndPrivilege,RegisterAISFibre,Search
    Verify Apply OnTop Package Page From QuickMenu    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_QuickMenu_IOS_1_1-2_Y_4_2] Verify Point And Privilleges Page
    [Documentation]    Owner : Tinpan
    ...    source : 3PE
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "พอยท์ & สิทธิพิเศษ"
    ...    6. ตรวจสอบหน้า "พอยท์ & สิทธิพิเศษ" [1]
    ...    7. Capture screen
    ...
    ...    [1]
    ...    - verify "พอยท์ & สิทธิพิเศษ"
    ...    - verify "พอยท์"
    ...    - verify "สิทธิพิเศษ"
    ...    - verify "Nearby"
    ...
    ...    EN
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Points & Privileges"
    ...    6. ตรวจสอบหน้า "Points & Privileges" [1]
    ...    7. Capture screen
    ...    [1]
    ...     - verify "Points & Privileges"
    ...     - verify "Points"
    ...     - verify "Privileges"
    ...     - verify "Nearby"
    [Tags]    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu from QuickMenu    PointAndPrivilege    #Submenu list AskAunJai,Payment,ApplyOnTopPackage,PointAndPrivilege,RegisterAISFibre,Search
    Comment    *messagesCancel Register Point And Privilleges
    Verify Point And privilleges Page From Quickmenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_QuickMenu_IOS_1_1-2_Y_5_2] Verify register AIS Fibre Page
    [Documentation]    Owner : Tinpan
    ...    source : 3PE
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "สมัคร AIS Fibre"
    ...    6. ตรวจสอบหน้า "สมัคร AIS Fibre" [1]
    ...    7. Capture screen
    ...
    ...    [1] verify "สมัคร AIS Fibre"
    ...
    ...    EN
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Register AIS Fibre"
    ...    6. ตรวจสอบหน้า "Register AIS Fibre" [1]
    ...    7. Capture screen
    ...    [1] verify "Register AIS Fibre/Coverage Checking"
    [Tags]    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu from QuickMenu    RegisterAISFibre    #Submenu list AskAunJai,Payment,ApplyOnTopPackage,PointAndPrivilege,RegisterAISFibre,Search
    Verify Register AISFibre And CoverageChecking Page From Quickmenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_QuickMenu_IOS_1_1-2_Y_6_2] Verify Search Page
    [Documentation]    Owner : Tinpan
    ...    source : 3PE
    ...    TestStep
    ...
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. ตรวจสอบหน้า "ค้นหา" [1]
    ...    7. Capture screen
    ...    [1] verify
    ...    - All Menu
    ...    - ค้นหา
    ...
    ...    EN
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. ตรวจสอบหน้า "Search" [1]
    ...    7. Capture screen
    ...    [1] verify
    ...    - All Menu
    ...    - Search
    [Tags]    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu from QuickMenu    Search    #Submenu list AskAunJai,Payment,ApplyOnTopPackage,PointAndPrivilege,RegisterAISFibre,Search
    Verify Search Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_QuickMenu_IOS_1_1-2_Y_7_2] Verify Close Quick menu Page
    [Documentation]    Owner : Tinpan
    ...    source : 3PE
    ...    TestStep
    ...
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "X"
    ...    6. ตรวจสอบหน้า "หน้าหลัก" [1]
    ...    7. Capture screen
    ...
    ...    [1] verify
    ...    - หน้าหลัก
    ...    - ยอดเงินคงเหลือ
    ...    - ใช้งานได้ถึงวันที่
    ...    - AIS Point
    ...
    ...    EN
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "X"
    ...    6. ตรวจสอบหน้า "Home" [1]
    ...    7. Capture screen
    ...    [1] verify
    ...    - Home
    ...    - Remaining Balance
    ...    - Valid Until
    ...    - Current Package
    [Tags]    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Exit From QuickMenu And Verify Home Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[TestSwipe On iOS]
    [Tags]    test
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Swipe to element    ${lblHelpAndSupport}    Container=${mnuScrollList}    Direction=left    duration=100
