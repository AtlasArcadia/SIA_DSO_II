*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/QuickMenu_Search.txt

*** Test Cases ***
[F3_QuickMenu_IOS_1_1_Y_1_2] Search Character บ and show result that contain บ
    [Documentation]    *Owner : Oum*
    ...    6. ค้นหาด้วยตัวอักษร "บ"
    ...    7. ตรวจสอบข้อความที่ทำการค้นหา [1]
    ...    8. Capture screen
    ...
    ...    *Expected result*on]    *Owner : Oum*
    ...    กรณีค้นหาด้วยตัวอักษร "บ"
    ...
    ...    *Pre-requisite*
    ...    - N-Type Number : 3PE
    ...    - Status : Active
    ...    - Login เข้าระบบ
    ...
    ...    *Test Step*
    ...
    ...    TH Version
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน"ค้นหา"แ
    ...    6. ค้นหาด้วยตัวอักษร "บ"
    ...    7. ตรวจสอบข้อความที่ทำการค้นหา [1]
    ...    8. Capture screen
    ...
    ...    *Expected result*
    ...    [1] verify
    ...    - All Menu
    ...    - Internet / บริการเสริม
    ...    - ขอรับ/เปลี่ยนรหัส WiFi
    ...    - ข้อมูลบัตรเครดิต/เดบิต
    ...    - ชำระค่าบริการ
    ...    - เติมเงิน/จ่ายบิล
    ...    - บริการ
    ...    - แพ็กเกจปัจจุบัน/ยอดคงเหลือ
    ...    - แพ็กเกจปัจจุบันของคุณ
    ...    - สมัคร AIS Fibre/เช็กพื้นที่ให้บริการ
    ...    - ออกจากระบบ
    ...    - อัตราค่าบรืการโรมมิง
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    บ
    Verify Result Contain บ
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_2_2] Search Character จ่าย and show result that contain จ่าย
    [Documentation]    *Owner : Oum*
    ...
    ...    กรณีค้นหาด้วยตัวคำว่า "จ่าย"
    ...    ผลลัพธ์การค้นหาจะต้องเจอทุกเมนูที่มีคำว่า "จ่าย"
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...
    ...    Status : Active
    ...
    ...    Login เข้าระบบ
    ...
    ...
    ...    *Test Step*
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน"ค้นหา"
    ...    6. ค้นหาด้วยคำว่า "จ่าย"
    ...    7. ตรวจสอบข้อความที่ทำการค้นหา [1]
    ...    8. Capture screen
    ...
    ...    *Expected result*
    ...    [1] verify
    ...    - All Menu
    ...    - เติมเงิน/จ่ายบิล
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    จ่าย
    Verify Result Contain จ่าย
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_3_2] Search QuickMenu and show result that contain QuickMenu
    [Documentation]    *Owner : Oum*
    ...    กรณีค้นหาด้วยคำว่า "QuickMenu"
    ...    ต้องไม่เจอผลลัพธ์การค้นหา
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...    Status : Active
    ...
    ...    *Test Step*
    ...
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน"ค้นหา"
    ...    6. ค้นหาด้วยคำว่า "help"
    ...    7. ตรวจสอบหน้าผลการค้นหา [1]
    ...    8. Capture screen
    ...
    ...    *Expected result*
    ...    [1] verify
    ...    - All Menu
    ...    - หน้าว่าง ไม่มีข้อความขึ้น
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    help
    Verify QuickMenu Not Show Menu When Search Help Keyword
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_4_2] Select Character A and show result that contain A
    [Documentation]    *Owner : Oum*
    ...    กดปุ่มเมนูลัด
    ...    เลือก "ค้นหา"
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...    Status : Active
    ...
    ...
    ...    *Test Step*
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "A"
    ...    7.ตรวจสอบเมนูตัวอักษร "A" [1]
    ...    8. Capture screen
    ...
    ...
    ...    *Expected result*
    ...    [1]
    ...    - AIS Facebook
    ...    - AIS Line
    ...    - AIS Online Store
    ...    - AIS Twitter
    ...    - AIS Website
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Verify QuickMenu Search A Keyword
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_5_2] Select Character A and Verify AIS Facebook Page
    [Documentation]    *Owner : Oum*
    ...    ตรวจสอบ
    ...    - สามารถคลิ๊กเมนู "AIS Facebook" และ redirect ได้
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...    Status : Active
    ...
    ...
    ...    *Test Step*
    ...
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา" \ 6. เลื่อนมาที่ตัวอักษร "A"
    ...    7. คลิ๊กเมนู AIS Faceboตกลง
    ...    8. ตรวจสอบหน้า AIS Faceboตกลง [1]
    ...    9. Capture screen
    ...
    ...
    ...    *Expected result*
    ...
    ...    [1] verify
    ...    - Facebook
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    AISFacebook
    Verify AIS Facebook Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_6_2] Select Character A and Verify AIS Line Page
    [Documentation]    *Owner : Oum*
    ...    ตรวจสอบ
    ...    - สามารถคลิ๊กเมนู "AIS Line" และ redirect ได้
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...    Status : Active
    ...
    ...
    ...    *Test Step*
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา" \ 6. เลื่อนมาที่ตัวอักษร "A"
    ...    7. คลิ๊กเมนู AIS Line
    ...    8. ตรวจสอบหน้า AIS Line [1]
    ...    9. Capture screen
    ...
    ...    *Expected result*
    ...    [1] verify
    ...    - Line
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    AISLine
    Verify AIS Line Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_7_2] Select Character A and Verify AIS Online Page
    [Documentation]    *Owner : Oum*
    ...    ตรวจสอบ
    ...    - สามารถคลิ๊กเมนู "AIS Online Store" และ redirect ได้
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...    Status : Active
    ...    Login เข้าระบบ
    ...
    ...    *Test Step*
    ...
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา" \ 6. เลื่อนมาที่ตัวอักษร "A"
    ...    7. คลิ๊กเมนู AIS Online Store
    ...    8. ตรวจสอบหน้า AIS Online Store [1]
    ...    9. Capture screen
    ...
    ...    *Expected result*
    ...    [1] verify
    ...    - AIS Online Store
    ...    x- Best Seller (ไม่เอาแล้ว)
    ...    x- New Items (ไม่เอาแล้ว)
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    AISOnlineStore
    Verify AIS Online Store Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_8_2] Select Character A and Verify AIS Twitter Page
    [Documentation]    *Owner : Oum*
    ...    ตรวจสอบ
    ...    - สามารถคลิ๊กเมนู "AIS Twitter" และ redirect ได้
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...    Status : Active
    ...    Login เข้าระบบ
    ...
    ...    *Test Step*
    ...
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "A"
    ...    7. คลิ๊กเมนู AIS Twitter
    ...    8. ตรวจสอบหน้า AIS Twitter [1]
    ...    9. Capture screen
    ...
    ...    *Expected result*
    ...    [1] verify
    ...    - Twitter
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    AISTwitter
    Verify AIS Twitter Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_9_2] Select Character A and Verify AIS Website
    [Documentation]    *Owner : Oum*
    ...    ตรวจสอบ
    ...    - สามารถคลิ๊กเมนู "AIS Website" และ redirect ได้
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...    Status : Active
    ...    Login เข้าระบบ
    ...
    ...    *Test Step*
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "A"
    ...    7. คลิ๊กเมนู AIS Website
    ...    8. ตรวจสอบหน้า AIS Website [1]
    ...    9. Capture screen
    ...
    ...    *Expected result*
    ...    [1] verify
    ...    - AIS Website
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISWebsite
    Verify AIS Website
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_10_2] Select Character I and Verify Result
    [Documentation]    *Owner : Oum*
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...    Status : Active
    ...    Login เข้าระบบ
    ...
    ...    *Test Step*
    ...
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "I"
    ...    7.ตรวจสอบเมนูตัวอักษร "I" [1]
    ...    8. Capture screen
    ...
    ...    *Expected result*
    ...    [1]
    ...    - Internet/บริการเสริม
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    I
    Verify Internet ValueAddedService in QuickMenu Search
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_11_2] Select Character I and Verify Internet and Value Added Service
    [Documentation]    *Owner : Oum*
    ...    ตรวจสอบ
    ...    - สามารถคลิ๊กเมนู "Internet/บริการเสริม" และ redirect ได้
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...    Status : Active
    ...    Login เข้าระบบ
    ...
    ...    *Test Step*
    ...
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "I"
    ...    7. คลิ๊กเมนู nternet/บริการเสริม
    ...    8. ตรวจสอบหน้า รายละเอียดการใช้งาน [1]
    ...    9. Capture screen
    ...
    ...    *Expected result*
    ...    [1] verify
    ...    - รายละเอียดการใช้งาน
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    I
    Select Internet Or ValueAddedService
    Verify Internet And Value Added Service Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_12_2] Select Character ก and show result that contain ก
    [Documentation]    *Owner : Oum*
    ...    กดปุ่มเมนูลัด
    ...    เลือก "ค้นหา"
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...    Status : Active
    ...    Login เข้าระบบ
    ...
    ...    *Test Step*
    ...
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ก"
    ...    7.ตรวจสอบเมนูตัวอักษร "ก" [1]
    ...    8. Capture screen
    ...
    ...    *Expected result*
    ...    [1]
    ...    - การโทร
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    ก
    Verify QuickMenu Character ก
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_13_2] Select Character ก and Verify Usage Detail Page
    [Documentation]    *Owner : Oum*
    ...    ตรวจสอบ
    ...    - สามารถคลิ๊กเมนู "การโทร" และ redirect ได้
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...    Status : Active
    ...    Login เข้าระบบ
    ...
    ...    *Test Step*
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ก"
    ...    7. คลิ๊กเมนู การโทร
    ...    8. ตรวจสอบหน้า รายละเอียดการใช้งาน [1]
    ...    9. Capture screen
    ...
    ...    *Expected result*
    ...    [1] verify
    ...    - รายละเอียดการใช้งาน
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    ก
    Select Voice Call
    Verify Usage Detail Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_14_2] Select Character ข and show result that contain ข
    [Documentation]    *Owner : Oum*
    ...    กดปุ่มเมนูลัด
    ...    เลือก "ค้นหา"
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...    Status : Active
    ...    Login เข้าระบบ
    ...
    ...    *Test Step*
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ข"
    ...    7.ตรวจสอบเมนูตัวอักษร "ข" [1]
    ...    8. Capture screen
    ...
    ...    *Expected result*
    ...    [1]
    ...    - ขอรับ/เปลี่ยนรหัส WiFi
    ...    - ข้อมูลการเติมเงิน
    ...    - ข้อมูลการโอนวัน
    ...    - ข้อมูลการโอนเงิน
    ...    - ข้อมูลการใช้งาน
    ...    - ข้อมูลของคุณ
    ...    - ข้อมูลบัตรเครดิต/เดบิต
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    ข
    Verify Result That Contain ข
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_15_2] Select Character ข and Verify Request And Change Wifi Page
    [Documentation]    *Owner : Oum*
    ...    ตรวจสอบ
    ...    - สามารถคลิ๊กเมนู "ขอรับ/เปลี่ยนรหัส WiFi" และ redirect ได้
    ...
    ...    *Pre-requisite*
    ...    N-Type Number : 3PE
    ...    Status : Active
    ...
    ...    *Test Step*
    ...
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ข"
    ...    7. คลิ๊กเมนู ขอรับ/เปลี่ยนรหัส WiFi
    ...    8. ตรวจสอบหน้า ขอรับ/เปลี่ยนรหัส WiFi [1]
    ...    9. Capture screen
    ...
    ...    *Expected result*
    ...    [1] verify
    ...    - ขอรับ/เปลี่ยนรหัส WiFi
    ...    - ขอรับรหัสผ่าน
    ...    - เปลี่ยนรหัสผ่าน WiFi
    ...    - ล็อคอิน WiFi อัตโนมัติ
    ...    - ล็อคอิน WiFi อัตโนมัติผ่าน SIM
    [Tags]    TH    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    ข
    Select Quick Menu    RequestAndChangeWiFiPassword
    Verify Request And Change Wifi
    Comment    *messages[Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_16_2] Verify Top Up Usage Detail and redirect
    [Documentation]    Owner : Chompoo
    ...
    ...    Source Number : 3PE,3BE
    ...    --------------------------------
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ข"
    ...    7. คลิ๊กเมนู ข้อมูลการเติมเงิน
    ...    8. ตรวจสอบหน้า รายละเอียดการใช้งาน [1]
    ...    9. Capture screen
    ...    ------------------------
    ...
    ...    [1] verify
    ...    - รายละเอียดการใช้งาน
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    ข
    Select Quick Menu    TopUpUsageDetails
    Verify Topup Usage Details    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_17_2] Verify BannerUsageDetail and redirect
    [Documentation]    Owner : Chompoo
    ...
    ...    Source Number : 3PE,3BE
    ...    -----------------------
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ข"
    ...    7. คลิ๊กเมนู ข้อมูลการโอนวัน
    ...    8. ตรวจสอบหน้า รายละเอียดการใช้งาน [1]
    ...    9. Capture screen
    ...    ------------------------
    ...
    ...    [1] verify
    ...    - รายละเอียดการใช้งาน
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    ข
    Select Quick Menu    ValidityTransferUsageDetails
    Verify Validity Transfer Usage Details    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_18_2] Verify Banner Usage Detail and redirect
    [Documentation]    Owner : Chompoo
    ...
    ...    Source Number : 3PE,3BE
    ...    -----------------------
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ข"
    ...    7. คลิ๊กเมนู ข้อมูลการโอนเงิน
    ...    8. ตรวจสอบหน้า รายละเอียดการใช้งาน [1]
    ...    9. Capture screen
    ...    ------------------------
    ...
    ...    [1] verify
    ...    - รายละเอียดการใช้งาน
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    [Tags]    TH    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    ข
    Select Quick Menu    BalanceTransferUsageDetails
    Comment    *messagesVerify Balance Transfer Usage Details    ${Number}
    Comment    *messagesMobile element name should be    ${bannerUsageDetail}    ${txtUsageDetail}
    Comment    *messagesMobile element name should be    ${lblMobileNumber}    ${Number}
    Comment    *messagesMobile Capture Screen At Verify Point    TopUpUsageDetail
    Comment    *messages[Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_19_2] Verify Usage Detail History and redirect
    [Documentation]    Owner : Chompoo
    ...
    ...    Source Number : 3PE,3BE
    ...    -----------------------
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ข"
    ...    7. คลิ๊กเมนู ข้อมูลการใช้งาน
    ...    8. ตรวจสอบหน้า ข้อมูลการใช้งาน [1]
    ...    9. Capture screen
    ...    ------------------------
    ...
    ...    [1] verify
    ...    - ข้อมูลการใช้งาน
    ...    - การโทร
    ...    - Internet/บริการเสริม
    ...    - ข้อมูลการเติมเงิน
    ...    - ข้อมูลการโอนวัน
    ...    - ข้อมูลการโอนเงิน
    ...    - ค่าธรรมเนียม
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    ข
    Select Quick Menu    UsageDetailHistory
    Verify ข้อมูลการใช้งาน
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_20_2] Verify My Profile and redirect
    [Documentation]    Owner : Chompoo
    ...
    ...    Source Number : 3PE,3BE
    ...    -----------------------
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ข"
    ...    7. คลิ๊กเมนู ข้อมูลของคุณ
    ...    8. ตรวจสอบหน้า ข้อมูลของคุณ [1]
    ...    9. Capture screen
    ...    ------------------------
    ...
    ...    [1] verify
    ...    - ข้อมูลของคุณ
    ...    - ชื่อ
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)lblPayment
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    ข
    Select Quick Menu    MyProfile
    Verify ข้อมูลของคุณ    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_21_2] Verify Your Cradit and Debit Card and redirect
    [Documentation]    Owner : Chompoo
    ...
    ...    Source Number : 3PE,3BE
    ...    -----------------------
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ข"
    ...    7. คลิ๊กเมนู ข้อมูลบัตรเครดิต/เดบิต
    ...    8. ตรวจสอบหน้า ข้อมูลบัตรเครดิต/เดบิต [1]
    ...    9. Capture screen
    ...    ------------------------
    ...
    ...    [1] verify
    ...    - ข้อมูลบัตรเครดิต/เดบิต
    ...    - บัตรเครดิต/เดบิตของคุณ
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    ข
    Select Quick Menu    YourCreditAndDebitCard
    Verify ข้อมูลบัตรเครดิต/เดบิต
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_22_2] Search and show result that contain Fee
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ค"
    ...    7.ตรวจสอบเมนูตัวอักษร "ค" [1]
    ...    8. Capture screen[1]
    ...    ------------------------
    ...    Expected Result
    ...    - ค่าธรรมเนียม
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ค}
    Swipe to element    ${lblFeeTH}
    Mobile element text should be    ${lblFeeTH}    ${txtFee}
    Mobile Capture Screen At Verify Point    ค
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_23_2] Verify Fee and redirect
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ค"
    ...    7. คลิ๊กเมนู ค่าธรรมเนียม
    ...    8. ตรวจสอบหน้า รายละเอียดการใช้งาน[1]
    ...    9. Capture screen[1] verify
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - รายละเอียดการใช้งาน
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ค}
    Swipe to element    ${lblFeeTH}
    Click Mobile Element    ${lblFeeTH}
    Verify Usage Detail Fee Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_24_2] Search and show result that contain Payment and Help
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ช"
    ...    7.ตรวจสอบเมนูตัวอักษร "ช" [1]
    ...    8. Capture screen[1]
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - ชำระค่าบริการ
    ...    - ช่วยเหลือ -> (change: ไม่มีเมนู ช่วยเหลือ, ไม่ต้อง verify)
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ช}
    Swipe to element    ${lblPayment}
    Verify ช
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_25_2] Verify Payment and redirect
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ช"
    ...    7. คลิ๊กเมนู ชำระค่าบริการ
    ...    8. ตรวจสอบหน้า ชำระค่าบริการ [1]
    ...    9. Capture screen[1]
    ...    ------------------------
    ...    Expected Result
    ...    verify
    ...    - ชำระค่าบริการ
    ...    - รายละเอียดค่าใช้บริการ
    ...    - ช่องทางการชำระ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ช}
    Swipe to element    ${lblPayment}
    Click Mobile Element    ${lblPayment}
    Verify Payment Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_26_2] Verify Help and redirect
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ช"
    ...    7. คลิ๊กเมนู ช่วยเหลือ
    ...    8. ตรวจสอบหน้า ช่วยเหลือ [1]
    ...    9. Capture screen[1]
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - ผู้ช่วย
    ...    - วิธีใช้งาน Application
    [Tags]    success    regression    active    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ช}
    Swipe to element    ${lblAssistant}
    Click Mobile Element    ${lblHelpAndSupport}
    verify ผู้ช่วย
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_27_2] Search and show result that contain Setting,TopUp
    [Documentation]    Owner : Chompoo
    ...
    ...    Source Number : 3PE,3BE
    ...    -----------------------
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ต"
    ...    7.ตรวจสอบเมนูตัวอักษร "ต" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...
    ...    [1] verify
    ...    - ตั้งค่า
    ...    - เติมเงิน/จ่ายบิล
    [Tags]    TH    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Verify ต
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_28_2] Verify Setting and redirect
    [Documentation]    Owner : Chompoo
    ...
    ...    Source Number : 3PE,3BE
    ...    -----------------------
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ต"
    ...    7. คลิ๊กเมนู ตั้งค่า
    ...    8. ตรวจสอบหน้า ตั้งค่า [1]
    ...    9. Capture screen
    ...    ------------------------
    ...
    ...    [1] verify
    ...    - ตั้งค่า
    ...    - ภาษา
    ...    - แจ้งเตือน
    ...    - การล็อกรหัส
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    Setting
    Verify ตั้งค่า
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_29_2] Verify Top-Up and redirect
    [Documentation]    Owner : Chompoo
    ...
    ...    Source Number : 3PE,3BE
    ...    -----------------------
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ต"
    ...    7. คลิ๊กเมนู เติมเงิน
    ...    8. ตรวจสอบหน้า เติมเงิน/จ่ายบิล[1]
    ...    9. Capture screen
    ...    ------------------------
    ...
    ...    [1] verify
    ...    - เติมเงิน
    ...    - ระบุหมายเลขโทรศัพท์ที่ต้องการเติมเงิน
    ...    - เลือกช่องทางการเติมเงิน
    ...    - เลือกจำนวนที่ต้องการเติมเงิน
    [Tags]    TH    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    TopUpAndPayment
    Select TopUp
    Verify เติมเงิน
    Comment    *messages[Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_30_2] Verify TopUp and Payment and redirect
    [Documentation]    Owner : Chompoo
    ...
    ...    Source Number : 3PE,3BE
    ...    -----------------------
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ต"
    ...    7. คลิ๊กเมนู เติมเงิน
    ...    8. ตรวจสอบหน้า เติมเงิน [1]
    ...    9. Capture screen
    ...    ------------------------
    ...
    ...    [1] verify
    ...    - เติมเงิน/จ่ายบิล
    ...    - เติมเงิน
    ...    - ชำระค่าบริการ
    [Tags]    TH    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    TopUpAndPayment
    Select Payment
    Comment    *messagesSwipe to element    ${Char_ต}
    Comment    *messagesClick Mobile Element    ${lblTopUpAndPayment}
    Comment    *messagesVerify Topup and Payment
    Comment    *messages[Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_31_2] Click Quick Menu Select Search ถ
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ถ"
    ...    7.ตรวจสอบเมนูตัวอักษร "ถ" [1]
    ...    8. Capture screen[1]
    ...    ------------------------
    ...    Expected Result
    ...    - ถามอุ่นใจ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ถ}
    Swipe to element    ${lblAskAunjai}
    Verify ถ
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_32_2] Verify You can click menu Ask Aunjai and Redirect
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ถ"
    ...    7. คลิ๊กเมนู ถามอุ่นใจ
    ...    8. ตรวจสอบหน้า ถามอุ่นใจ [1]
    ...    9. Capture screen[1] verify
    ...    ------------------------
    ...    Excepted Result
    ...    - ถามอุ่นใจ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    Swipe to element    ${lblAskAunjai}
    Click Mobile Element    ${lblAskAunjai}
    Verify Ask AunJai Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_33_2] Click Quick Menu Select Search บ
    [Documentation]    Owner : Tong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "บ"
    ...    7.ตรวจสอบเมนูตัวอักษร "บ" [1]
    ...    8. Capture screen[1]
    ...    ------------------------
    ...    Excepted Result
    ...    - บริการ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_บ}
    Swipe to element    ${lblService}
    Verify บ
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_34_2] Verify you can click menu Servics and redirect
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "บ"
    ...    7. คลิ๊กเมนู บริการ
    ...    8. ตรวจสอบหน้า บริการ [1]
    ...    9. Capture screen[1] verify
    ...    ------------------------
    ...    Excepted Result
    ...    - บริการ
    ...    - AIS eStatement
    ...    - iSWOP
    ...    - สมัคร AIS Fibre / เช็กพื้นที่ให้บริการ
    ...    - ขอรับ/เปลี่ยนรหัส WiFi
    ...    - เพลงรอสาย
    ...    (change except)
    ...    - โอนเงิน
    ...    - โอนวัน
    ...    - สมัคร AIS Fibre / เช็กพื้นที่บริการ
    ...    - ขอรับ / เปลี่ยนรหัส WiFi
    ...    - เพลงรอสาย
    ...    - เปลี่ยนภาษา IVR & SMS
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    Swipe to element    ${lblService}
    Click Mobile Element    ${lblService}
    Verify Service Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_35_2] Click Quick Menu Select Search ป
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ป"
    ...    7.ตรวจสอบเมนูตัวอักษร "ป" [1]
    ...    8. Capture screen[1]
    ...    ------------------------
    ...    Excepted Result
    ...    - เปลี่ยนภาษา IVR & SMS
    ...    - เปลี่ยนแพ็กเกจหลัก
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ป}
    Swipe to element    ${lblChangingIVRandSMSLanguage}
    Verify ป
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_36_2] Verify you can click menu Change language IVR And SMS and redirect
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ป"
    ...    7. คลิ๊กเมนู เปลี่ยนภาษา IVR & SMS
    ...    8. ตรวจสอบหน้า เปลี่ยนภาษา IVR & SMS [1]
    ...    9. Capture screen[1] verify
    ...    ------------------------
    ...    Excepted Result
    ...    - เปลี่ยนภาษา IVR & SMS
    ...    - ภาษาในการรับฟังข้อความจากระบบตอบรับอัตโนมัติ
    ...    - ภาษาของข้อความ SMS ที่จะได้รับ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    Swipe to element    ${lblChangingIVRandSMSLanguage}
    Click Mobile Element    ${lblChangingIVRandSMSLanguage}
    Verify Changeing IVR And SMS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_37_2] Verify you can click menu Change Current Package and redirect
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ป"
    ...    7. คลิ๊กเมนู เปลี่ยนแพ็กเกจหลัก
    ...    8. ตรวจสอบหน้า เปลี่ยนแพ็กเกจหลัก [1]
    ...    9. Capture screen[1] verify
    ...    ------------------------
    ...    Excepted Result
    ...    - เปลี่ยนแพ็กเกจหลัก
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    Swipe to element    ${lblChangePricePlan}
    Click Mobile Element    ${lblChangePricePlan}
    Close dialog not found package
    Verify Change Price Plan Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_38_2] Click Quick Menu Select Search พ
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. \ เลื่อนมาที่ตัวอักษร "พ"
    ...    7.ตรวจสอบเมนูตัวอักษร "พ" [1]
    ...    8. Capture screen
    ...
    ...    Verify Point
    ...    [1]
    ...    - พอยท์ & สิทธิพิเศษ
    ...    - เพลงรอสาย
    ...    - แพ็กเกจ
    ...    - แพ็กเกจปัจจุบัน/ยอดคงเหลือ
    ...    - แพ็กเกจปัจจุบันของคุณ
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Verify พ
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_39_2] Verify You can click menu Points&Privileges and Redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "พ"
    ...    7. คลิ๊กเมนู พอยท์ & สิทธิพิเศษ
    ...    8. ตรวจสอบหน้า พอยท์ & สิทธิพิเศษ \ [1]
    ...    9. Capture screen
    ...
    ...    Verify Point
    ...    [1] verify
    ...    - \ พอยท์&สิทธิพิเศษ
    ...    - \ พอยท์
    ...    - \ สิทธิพิเศษ
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    PointsAndPrivileges
    Cancel Register AIS Point
    Verify PointsAndPrivileges Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_40_2] Verify You can click menu Calling Melody and Redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "พ"
    ...    7. คลิ๊กเมนู เพลงรอสาย
    ...    8. ตรวจสอบหน้า เพลงรอสาย \ [1]
    ...    9. Capture screen
    ...
    ...    Verify Point
    ...    [1] verify
    ...    - เพลงรอสาย
    [Tags]    TH    success    active    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    CallingMelody
    Verify Calling Melody Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_41_2] Verify You can click menu Package and Redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "พ"
    ...    7. คลิ๊กเมนู แพ็กเกจ
    ...    8. ตรวจสอบหน้า แพ็กเกจ \ [1]
    ...    9. Capture screen
    ...
    ...    Verify Point
    ...    [1] verify
    ...    - แพ็กเกจ
    ...    - แพ็กเกจในประเทศ
    ...    - แพ็กเกจโรมมิ่ง
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    Package
    Verify Package Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_42_2] Verify You can click menu Current Package And Remaining and Redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "พ"
    ...    7. คลิ๊กเมนู แพ็กเกจปัจจุบัน/ยอดคงเหลือ
    ...    8. ตรวจสอบหน้า แพ็กเกจปัจจุบัน/ยอดคงเหลือ \ [1]
    ...    9. Capture screen
    ...
    ...    Verify Point
    ...    [1] verify
    ...    - แพ็กเกจปัจจุบัน/ยอดคงเหลือ
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    CurrentPackageAndRemaining
    Verify Current Package And Remaing Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_43_2] Verify You can click menu Your Current Package and Redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "พ"
    ...    7. คลิ๊กเมนู แพ็กเกจปัจจุบันของคุณ
    ...    8. ตรวจสอบหน้า แพ็กเกจปัจจุบันของคุณ [1]
    ...    9. Capture screen
    ...
    ...    Verify Point
    ...    [1] verify
    ...    - แพ็กเกจปัจจุบันของคุณ
    ...    - บริการเสริม
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    YourCurrentPackage
    Verify Your Current Package Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_44_2] Click Quick Menu Select Search ว
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ว"
    ...    7.ตรวจสอบเมนูตัวอักษร "ว" [1]
    ...    8. Capture screen
    ...
    ...    Verify Point
    ...    [1]
    ...    - วิธีใช้งาน
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Verify ว
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_45_2] Verify You can click menu How to Use and Redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ว"
    ...    7. คลิ๊กเมนู วิธีใช้งาน
    ...    8. ตรวจสอบหน้า วิธีใช้งาน \ [1]
    ...    9. Capture screen
    ...
    ...    Verify Point
    ...    [1] verify
    ...    - วิธีใช้งาน
    ...    - วิธีใช้งาน APPLICATION
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    HowtoUse
    Cancel Register AIS Point
    Verify HowToUse To Use Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_46_2] Verify Search Menu ส
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7.ตรวจสอบเมนูตัวอักษร "ส" [1]
    ...    8. Capture screen[1]
    ...    ------------------------
    ...    Excepted Result
    ...    - สมัคร AIS Fibre / เช็กพื้นที่ให้บริการ
    ...    - สมัคร my AIS
    ...    - สมัครแพ็กเกจเสริม Entertainment
    ...    - สมัครแพ็กเกจเสริมอินเทอร์เน็ต
    ...    - สมัครแพ็กเกจเสริมอื่นๆ
    ...    - สมัครแพ็กเกจโรมมิ่ง
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    Input Search Keyword    ส
    Verify Result Contain ส
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_47_2] Verify Page สมัคร AIS Fibre / เช็กพื้นที่
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7. คลิ๊กเมนู สมัคร AIS Fibre / เช็กพื้นที่ให้บริการ
    ...    8. ตรวจสอบหน้า สมัคร AIS Fibre / เช็กพื้นที่ให้บริการ [1]
    ...    9. Capture screen[1] verify
    ...    ------------------------
    ...    Excepted Result
    ...    - สมัคร AIS Fibre / เช็กพื้นที่ให้บริการ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    Input Search Keyword    ส
    Select Quick Menu    RegisterAisFibreAndCoverageChecking
    Verify Register AIS Fibre And Coverage Checking page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_48_2] Verify Page สมัคร my AIS
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7. คลิ๊กเมนู สมัคร my AIS
    ...    8. ตรวจสอบหน้า สมัคร my AIS [1]
    ...    9. Capture screen[1] verify
    ...    ------------------------
    ...    Excepted Result
    ...    - สมัคร my AIS
    ...    - สมัคร my AIS ได้ง่ายๆ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    Input Search Keyword    ส
    Select Quick Menu    RegisterMyAIS
    Verify Register myAIS Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_49_2] Verify Page สมัครแพ็กเกจเสริม Entertainment
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7. คลิ๊กเมนู สมัครแพ็กเกจเสริม Entertainment
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจเสริม Entertainment [1]
    ...    9. Capture screen[1] verify
    ...    ------------------------
    ...    Excepted Result
    ...    - สมัครแพ็กเกจเสริม Entertainment
    ...    - เต็มอารมณ์ความบันเทิงระดับโลก ผ่าน AIS PLAY
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    Input Search Keyword    ส
    Select Quick Menu    RegisterOntopEntertainment
    Verify Ontop Entertainmant Package Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_50_2] Verify Page สมัครแพ็กเกจเสริมอินเทอร์เน็ต
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7. คลิ๊กเมนู สมัครแพ็กเกจเสริมอินเทอร์เน็ต
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอินเทอร์เน็ต [1]
    ...    9. Capture screen[1] verify
    ...    ------------------------
    ...    Excepted Result
    ...    - สมัครแพ็กเกจเสริมอินเทอร์เน็ต
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    Input Search Keyword    ส
    Select Quick Menu    InternetOntopPackage
    Verify Register Internet Ontop Package Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_51_2] Verify Page สมัครแพ็กเกจเสริมอื่นๆ
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7. คลิ๊กเมนู สมัครแพ็กเกจเสริมอื่นๆ
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ [1]
    ...    9. Capture screen[1] verify
    ...    ------------------------
    ...    Excepted Result
    ...    - สมัครแพ็กเกจเสริมอื่นๆ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    Input Search Keyword    ส
    Select Quick Menu    OtherOntopPackage
    Verify Other Ontop Package Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_52_2] Verify Page สมัครแพ็กเกจโรมมิ่ง
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7. คลิ๊กเมนู สมัครแพ็กเกจโรมมิ่ง
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจโรมมิ่ง [1]
    ...    9. Capture screen[1] verify
    ...    ------------------------
    ...    Excepted Result
    ...    - สมัครแพ็กเกจโรมมิ่ง
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    Input Search Keyword    ส
    Select Quick Menu    RegisterRoamingPackage
    Verify Roaming Package Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_53_2] Verify Search Menu อ
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE,3BE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "อ"
    ...    7.ตรวจสอบเมนูตัวอักษร "อ" [1]
    ...    8. Capture screen
    ...    [1]
    ...    - ออกจากระบบ
    ...    - อัตราค่าบริการโรมมิ่ง
    ...    - โอนวัน
    ...    - โอนเงิน
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Comment    *messagesSelect Quick Menu    CurrentPackageAndRemaining
    Input Search Keyword    อ
    Verify Result Contain อ
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_54_2] Verify Page ออกจากระบบ
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE,3BE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "อ"
    ...    7. คลิ๊กเมนู ออกจากระบบ
    ...    8. ตรวจสอบหน้า ออกจากระบบ \ [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - แบบสอบถาม
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    อ
    Select Quick Menu    LogOut
    Verify Logout Page
    [Teardown]    Keywords For TearDown Survey    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_55_2] Verify Page อัตราค่าบริการโรมมิ่ง
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE,3BE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "อ"
    ...    7. คลิ๊กเมนู อัตราค่าบริการโรมมิ่ง
    ...    8. ตรวจสอบหน้า อัตราค่าบริการโรมมิ่ง \ [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - อัตราค่าบริการโรมมิ่ง
    ...    - เลือกประเทศ
    ...    - เลือกระบบ
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    อ
    Select Quick Menu    RoamingServiceRates
    Verify Roaming Service Rate Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_56_2] Verify Page โอนวัน
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE,3BE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "อ"
    ...    7. คลิ๊กเมนู โอนวัน
    ...    8. ตรวจสอบหน้า โอนวัน \ [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    '- โอนวัน
    ...    - \ หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - กรอกหมายเลขโทรศัพท์ปลายทางที่ต้องการโอนวันให้
    ...    - จำนวนวันที่ต้องการโอน/วัน
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    อ
    Select Quick Menu    ValidityTransfer
    Verify Validity Transfer Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_57_2] Verify Page โอนเงิน
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE,3BE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "อ"
    ...    7. คลิ๊กเมนู โอนเงิน
    ...    8. ตรวจสอบหน้า โอนเงิน \ [1]
    ...    [1] verify
    ...    '- โอนวัน
    ...    - \ หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - กรอกหมายเลขโทรศัพท์ปลายทางที่ต้องการโอนเงินให้
    ...    - จำนวนเงินที่ต้องการโอน/บาท
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    อ
    Select Quick Menu    BalanceTransfer
    Verify Balance Transfer Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_58_2] Verify Search Menu การใช้งานต่างประเทศ
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE,3BE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. ค้นหาด้วยตัวคำว่า "การใช้งานต่างประเทศ"
    ...    7. ตรวจสอบเมนู "การใช้งานต่างประเทศ" [1]
    ...    8. Capture screen
    ...    [1]
    ...    - All Menu
    ...    - หน้าว่าง ไม่มีข้อความขึ้น
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    การใช้งานต่างประเทศ
    Verify QuickMenu Search Not Found
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_1_Y_59_2] Verify Search Menu การยกเลิก SMS โฆษณา
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE,3BE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. ค้นหาด้วยตัวคำว่า "การยกเลิก SMS โฆษณา"
    ...    7. ตรวจสอบเมนู \ "การยกเลิก SMS โฆษณา" [1]
    ...    8. Capture screen
    ...    [1]
    ...    - All Menu
    ...    - หน้าว่าง ไม่มีข้อความขึ้น
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    การยกเลิก SMS โฆษณา
    Verify QuickMenu Search Not Found
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_1_2] Search Y Show All Result
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2.Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ตกลง
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอนSearch
    ...    6. Searchด้วยตัวอักษร y
    ...    7. ตรวจสอบผลการ Search
    ...    8. Capture screen    \
    ...
    ...    verify
    ...    - All Menu
    ...    - Apply Entertainment On-Top Package
    ...    - Apply Internet On-Top Package
    ...    - Apply Other On-Top Package
    ...    - Apply Roaming Package
    ...    - Calling Melody
    ...    - My Profile
    ...    - Payment
    ...    - Top Up/ Payment
    ...    - Usage Detail History
    ...    - Validity Transfer
    ...    - Validity Transfer Usage Details
    ...    - Your Credit/Debit Card
    ...    - Your Current Package
    [Tags]    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    Y
    Verify Result Contain Y iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_2_2] Search Balance Show All Result
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2.Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ตกลง
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอนSearch
    ...    6. Searchด้วยคำว่า Balance
    ...    7. ตรวจสอบผลการ Search \
    ...    8. Capture screen    \
    ...
    ...    verify
    ...    - All Menu
    ...    - Balance Transfer
    ...    - Balance Transfer Usage Details
    [Tags]    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    Balance
    Verify input Character Balance iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_3_2] Search จ่าย Result Not Found
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2.Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ตกลง
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอนSearch
    ...    6. Searchด้วยคำว่า จ่าย
    ...    7. ตรวจสอบหน้าผลการSearch
    ...    8. Capture screen    \
    ...
    ...    verify
    ...    - All Menu
    ...    - หน้าว่าง ไม่มีข้อความขึ้น
    [Tags]    EN    active    success    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    จ่าย
    Verify จ่าย Result Not Found iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_4_2] Press QuickMenu and Select Search
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2.Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ตกลง
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน Search
    ...    6. เลื่อนมาที่ตัวอักษร A
    ...    7.ตรวจสอบเมนูตัวอักษร A \
    ...    8. Capture screen
    ...
    ...    Verify   \
    ...    - AIS Facebook
    ...    - AIS Line
    ...    - AIS Online Store
    ...    - AIS Twitter
    ...    - AIS Website
    ...    - Apply Entertainment On-Top Package
    ...    - Apply Internet On-Top Package
    ...    - Apply Other On-Top Package
    ...    - Apply Roaming Package
    ...    - Ask Aunjai
    [Tags]    EN    active    success    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Verify Result Contain A iOS EN
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_5_2] Verify Click Menu AIS Facebook And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Facebook
    ...    8. ตรวจสอบหน้า AIS Facebook [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - Facebook
    [Tags]    EN    active    success    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISFacebook
    Verify AIS Facebook Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_6_2] Verify Click Menu AIS Line And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Line
    ...    8. ตรวจสอบหน้า AIS Line [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - Line
    [Tags]    EN    active    success    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISLine
    Verify AIS Line Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_7_2] Verify Click Menu AIS Online Store And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Online Store
    ...    8. ตรวจสอบหน้า AIS Online Store [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - AIS Online Store
    [Tags]    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISOnlineStore
    Verify AIS Online Store Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_8_2] Verify Click Menu AIS Twitter And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Twitter
    ...    8. ตรวจสอบหน้า AIS Twitter [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - Twitter
    [Tags]    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISTwitter
    Verify AIS Twitter Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_9_2] Verify Click Menu AIS Website And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Website
    ...    8. ตรวจสอบหน้า AIS Website [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - AIS Website
    [Tags]    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISWebsite
    Verify AIS Website
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_10_2] Verify Apply Entertainment OnTop Package Page From QuickMenu
    [Documentation]    Owner : Tong
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2.Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด OK
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน Search \
    ...    6. เลื่อนมาที่ตัวอักษร A
    ...    7. คลิ๊กเมนู Apply Entertainment On-Top Package
    ...    8. ตรวจสอบหน้า Apply Entertainment On-Top Package
    ...    9.Capture screen \
    ...
    ...    verify
    ...    - Apply Entertainment On-Top Package
    ...    - Fulfill your lifestyle with The Premier Entertainment! via AIS PLAY
    [Tags]    EN    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    A
    Select Quick Menu    ApplyEntertainmentOnTopPackage
    Verify Apply Entertainment OnTop Package Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_11_2] Verify Apply Internet OnTop Package Page From QuickMenu
    [Documentation]    Owner : Tong
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2.Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด OK
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน Search \
    ...    6. เลื่อนมาที่ตัวอักษร A
    ...    7. คลิ๊กเมนู Apply Internet On-Top Package
    ...    8. ตรวจสอบหน้า Apply Internet On-Top Package
    ...    9.Capture screen \
    ...
    ...    verify
    ...    - Apply Internet On-Top Package
    ...    - On-Top Package
    ...    - Please select the price that you want
    [Tags]    EN    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    A
    Select Quick Menu    ApplyInternetOnTopPackage
    Verify Apply Internet OnTop Package Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_12_2] Verify Apply Other OnTop Package Page From QuickMenu
    [Documentation]    Owner : Tong
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2.Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด OK
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน Search \
    ...    6. เลื่อนมาที่ตัวอักษร A
    ...    7. คลิ๊กเมนู Apply Other On-Top Package
    ...    8. ตรวจสอบหน้า Apply Other On-Top Package
    ...    9.Capture screen \
    ...
    ...    verify
    ...    - Apply Other On-Top Package
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    [Tags]    EN    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    A
    Select Quick Menu    ApplyOtherOnTopPackage
    Verify Apply Other OnTop Package Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_13_2] Verify Apply Roaming Package Page From QuickMenu
    [Documentation]    Owner : Tong
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2.Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด OK
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน Search \
    ...    6. เลื่อนมาที่ตัวอักษร A
    ...    7. คลิ๊กเมนู Apply Roaming Package
    ...    8. ตรวจสอบหน้า Apply Roaming Package
    ...    9.Capture screen \
    ...
    ...    verify
    ...    - Apply Roaming Package
    ...    - Roaming country
    ...    - Customer type
    ...    - Package type
    [Tags]    EN    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    A
    Select Quick Menu    ApplyRoamingPackage
    Verify Apply Roaming Package Page Postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_14_2] Verify Ask Aunjai Page From QuickMenu
    [Documentation]    Owner : Tong
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2.Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด OK
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน Search \
    ...    6. เลื่อนมาที่ตัวอักษร A
    ...    7. คลิ๊กเมนู Ask Aunjai
    ...    8. ตรวจสอบหน้า Ask Aunjai
    ...    9.Capture screen \
    ...
    ...    verify
    ...    - Ask Aunjai
    [Tags]    EN    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    A
    Select Quick Menu    AskAunjai
    Verify Ask Aunjai Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_15_2] Search Character B and show result that contain B
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "B"
    ...    7. ตรวจสอบเมนูตัวอักษร "B" [1]
    ...    8. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1]
    ...    - Balance Transfer
    ...    - Balance Transfer Usage Details
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_B}
    Swipe to element    ${lblBalanceTransferUsageDetails}
    Verify B
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_16_2] Select Balance Transfer at Character B and redirect to Balance Transfer page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "B"
    ...    7. คลิ๊กเมนู Balance Transfer
    ...    8. ตรวจสอบหน้า Balance Transfer [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Balance Transfer
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - Enter destination number
    ...    - Transfer amount / Days
    ...    - ปุ่ม OK
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_B}
    Swipe to element    ${lblBalanceTransfer}
    Click Mobile Element    ${lblBalanceTransfer}
    Verify Balance Transfer Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_17_2] Select Balance Transfer Usage Details at Character B and redirect to Balance Transfer Usage Details page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "B"
    ...    7. คลิ๊กเมนู Balance Transfer Usage Details
    ...    8. ตรวจสอบหน้า Usage Details [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Usage Details History
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - You can check usage history for last 3 days.
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_B}
    Swipe to element    ${lblBalanceTransferUsageDetails}
    Click Mobile Element    ${lblBalanceTransferUsageDetails}
    Verify Balance Transfer Usage Details    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_18_2] Search Character C and show result that contain C
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "C"
    ...    7. ตรวจสอบเมนูตัวอักษร "C" [1]
    ...    8. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1]
    ...    - Calling Melody
    ...    - Change Price Plan
    ...    - Changing IVR & SMS Language
    ...    - Current Package & Remaining
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_C}
    Swipe to element    ${lblCurrentPackageAndRemaining}
    Verify C
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_19_2] Select Calling Melody at Character C and redirect to Calling Melody page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "C"
    ...    7. คลิ๊กเมนู Calling Melody
    ...    8. ตรวจสอบหน้า Calling Melody [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Calling Melody
    ...    - New Release
    ...    - Hot News
    ...    - Top Chart
    ...    - Recommended Song
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_C}
    Swipe to element    ${lblCallingMelody}
    Click Mobile Element    ${lblCallingMelody}
    Verify Calling Melody
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_20_2] Select Change Price Plan at Character C and redirect to Change Price Plan page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "C"
    ...    7. คลิ๊กเมนู Change Price Plan
    ...    8. ตรวจสอบหน้า Change Price Plan [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Change Price Plan
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - Talk Packages
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_C}
    Swipe to element    ${lblChangePricePlan}
    Click Mobile Element    ${lblChangePricePlan}
    Verify Change Price Plan Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_21_2] Select Changing IVR and SMS Language at Character C and redirect to Changing IVR and SMS Language page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "C"
    ...    7. คลิ๊กเมนู Changing IVR & SMS Language
    ...    8. ตรวจสอบหน้า Changing IVR & SMS Language [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Changing IVR & SMS Language
    ...    - IVR Language
    ...    - SMS Language
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_C}
    Swipe to element    ${lblChangingIVRandSMSLanguage}
    Click Mobile Element    ${lblChangingIVRandSMSLanguage}
    Verify Changeing IVR And SMS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_22_2] Select Current Package and Remaining at Character C and redirect to Current Package and Remaining page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "C"
    ...    7. คลิ๊กเมนู Current Package & Remaining
    ...    8. ตรวจสอบหน้าCurrent Package & Remaining [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Current Package & Remaining
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_C}
    Swipe to element    ${lblCurrentPackageAndRemaining}
    Click Mobile Element    ${lblCurrentPackageAndRemaining}
    Verify Current Package And Remaing Page From QuickMenu    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_23_2] Search Character F and show result that contain F
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "F"
    ...    7. ตรวจสอบเมนูตัวอักษร "F" [1]
    ...    8. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1]
    ...    - Fee
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_F}
    Swipe to element    ${lblFee}
    Verify F
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_24_2] Select Fee at Character F and redirect to Fee page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "F"
    ...    7. คลิ๊กเมนู Fee
    ...    8. ตรวจสอบหน้า Usage Details [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Usage Details History
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - You can check usage history for last 3 days.
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_F}
    Swipe to element    ${lblFee}
    Click Mobile Element    ${lblFee}
    Verify Usage Detail Fee Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_25_2] Search Character H and show result that contain H
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "H"
    ...    7. ตรวจสอบเมนูตัวอักษร "H" [1]
    ...    8. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1]
    ...    - Home
    ...    - How to use
    ...    - Help & Support
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_H}
    Swipe to element    ${lblHowtoUse}
    Verify H
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_26_2] Select Home at Character H and redirect to Home page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "H"
    ...    7. คลิ๊กเมนู Home
    ...    8. ตรวจสอบหน้า Home [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Home
    ...    - Remaing Balance
    ...    - Valid Until
    ...    - Current Package
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_H}
    Swipe to element    ${lblHelpAndSupport}
    Click Mobile Element    ${lblHelpAndSupport}
    Verify Help & Support
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_27_2] Select How To Use at Character H and redirect to How To Use page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "H"
    ...    7. คลิ๊กเมนู How to use
    ...    8. ตรวจสอบหน้า How to use [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - How to use
    ...    - How to use application
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_H}
    Swipe to element    ${lblHowtoUse}
    Click Mobile Element    ${lblHowtoUse}
    Verify How to Use
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_28_2] Search Character I and show result that contain I
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "I"
    ...    7.ตรวจสอบเมนูตัวอักษร "I" [1]
    ...    8. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1]
    ...    - Internet/Value Added Service
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_I}
    Swipe to element    ${lblInternetAndValueAddedService}
    Verify I
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_29_2] Select Internet Value Added Service at Character H and redirect to Internet Value Added Service page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "I"
    ...    7. คลิ๊กเมนู  Internet/Value Added Service
    ...    8. ตรวจสอบหน้า Usage Details [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Usage Details
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - You can check usage history for last 3 days.
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_I}
    Swipe to element    ${lblInternetAndValueAddedService}
    Click Mobile Element    ${lblInternetAndValueAddedService}
    Verify Internet And Value Added Service Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_30_2] Search Character L and show result that contain L
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "L"
    ...    7. ตรวจสอบเมนูตัวอักษร "L" [1]
    ...    8. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1]
    ...    - Log Out
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_L}
    Swipe to element    ${lblLogOut}
    Verify L
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_31_2] Select Log Out at Character H and redirect to Log Out page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "L"
    ...    7. คลิ๊กเมนู  Log Out
    ...    8. ตรวจสอบหน้า Login [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    -  Login
    ...    - Mobile Number / Internet Number
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_L}
    Swipe to element    ${lblLogOut}
    Click Mobile Element    ${lblLogOut}
    Verify Logout Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_32_2] Search Character M and show result that contain M
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "M"
    ...    7. ตรวจสอบเมนูตัวอักษร "M" [1]
    ...    8. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1]
    ...    - My Profile
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_M}
    Swipe to element    ${lblMyProfile}
    Verify M
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_33_2] Select My Profile at Character M and redirect to My Profile page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "M"
    ...    7. คลิ๊กเมนู  My Profile
    ...    8. ตรวจสอบหน้า  My Profile [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - My Profile
    ...    - Khun <ชื่อ>
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_M}
    Swipe to element    ${lblMyProfile}
    Click Mobile Element    ${lblMyProfile}
    Verify My Profile page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_34_2] Search Character P and show result that contain P
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. Searchด้วยตัวอักษร "P"
    ...    7.ตรวจสอบเมนูตัวอักษร "P" [1]
    ...    8. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1]
    ...    - Package
    ...    - Payment
    ...    - Point & Privileges
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_P}
    Swipe to element    ${lblPointsAndPrivileges}
    Verify P
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_35_2] Select Package at Character P and redirect to Package page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "P"
    ...    7. คลิ๊กเมนู Package
    ...    8. ตรวจสอบหน้า Package [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Package
    ...    - Roaming Package
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_P}
    Swipe to element    ${lblPackage}
    Click Mobile Element    ${lblPackage}
    Verify Package Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_36_2] Select Payment at Character P and redirect to Payment page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "P"
    ...    7. คลิ๊กเมนู Payment
    ...    8. ตรวจสอบหน้า Payment  [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Payment
    ...    - Your usage charges
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_P}
    Swipe to element    ${lblPayment}
    Click Mobile Element    ${lblPayment}
    Verify Payment Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_37_2] Select Point and Privileges at Character P and redirect to Point and Privileges page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "P"
    ...    7. คลิ๊กเมนู Point & Privileges
    ...    8. ตรวจสอบหน้า Point & Privileges  [1]
    ...    9. Capture screen
    ...    -----------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Points & Privileges
    ...    - Points
    ...    - Privileges
    ...    - Nearby
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_P}
    Swipe to element    ${lblPointsAndPrivileges}
    Click Mobile Element    ${lblPointsAndPrivileges}
    Verify Points And Privileges Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_38_2] Verify Result Menu When Search Keyword R
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "R"
    ...    7. ตรวจสอบเมนูตัวอักษร "R" [1]
    ...    8. Capture screen
    ...    [1] - Register     `No Verify cause Change from Register to Create my AIS
    ...    - Register AIS Fibre
    ...    - Request/Change WiFi Password
    ...    - Roaming Service Rates
    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    R
    Verify Result When Search Keyword R
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_40_2] Verify Register AIS Fibre And Coverage Checking Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "R"
    ...    7. คลิ๊กเมนู Register AIS Fibre/Coverage Checking
    ...    8. ตรวจสอบหน้า Register AIS Fibre/Coverage Checking [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Register AIS Fibre/Coverage Checking
    [Tags]    TH    success    active    bug    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    R
    Select Quick Menu    QuickMenuRegisterAISFibre
    Verify Register AIS Fibre Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_41_2] Verify Request And Change WiFi Password Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "R"
    ...    7. คลิ๊กเมนู Request/Change WiFi Password
    ...    8. ตรวจสอบหน้า Request/Change WiFi Password [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Request/Change WiFi Password
    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    R
    Select Quick Menu    RequestAndChangeWiFiPassword
    Verify Request And Change WiFi Password Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_42_2] Verify Roaming Service Rates Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "R"
    ...    7. คลิ๊กเมนู Roaming Service Rates
    ...    8. ตรวจสอบหน้า Roaming Service Rates [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Roaming Service Rates
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - Choose your country
    ...    - Choose customer type
    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    R
    Select Quick Menu    RoamingServiceRates
    Verify Roaming Service Rates Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_43_2] Verify Result Menu When Search Keyword S
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "S"
    ...    7. ตรวจสอบเมนูตัวอักษร "S" [1]
    ...    8. Capture screen
    ...
    ...    [1]
    ...    - Service - Setting
    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    S
    Verify S
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_44_2] Verify Service Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "S"
    ...    7. คลิ๊กเมนู Service
    ...    8. ตรวจสอบหน้า Service [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Service
    ...    - Balance Transfer
    ...    - Validity Transfer
    ...    - Register AIS Fibre/Coverage Checking
    ...    - Request/Change WiFi Password
    ...    - Calling Melody
    ...    - Changing IVR & SMS Language
    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    S
    Select Quick Menu    Service
    Verify Service Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_45_2] Verify Setting Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "S"
    ...    7. คลิ๊กเมนู Setting
    ...    8. ตรวจสอบหน้า Setting [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - Setting
    ...    - Language
    ...    - Notification
    ...    - Passcode Lock
    ...    - Terms & Conditions

    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    S
    Select Quick Menu    Setting
    Verify ตั้งค่า
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_46_2] Verify Result Menu When Search Keyword T
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "T"
    ...    7. ตรวจสอบเมนูตัวอักษร "T" [1]
    ...    8. Capture screen
    ...
    ...    [1]
    ...    - Top Up
    ...    - Top Up Usage Details
    ...    - Top Up/ Payment
    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    T
    Verify Result When Search Keyword T
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_47_2] Verify TopUp Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "T"
    ...    7. คลิ๊กเมนู Top Up
    ...    8. ตรวจสอบหน้า Top Up [1]
    ...    9. Capture screen[1] verify - Top Up - หมายเลขโทรศัพท์
    ...    10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - Enter destination number you wish to top up
    ...    - Please select top up channels
    ...    - Select top up amount
    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    T
    Select Quick Menu    TopUp
    Verify TopUp Page From QuickMenu    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_48_2] Verify Top Up Usage Details Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "T"
    ...    7. คลิ๊กเมนู Top Up Usage Details
    ...    8. ตรวจสอบหน้า Top Up Usage Details [1]
    ...    9. Capture screen[1] verify
    ...    [1] verify
    ...    - Usage Details
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - You can check usage history for last 3 days.

    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    T
    Select Quick Menu    TopUpUsageDetails
    Verify Top Up Usage Details Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_49_2] Verify Top Up Payment Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "T"
    ...    7. คลิ๊กเมนู  Top Up/ Payment
    ...    8. ตรวจสอบหน้า  Top Up/ Payment[1]
    ...    9. Capture screen[1] verify
    ...    [1] verify
    ...    - Top Up/ Payment
    ...    - Top Up
    ...    - Payment

    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    T
    Select Quick Menu    TopUpAndPayment
    Verify Topup and Payment
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_50_2] Verify Result Menu When Search Keyword U
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "U"
    ...    7. ตรวจสอบเมนูตัวอักษร "U" [1]
    ...    8. Capture screen
    ...
    ...    [1]
    ...    - Usage Detail History
    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    U
    Verify Result When Search Keyword U
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_51_2] Verify Usage Detail History Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "U"
    ...    7. คลิ๊กเมนู Usage Detail History
    ...    8. ตรวจสอบหน้า Usage Detail History [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Usage Detail History
    ...    - Voice Call
    ...    - Internet/Value Added Service
    ...    - Top Up Usage Details
    ...    - Balance Transfer Usage Details
    ...    - Validity Transfer Usage Details
    ...    - Fee
    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    T
    Select Quick Menu    UsageDetailHistory
    Verify Usage Detail Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_52_2] Quick Menu Search And Select Character V
    [Documentation]    Owner : Asma
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. Searchด้วยตัวอักษร "V"
    ...    7. ตรวจสอบเมนูตัวอักษร "V" [1]
    ...    8. Capture screen
    ...    [1]
    ...    - Validity Transfer
    ...    - Validity Transfer Usage Details
    ...    - Voice Call
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    V
    Verify Result Begin With V
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_53_2] Verify Validity Transfer and redirect
    [Documentation]    Owner : Asma
    ...
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "V"
    ...    7. คลิ๊กเมนู Validity Transfer
    ...    8. ตรวจสอบหน้า Validity Transfer [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - Validity Transfer
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - Enter destination number
    ...    - Transfer amount / Days
    ...    - ปุ่ม OK
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Verify Result Begin With V
    Select Quick Menu    Validity Transfer
    Verify Validity Transfer Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_54_2] Verify Validity Transfer Usage Details and redirect
    [Documentation]    Owner : Asma
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "V"
    ...    7. คลิ๊กเมนู Validity Transfer Usage Details
    ...    8. ตรวจสอบหน้า Usage Details [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - Usage Details History
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - You can check usage history for last 3 days.
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Verify Result Begin With V
    Select Quick Menu    Validity Transfer Usage Details
    Verify Validity Transfer Usage Details    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_55_2] Verify Voice Call and redirect
    [Documentation]    Owner : Asma
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "V"
    ...    7. คลิ๊กเมนู Validity Transfer Usage Details
    ...    8. ตรวจสอบหน้า Usage Details [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - Usage Details History
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - You can check usage history for last 3 days.
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Verify Result Begin With V
    Select Quick Menu    Voice Call
    Verify Validity Transfer Usage Details    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_56_2] Quick Menu Search And Select Character Y
    [Documentation]    Owner : Asma
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. Searchด้วยตัวอักษร "Y"
    ...    7.ตรวจสอบเมนูตัวอักษร "Y" [1]
    ...    8. Capture screen
    ...    [1]
    ...    - Your Credit/Debit Card
    ...    - Your Current Package
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    Y
    Verify Result Begin With Y
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_57_2] Verify Select Your Credit/Debit Card and redirect
    [Documentation]    Owner : Asma
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "Y"
    ...    7. คลิ๊กเมนู สมัคร Your Credit/Debit Card
    ...    8. ตรวจสอบหน้า Your Credit/Debit Card [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - Your Credit/Debit Card
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - Credit/Debit card details
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Verify Result Begin With Y
    Select Quick Menu    YourCreditAndDebitCard
    Verify Your Credit And Debit Card Page iOS    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_58_2] Verify Select Your Current Package and redirect
    [Documentation]    Owner : Asma
    ...
    ...    Source Number : 3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "Y"
    ...    7. คลิ๊กเมนู สมัคร  Your Current Package
    ...    8. ตรวจสอบหน้า  Your Current Package [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    -  Your Current Package
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - Price Plan
    ...    - Value Added Service   ...
    [Tags]    EN    3PE    QuickMenu_IOS_search    success    active    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Verify Result Begin With Y
    Select Quick Menu    Your Current Package
    Verify Your Current Package Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_59_2] Verify Result Menu When Search Keyword Internet & AIS FIBRE
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. ค้นหาด้วยตัวคำว่า "Internet & AIS FIBRE"
    ...    7. ตรวจสอบเมนู "Internet & AIS FIBRE" [1]
    ...    8. Capture screen
    ...
    ...    [1]
    ...    - All Menu
    ...    - หน้าว่าง ไม่มีข้อความขึ้น

    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    Internet & AIS FIBRE
    Verify QuickMenu Search Not Found
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_1_2_Y_60_2] Verify Result Menu When Search Keyword Special campaign & Privileges
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. ค้นหาด้วยตัวคำว่า "Special campaign & Privileges"
    ...    7. ตรวจสอบเมนู "Special campaign & Privileges" [1]
    ...    8. Capture screen
    ...
    ...    [1]
    ...    - All Menu
    ...    - หน้าว่าง ไม่มีข้อความขึ้น

    [Tags]    EN    success    active    regression    3PE    quickmenu_search
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    Special campaign & Privileges
    Verify QuickMenu Search Not Found
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_1_2] Search ข Show All Result
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""ตกลง""
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน ""ค้นหา""
    ...    6. ตรวจสอบ ""All Menu""
    ...    7. Capture screen
    ...    8. ค้นหาด้วยตัวอักษร ""ข""
    ...    9. ตรวจสอบข้อความที่ทำการค้นหา [1]
    ...    10. Capture screen" "[1]
    ...
    ...    verify
    ...    - ขอรับ/เปลี่ยนรหัส WiFi
    ...    - ข้อมูลของคุณ
    ...    - ข้อมูลบัตรเครดิต/เดบิต
    ...    - ชำระค่าบริการให้หมายเลขอื่น
    ...    - แพ็กเกจปัจจุบันของคุณ
    [Tags]    TH    active    success    test
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    ข
    Verify input Character ข iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_2_2] Search ข้อมูล Show All Result
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""ตกลง""
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน ""ค้นหา""
    ...    6. ตรวจสอบ ""All Menu""
    ...    7. Capture screen
    ...    8. ค้นหาด้วยคำว่า ""ข้อมูล""
    ...    9. ตรวจสอบข้อความที่ทำการค้นหา [1]
    ...    10. Capture screen" "[1]
    ...
    ...    verify
    ...    - ข้อมูลของคุณ
    ...    - ข้อมูลบัตรเครดิต/เดบิต
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    ข้อมูล
    Verify input Character ข้อมูล iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_3_2] Search payment Result Not Found
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""ตกลง""
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน ""ค้นหา""
    ...    6. ตรวจสอบ ""All Menu""
    ...    7. Capture screen
    ...    8. ค้นหาด้วยคำว่า ""payment""
    ...    9. ตรวจสอบข้อความที่ทำการค้นหา [1]
    ...    10. Capture screen" "[1]
    ...
    ...    verify
    ...    - All Menu
    ...    - หน้าว่าง ไม่มีข้อความขึ้น
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    payment
    Verify Payment Result Not Found iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_4_2] Press QuickMenu and Select Search
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""ตกลง""
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน ""ค้นหา""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. ตรวจสอบเมนูตัวอักษร ""A"" [1]
    ...    8. Capture screen" "[1]
    ...
    ...    Verify
    ...    - AIS eStatement
    ...    - AIS Facebook
    ...    - AIS Line
    ...    - AIS Online Store
    ...    - AIS Twitter
    ...    - AIS Website"
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Verify Result Contain A iOS TH
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_5_2] Verify Click Menu AIS eStatement And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""ตกลง""
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน ""ค้นหา""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS eStatement
    ...    8. ตรวจสอบหน้า AIS eStatement [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - AIS eStatement
    ...    - บิลออนไลน์ สะดวก รวดเร็ว ส่งตรงถึงมือคุณ
    ...    - มั่นใจในการส่ง
    ...    - หมดข้อกังวล
    ...    - เช็คยอดค่าโทร
    ...    - ตรวจสอบและแจ้งเตือน
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISeStatement
    Verify AISeStatement iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_6_2] Verify Click Menu AIS Facebook And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""ตกลง""
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน ""ค้นหา""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Faceboตกลง
    ...    8. ตรวจสอบหน้า AIS Faceboตกลง [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - Facebook
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISFacebook
    Verify AIS Facebook Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_7_2] Verify Click Menu AIS Line And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""ตกลง""
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน ""ค้นหา""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Line
    ...    8. ตรวจสอบหน้า AIS Line [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - Line
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISLine
    Verify AIS Line Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_8_2] Verify Click Menu AIS Online Store And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""ตกลง""
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน ""ค้นหา""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Online Store
    ...    8. ตรวจสอบหน้า AIS Online Store [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - AIS Online Store
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISOnlineStore
    Verify AIS Online Store Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_9_2] Verify Click Menu AIS Twitter And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""ตกลง""
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน ""ค้นหา""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Twitter
    ...    8. ตรวจสอบหน้า AIS Twitter [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - Twitter
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISTwitter
    Verify AIS Twitter Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_10_2] Verify Click Menu AIS Website And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""ตกลง""
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน ""ค้นหา""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Website
    ...    8. ตรวจสอบหน้า AIS Website [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - AIS Website

    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISWebsite
    Verify AIS Website
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_11_2] Select character I and verify iSWOP
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "I"
    ...    7. ตรวจสอบเมนูตัวอักษร "I" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] - iSWOP
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe To Character    I
    Swipe to element    ${lbliSWOP}
    Verify Swipe to i
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_12_2] Verify iSWOP and redirect
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "I"
    ...    7. คลิ๊กเมนู iSWOP
    ...    8. ตรวจสอบหน้า iSWOP [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify Popup
    ...    - บริการนี้สำหรับลูกค้าที่สมัครแพ็กเกจ iSWOP เท่านั้น
    ...    - ปุ่ม OK
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe To Character    I
    Swipe to element    ${lbliSWOP}
    Select iSWOP
    Verify iSWOP Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_13_2] Select character ข and show result that contain ข
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ข"
    ...    7. ตรวจสอบเมนูตัวอักษร "ข" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - ขอรับ/เปลี่ยนรหัส WiFi
    ...    - ข้อมูลของคุณ
    ...    - ข้อมูลบัตรเครดิต/เดบิต
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe To Character    ข
    Swipe to element    ${lbliSWOP}
    Verify Result That Contain ข Postpaid
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_14_2] Select character ข and verify Request And Change Wifi page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ข"
    ...    7. คลิ๊กเมนู ขอรับ/เปลี่ยนรหัส WiFi
    ...    8. ตรวจสอบหน้า ขอรับ/เปลี่ยนรหัส WiFi [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - ขอรับ/เปลี่ยนรหัส WiFi
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    ...    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe To Character    ข
    Swipe to element    ${lblRequestAndChangeWiFiPassword}
    Click Mobile Element    ${lblRequestAndChangeWiFiPassword}
    Verify Request And Change Wifi
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_15_2] Select character ข and verify My Profile
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ข"
    ...    7. คลิ๊กเมนู ข้อมูลของคุณ
    ...    8. ตรวจสอบหน้า ข้อมูลของคุณ [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - ข้อมูลของคุณ
    ...    - รอบบิล
    ...    - ช่องทางการรับใบแจ้งค่าใช้บริการ
    ...    - ที่อยู่ในการจัดส่งเอกสาร
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe To Character    ข
    Swipe to element    ${lblMyProfile}
    Click Mobile Element    ${lblMyProfile}
    Verify My Profile page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_16_2] Select character ข and verify Your Credit And Debit Card
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ข"
    ...    7. คลิ๊กเมนู ข้อมูลบัตรเครดิต/เดบิต
    ...    8. ตรวจสอบหน้า ข้อมูลบัตรเครดิต/เดบิต [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - ข้อมูลบัตรเครดิต/เดบิต
    ...    - บัตรเครดิต/เดบิตของคุณ
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe To Character    ข
    Swipe to element    ${lblYourCreditAndDebitCard}
    Click Mobile Element    ${lblYourCreditAndDebitCard}
    Verify Your Credit And Debit Card Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_17_2] Select character ค and show result that contain ค
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ค"
    ...    7. ตรวจสอบเมนูตัวอักษร "ค" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - ค่าใช้บริการ
    ...    - ค่าใช้บริการระหว่างรอบบิล
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe To Character    ค
    Swipe to element    ${lblYourBalancePostpaid}
    Verify ค Postpaid
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_18_2] Select character ค and verify Your Balance Postpaid
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ค"
    ...    7. คลิ๊กเมนู ค่าใช้บริการ
    ...    8. ตรวจสอบหน้า ค่าใช้บริการ [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - ค่าใช้บริการ
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe To Character    ค
    Swipe to element    ${lblYourBalancePostpaid}
    Click Mobile Element    ${lblYourBalancePostpaid}
    Verify Your Balance Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_19_2] Select character ค and ค and verify Your Current Change Bill Cycle
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ค"
    ...    7. คลิ๊กเมนู ค่าใช้บริการระหว่างรอบบิล
    ...    8. ตรวจสอบหน้า ค่าใช้บริการระหว่างรอบบิล [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - ค่าใช้บริการระหว่างรอบบิล
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - รายละเอียดค่าใช้บริการรอบบิลปัจจุบัน
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe To Character    ค
    Swipe to element    ${lblYourCurrentChange(Unbilled)}
    Click Mobile Element    ${lblYourCurrentChange(Unbilled)}
    Verify Your Current Change Bill Cycle    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_20_2] Select character จ and show result that contain จ
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "จ"
    ...    7. ตรวจสอบเมนูตัวอักษร "จ" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - จ่ายบิล/เติมเงิน
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe To Character    จ
    Swipe to element    ${lblPaymentAndTopupPostpaid}
    Verify จ Postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_21_2] Select character จ and จ and verify Your Current Change Bill Cycle
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "จ"
    ...    7. คลิ๊กเมนู จ่ายบิล/เติมเงิน
    ...    8. ตรวจสอบหน้า จ่ายบิล/เติมเงิน [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - จ่ายบิล/เติมเงิน
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe To Character    จ
    Swipe to element    ${lblPaymentAndTopupPostpaid}
    Click Mobile Element    ${lblPaymentAndTopupPostpaid}
    Verify Menu PaymentTopUp Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_22_2] Select character ช and show result that contain ช
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ช"
    ...    7. ตรวจสอบเมนูตัวอักษร "ช" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - ชำระค่าบริการ
    ...    - ชำระค่าบริการให้หมายเลขอื่น
    ...    - ช่วยเหลือ
    ...    - เช็กยอดค่าโทร
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ช}
    Swipe to element    ${lblPayForAnotherNumber}
    Verify ช Postpaid
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_23_2] Select character ช and verify Payment page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ช"
    ...    7. คลิ๊กเมนู ชำระค่าบริการ
    ...    8. ตรวจสอบหน้า ชำระค่าบริการ [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - ชำระค่าบริการ
    ...    - รายละเอียดค่าใช้บริการ
    ...    - ช่องทางการชำระ
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ช}
    Swipe to element    ${lblPayment}
    Click Mobile Element    ${lblPayment}
    Verify Payment Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_24_2] Select character ช and verify Pay For Another Number Page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ช"
    ...    7. คลิ๊กเมนู ชำระค่าบริการให้หมายเลขอื่น
    ...    8. ตรวจสอบหน้า ชำระค่าบริการให้หมายเลขอื่น [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - ชำระค่าบริการ
    ...    - รายละเอียดค่าใช้บริการ
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ช}
    Swipe to element    ${lblPayForAnotherNumber}
    Click Mobile Element    ${lblPayForAnotherNumber}
    Verify Pay For Another Number Page    ${Number}
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_25_2] Select character ช and verify Help page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ช"
    ...    7. คลิ๊กเมนู ช่วยเหลือ
    ...    8. ตรวจสอบหน้า ช่วยเหลือ [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - ผู้ช่วย
    ...    - วิธีใช้งาน Application
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ช}
    Swipe to element    ${lblHelpAndSupport}
    Click Mobile Element    ${lblHelpAndSupport}
    verify ผู้ช่วย
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_26_2] Select character ช and redirect to Balance Usage page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ช"
    ...    7. คลิ๊กเมนู เช็กยอดค่าโทร
    ...    8. ตรวจสอบหน้า เช็กยอดค่าโทร [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - เช็กยอดค่าโทร
    ...    - ค่าใช้ระหว่างรอบบิล
    ...    - รายละเอียดค่าใช้บริการ
    ...    - ค่าใช้บริการ
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ช}
    Swipe to element    ${lblBalanceandUsage}
    Click Mobile Element    ${lblBalanceandUsage}
    Verify Menu Balance Usage Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_27_2] Select character ต and show result that contain ต
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ต"
    ...    7. ตรวจสอบเมนูตัวอักษร "ต" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - ตั้งค่า
    ...    - เติมเงิน
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ต}
    Verify ต Postpaid
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_28_2] Select character ต and verify Setting page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ต"
    ...    7. คลิ๊กเมนู ตั้งค่า
    ...    8. ตรวจสอบหน้า ตั้งค่า [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - ตั้งค่า
    ...    - ภาษา
    ...    - แจ้งเตือน
    ...    - การล็อกรหัส
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ต}
    Swipe to element    ${lblSetting}
    Click Mobile Element    ${lblSetting}
    Verify ตั้งค่า
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_29_2] Select character ต and verify TopUp page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ต"
    ...    7. คลิ๊กเมนู เติมเงิน
    ...    8. ตรวจสอบหน้า เติมเงิน [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - เติมเงิน
    ...    - ระบุหมายเลขโทรศัพท์ที่ต้องการเติมเงิน
    ...    - เลือกช่องทางการเติมเงิน
    ...    - เลือกจำนวนที่ต้องการเติมเงิน
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ต}
    Swipe to element    ${lblTopUp}
    Click Mobile Element    ${lblTopUp}
    Verify เติมเงิน    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_30_2] Select character ถ and show result that contain ถ
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ถ"
    ...    7. ตรวจสอบเมนูตัวอักษร "ถ" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - ถามอุ่นใจ
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    waitmo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ถ}
    Swipe to element    ${lblAskAunjai}
    Verify ถ
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_31_2] Select character ต and verify AskAunJai page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ถ"
    ...    7. คลิ๊กเมนู ถามอุ่นใจ
    ...    8. ตรวจสอบหน้า ถามอุ่นใจ [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - ถามอุ่นใจ
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ถ}
    Swipe to element    ${lblAskAunjai}
    Click Mobile Element    ${lblAskAunjai}
    Verify Ask AunJai Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_32_2] Select character บ and show result that contain บ
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "บ"
    ...    7. ตรวจสอบเมนูตัวอักษร "บ" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - บริการ
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_บ}
    Swipe to element    ${lblService}
    Verify บ
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_33_2] Select character บ and verify Service page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "บ"
    ...    7. คลิ๊กเมนู บริการ
    ...    8. ตรวจสอบหน้า บริการ [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - บริการ
    ...    - AIS eStatement
    ...    - iSWOP
    ...    - สมัคร AIS Fibre / เช็กพื้นที่ให้บริการ
    ...    - ขอรับ/เปลี่ยนรหัส WiFi
    ...    - เพลงรอสาย
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_บ}
    Swipe to element    ${lblService}
    Click Mobile Element    ${lblService}
    Verify Service Page Postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_34_2] Select character ป and show result that contain ป
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ป"
    ...    7. ตรวจสอบเมนูตัวอักษร "ป" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - เปลี่ยนแพ็กเกจหลัก
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ป}
    Swipe to element    ${lblChangePricePlan}
    Verify ป Postpaid
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_35_2] Select character ป and verify Change Main Package Page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ป"
    ...    7. คลิ๊กเมนู เปลี่ยนแพ็กเกจหลัก
    ...    8. ตรวจสอบหน้า เปลี่ยนแพ็กเกจหลัก [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - เปลี่ยนแพ็กเกจหลัก
    [Tags]    TH    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_ป}
    Swipe to element    ${lblChangePricePlan}
    Click Mobile Element    ${lblChangePricePlan}
    Verify Change Price Plan Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_36_2] Click Quick Menu Select Search พ
    [Documentation]    Owner : Tinpan
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. \ เลื่อนมาที่ตัวอักษร "พ"
    ...    7.ตรวจสอบเมนูตัวอักษร "พ" [1]
    ...    8. Capture screen
    ...
    ...    Verify Point
    ...    [1]
    ...    - พอยท์ & สิทธิพิเศษ
    ...    - เพลงรอสาย
    ...    - แพ็กเกจ
    ...    - แพ็กเกจปัจจุบัน/ยอดคงเหลือ
    ...    - แพ็กเกจปัจจุบันของคุณ
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Verify พ
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_37_2] Verify You can click menu Points&Privileges and Redirect
    [Documentation]    Owner : Tinpan
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "พ"
    ...    7. คลิ๊กเมนู พอยท์ & สิทธิพิเศษ
    ...    8. ตรวจสอบหน้า พอยท์ & สิทธิพิเศษ \ [1]
    ...    9. Capture screen
    ...
    ...    Verify Point
    ...    [1] verify
    ...    - พอยท์&สิทธิพิเศษ
    ...    - พอยท์
    ...    - สิทธิพิเศษ
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    PointsAndPrivileges
    Cancel Register AIS Point
    Verify PointsAndPrivileges Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_38_2] Verify You can click menu Calling Melody and Redirect
    [Documentation]    Owner : Tinpan
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "พ"
    ...    7. คลิ๊กเมนู เพลงรอสาย
    ...    8. ตรวจสอบหน้า เพลงรอสาย \ [1]
    ...    9. Capture screen
    ...
    ...    Verify Point
    ...    [1] verify
    ...    - เพลงรอสาย
    [Tags]    TH    success    active    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    CallingMelody
    Verify Calling Melody Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_39_2] Verify You can click menu Package and Redirect
    [Documentation]    Owner : Tinpan
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO, 3BE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "พ"
    ...    7. คลิ๊กเมนู แพ็กเกจ
    ...    8. ตรวจสอบหน้า แพ็กเกจ \ [1]
    ...    9. Capture screen
    ...
    ...    Verify Point
    ...    [1] verify
    ...    - แพ็กเกจ
    ...    - แพ็กเกจในประเทศ
    ...    - แพ็กเกจโรมมิ่ง
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    Package
    Verify Package Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_40_2] Verify You can click menu Current Package And Remaining and Redirect
    [Documentation]    Owner : Tinpan
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "พ"
    ...    7. คลิ๊กเมนู แพ็กเกจปัจจุบัน/ยอดคงเหลือ
    ...    8. ตรวจสอบหน้า แพ็กเกจปัจจุบัน/ยอดคงเหลือ \ [1]
    ...    9. Capture screen
    ...
    ...    Verify Point
    ...    [1] verify
    ...    - แพ็กเกจปัจจุบัน/ยอดคงเหลือ
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    CurrentPackageAndRemaining
    Verify Current Package And Remaing Page From QuickMenu    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_41_2] Verify You can click menu Your Current Package and Redirect
    [Documentation]    Owner : Tinpan
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "พ"
    ...    7. คลิ๊กเมนู แพ็กเกจปัจจุบันของคุณ
    ...    8. ตรวจสอบหน้า แพ็กเกจปัจจุบันของคุณ [1]
    ...    9. Capture screen
    ...
    ...    Verify Point
    ...    [1] verify
    ...    - แพ็กเกจปัจจุบันของคุณ
    ...    - บริการเสริม
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    YourCurrentPackage
    Verify Your Current Package Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_42_2] Verify Search Menu ร
    [Documentation]    Owner : Tinpan
    ...
    ...    Source Number : 3PO
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ร"
    ...    7. ตรวจสอบเมนูตัวอักษร "ร" [1]
    ...    8. Capture screen
    ...    [1] - รายละเอียดค่าใช้บริการ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    ร
    Verify Result When Search Keyword ร
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_43_2] Verify Usage Detail History Page
    [Documentation]    Owner : Mac Tinpan
    ...
    ...    Source Number : 3PO
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ร"
    ...    7. คลิ๊กเมนู รายละเอียดค่าใช้บริการ
    ...    8. ตรวจสอบหน้า รายละเอียดค่าใช้บริการ [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - รายละเอียดค่าใช้บริการ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    ร
    Select Quick Menu    ServiceDetail
    Verify Usage Detail History Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_44_2] Click Quick Menu Select Search ว
    [Documentation]    Owner : Tinpan
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ว"
    ...    7. ตรวจสอบเมนูตัวอักษร "ว" [1]
    ...    8. Capture screen
    ...    [1] - วิธีใช้งาน
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Verify ว
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_45_2] Verify You can click menu How to Use and Redirect
    [Documentation]    Owner : Tinpan
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ว"
    ...    7. คลิ๊กเมนู วิธีใช้งาน
    ...    8. ตรวจสอบหน้า วิธีใช้งาน [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - วิธีใช้งาน
    ...    - วิธีใช้งาน Application
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Select Quick Menu    HowtoUse
    Verify HowToUse To Use Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_46_2] Verify Search Menu ส
    [Documentation]    Owner : Tinpan
    ...
    ...    Source Number : 3PO
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7. ตรวจสอบเมนูตัวอักษร "ส" [1]
    ...    8. Capture screen[1]
    ...    - สมัคร AIS Fibre / เช็กพื้นที่ให้บริการ
    ...    - สมัคร my AIS
    ...    - สมัครแพ็กเกจเสริม Entertainment
    ...    - สมัครแพ็กเกจเสริมอินเทอร์เน็ต
    ...    - สมัครแพ็กเกจเสริมอื่นๆ
    ...    - สมัครแพ็กเกจโรมมิ่ง
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    ส
    Verify Result Contain ส
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_47_2] Verify Page สมัคร AIS Fibre / เช็กพื้นที่
    [Documentation]    Owner : Mac Tinpan
    ...
    ...    Source Number : 3PO
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7. คลิ๊กเมนู สมัคร AIS Fibre / เช็กพื้นที่ให้บริการ
    ...    8. ตรวจสอบหน้า สมัคร AIS Fibre / เช็กพื้นที่ให้บริการ [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - สมัคร AIS Fibre / เช็กพื้นที่ให้บริการ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    ส
    Select Quick Menu    RegisterAisFibreAndCoverageChecking
    Verify Register AIS Fibre And Coverage Checking page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_48_2] Verify Page สมัคร my AIS
    [Documentation]    Owner : Mac Tinpan
    ...
    ...    Source Number : 3PO
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7. คลิ๊กเมนู สมัคร my AIS
    ...    8. ตรวจสอบหน้า สมัคร my AIS [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - สมัคร my AIS
    ...    - ปุ่ม สมัคร my AIS
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    ส
    Select Quick Menu    RegisterMyAIS
    Verify Register myAIS Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_49_2] Verify Page สมัครแพ็กเกจเสริม Entertainment
    [Documentation]    Owner : Mac Tinpan
    ...
    ...    Source Number : 3PO
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7. คลิ๊กเมนู สมัครแพ็กเกจเสริม Entertainment
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจเสริม Entertainment [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - สมัครแพ็กเกจเสริม Entertainment
    ...    - เต็มอารมณ์ความบันเทิงระดับโลก ผ่าน AIS PLAY
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    ส
    Select Quick Menu    RegisterOntopEntertainment
    Verify Ontop Entertainmant Package Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_50_2] Verify Page สมัครแพ็กเกจเสริมอินเทอร์เน็ต
    [Documentation]    Owner : Mac Tinpan
    ...
    ...    Source Number : 3PO
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7. คลิ๊กเมนู สมัครแพ็กเกจเสริมอินเทอร์เน็ต
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอินเทอร์เน็ต [1]
    ...    9. Capture screen
    ...    [1] verify - สมัครแพ็กเกจเสริมอินเทอร์เน็ต
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    ส
    Select Quick Menu    InternetOntopPackage
    Verify Register Internet Ontop Package Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_51_2] Verify Page สมัครแพ็กเกจเสริมอื่นๆ
    [Documentation]    Owner : Tinpan
    ...
    ...    Source Number : 3PO
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7. คลิ๊กเมนู สมัครแพ็กเกจเสริมอื่นๆ
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจเสริมอื่นๆ [1]
    ...    9. Capture screen
    ...    [1] verify - สมัครแพ็กเกจเสริมอื่นๆ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    Input Search Keyword    ส
    Select Quick Menu    OtherOntopPackage
    Verify Other Ontop Package Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_52_2] Verify Page สมัครแพ็กเกจโรมมิ่ง
    [Documentation]    Owner : Tinpan
    ...
    ...    Source Number : 3PO
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ส"
    ...    7. คลิ๊กเมนู สมัครแพ็กเกจโรมมิ่ง
    ...    8. ตรวจสอบหน้า สมัครแพ็กเกจโรมมิ่ง [1]
    ...    9. Capture screen
    ...    [1] verify - สมัครแพ็กเกจโรมมิ่ง
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    Input Search Keyword    ส
    Select Quick Menu    RegisterRoamingPackage
    Verify Roaming Package Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_53_2] Verify Search Menu อ
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "อ"
    ...    7. ตรวจสอบเมนูตัวอักษร "อ" [1]
    ...    8. Capture screen
    ...    [1] - ออกจากระบบ
    ...    - อัตราค่าบริการโรมมิ่ง
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    อ
    Verify Result Contain อ
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_54_2] Verify Page ออกจากระบบ
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "อ"
    ...    7. คลิ๊กเมนู ออกจากระบบ
    ...    8. ตรวจสอบหน้า ออกจากระบบ [1]
    ...    9. Capture screen
    ...    [1] verify - ล็อกอิน
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    อ
    Select Quick Menu    LogOut
    Verify Login Page
    [Teardown]    Keywords For TearDown Survey    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_55_2] Verify Page อัตราค่าบริการโรมมิ่ง
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "อ"
    ...    7. คลิ๊กเมนู อัตราค่าบริการโรมมิ่ง
    ...    8. ตรวจสอบหน้า อัตราค่าบริการโรมมิ่ง [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - อัตราค่าบริการโรมมิ่ง
    ...    - เลือกประเทศ
    ...    - เลือกระบบ
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    อ
    Select Quick Menu    RoamingServiceRates
    Verify Roaming Service Rate Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_56_2] Verify QuickMenu Search Result That Contain ห
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ห"
    ...    7. ตรวจสอบเมนูตัวอักษร "ห" [1]
    ...    8. Capture screen[1] - หน้าหลัก
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    ห
    Verify Result Contain ห
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_57_2] Verify Home Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. เลื่อนมาที่ตัวอักษร "ห"
    ...    7. คลิ๊กเมนู หน้าหลัก
    ...    8. ตรวจสอบหน้า หน้าหลัก [1]
    ...    9. Capture screen
    ...    [1] verify - หน้าแรก - แพ็กเกจปัจจุบัน
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    ห
    Select Quick Menu    Home
    Verify Home Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_58_2] Verify Search Menu การใช้งานต่างประเทศ
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE,3BE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. ค้นหาด้วยตัวคำว่า "การใช้งานต่างประเทศ"
    ...    7. ตรวจสอบเมนู "การใช้งานต่างประเทศ" [1]
    ...    8. Capture screen
    ...    [1]
    ...    - All Menu
    ...    - หน้าว่าง ไม่มีข้อความขึ้น
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    การใช้งานต่างประเทศ
    Comment    *messagesVerify Menu Not Found
    Verify QuickMenu Search Not Found
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_1_Y_59_2] Verify Search Menu การยกเลิก SMS โฆษณา
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE,3BE
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. คลิกไอคอน "ค้นหา"
    ...    6. ค้นหาด้วยตัวคำว่า "การยกเลิก SMS โฆษณา"
    ...    7. ตรวจสอบเมนู \ "การยกเลิก SMS โฆษณา" [1]
    ...    8. Capture screen
    ...    [1]
    ...    - All Menu
    ...    - หน้าว่าง ไม่มีข้อความขึ้น
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    การยกเลิก SMS โฆษณา
    Verify QuickMenu Search Not Found
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_1_2] Search f Show All Result
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. ตรวจสอบ ""All Menu""
    ...    7. Capture screen
    ...    8. ค้นหาด้วยตัวอักษร ""f""
    ...    9. ตรวจสอบข้อความที่ทำการค้นหา [1]
    ...    10. Capture screen" "[1]
    ...
    ...    verify
    ...    - AIS Facebook
    ...    - My Profile
    ...    - Register AIS Fibre/Coverage Checking
    ...    - Request/Change WiFi Password"
    [Tags]    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    f
    Verify input Character f iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_2_2] Search Line Show All Result
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. ตรวจสอบ ""All Menu""
    ...    7. Capture screen
    ...    8. ค้นหาด้วยคำว่า ""Line""
    ...    9. ตรวจสอบข้อความที่ทำการค้นหา [1]
    ...    10. Capture screen" "[1]
    ...
    ...    verify
    ...    - AIS Line
    ...    - AIS Online Store
    [Tags]    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    Line
    Verify input Character Line iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_3_2] Search ตั้งค่า Result Not Found
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    [Tags]    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    ตั้งค่า
    Verify ตั้งค่า Result Not Found iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_4_2] Press QuickMenu and Select Search
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. ตรวจสอบเมนูตัวอักษร ""A"" [1]
    ...    8. Capture screen" "[1]
    ...
    ...    Verify
    ...    - AIS eStatement
    ...    - AIS Facebook
    ...    - AIS Line
    ...    - AIS Online Store
    ...    - AIS Twitter
    ...    - AIS Website
    ...    - Apply Entertainment On-Top Package
    ...    - Apply Internet On-Top Package
    ...    - Apply Other On-Top Package
    ...    - Apply Roaming Package
    ...    - Ask Aunjai"
    [Tags]    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Verify Result Contain A iOS EN
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_5_2] Verify Click Menu AIS eStatement And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS eStatement
    ...    8. ตรวจสอบหน้า AIS eStatement [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - AIS eStatement
    ...    - Online Billing, Convenient , Quick and Anywhere 24/7
    ...    - Fast, safe
    ...    - Hassle-free
    ...    - Check it yourself
    ...    - Stay up-to-date
    [Tags]    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISeStatement
    Verify AISeStatement EN
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_6_2] Verify Click Menu AIS Facebook And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Facebook
    ...    8. ตรวจสอบหน้า AIS Facebook [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - Facebook
    [Tags]    EN    active    success    test
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISFacebook
    Verify AIS Facebook Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_7_2] Verify Click Menu AIS Line And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Line
    ...    8. ตรวจสอบหน้า AIS Line [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - Line
    [Tags]    EN    active    success    test
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISLine
    Verify AIS Line Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_8_2] Verify Click Menu AIS Online Store And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Online Store
    ...    8. ตรวจสอบหน้า AIS Online Store [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - AIS Online Store
    [Tags]    EN    active    success    test
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISOnlineStore
    Verify AIS Online Store Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_9_2] Verify Click Menu AIS Twitter And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Twitter
    ...    8. ตรวจสอบหน้า AIS Twitter [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - Twitter
    [Tags]    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISTwitter
    Verify AIS Twitter Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_10_2] Verify Click Menu AIS Website And redirect
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด ""OK""
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน ""Search""
    ...    6. เลื่อนมาที่ตัวอักษร ""A""
    ...    7. คลิ๊กเมนู AIS Website
    ...    8. ตรวจสอบหน้า AIS Website [1]
    ...    9. Capture screen" "[1]
    ...
    ...    verify
    ...    - AIS Website
    [Tags]    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Swipe To Character    A
    Select Quick Menu    AISWebsite
    Verify AIS Website
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_11_2] Verify Apply Entertainment OnTop Package Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "A"
    ...    7. คลิ๊กเมนู Apply Entertainment On-Top Package
    ...    8. ตรวจสอบหน้า Apply Entertainment On-Top Package [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - Apply Entertainment On-Top Package
    [Tags]    EN    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    A
    Select Quick Menu    ApplyEntertainmentOnTopPackage
    Verify Apply Entertainment OnTop Package Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_12_2] Verify Apply Internet OnTop Package Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "A"
    ...    7. คลิ๊กเมนู Apply Internet On-Top Package
    ...    8. ตรวจสอบหน้า Apply Internet On-Top Package [1]
    ...    9. Capture screen[1] verify
    ...    - Apply Internet On-Top Package
    [Tags]    EN    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    A
    Select Quick Menu    ApplyInternetOnTopPackage
    Verify Apply Internet OnTop Package Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_13_2] Verify Apply Other OnTop Package Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "A"
    ...    7. คลิ๊กเมนู Apply Other On-Top Package
    ...    8. ตรวจสอบหน้า Apply Other On-Top Package [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - Apply Other On-Top Package
    [Tags]    EN    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    A
    Select Quick Menu    ApplyOtherOnTopPackage
    Verify Apply Other OnTop Package Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_14_2] Verify Apply Roaming Package Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK" 4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "A"
    ...    7. คลิ๊กเมนู Apply Roaming Package
    ...    8. ตรวจสอบหน้า Apply Roaming Package [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - Apply Roaming Package
    ...    - Roaming country
    ...    - Customer type - Package type
    [Tags]    EN    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    A
    Select Quick Menu    ApplyRoamingPackage
    Verify Apply Roaming Package Page Postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_15_2] Verify Ask Aunjai Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "A"
    ...    7. คลิ๊กเมนู Ask Aunjai
    ...    8. ตรวจสอบหน้า Ask Aunjai [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - Ask Aunjai
    [Tags]    EN    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    A
    Select Quick Menu    AskAunjai
    Verify Ask Aunjai Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_16_2] Select character B and show result that contain B
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "B"
    ...    7. ตรวจสอบเมนูตัวอักษร "B" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - Balance & Usage Detail
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_B}
    Swipe to element    ${lblBalanceAndUsageDetail}
    Verify Swipe to B
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_17_2] Select character B and verify Balance and Usage Detail Page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "B"
    ...    7. คลิ๊กเมนู Balance & Usage Detail
    ...    8. ตรวจสอบหน้า Balance & Usage Detail [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Balance & Usage Detail
    ...    - Your Current Charge(Unbilled)
    ...    - Usage Detail History
    ...    - Your Balance
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_B}
    Swipe to element    ${lblBalanceAndUsageDetail}
    Click Mobile Element    ${lblBalanceAndUsageDetail}
    Verify Menu Balance And Usage Detail
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_18_2] Select character C and show result that contain C
    [Documentation]    owner : mac rukpong
    ...
    ...    n-type number : 3po
    ...    -----------------------
    ...    1. เปิดapp myais
    ...    2. login ผ่าน 3g/4g หรือกดรับ otp
    ...    3. กด "ok"
    ...    4. คลิกไอคอน quick menu
    ...    5. คลิกไอคอน "search"
    ...    6. เลื่อนมาที่ตัวอักษร "c"
    ...    7. ตรวจสอบเมนูตัวอักษร "c" [1]
    ...    8. capture screen
    ...    ------------------------
    ...    expected result
    ...    [1]
    ...    - calling melody
    ...    - change price plan
    ...    - current package & remaining
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    create dictionary
    &{#dict_device_name}=    take and define virtual local configuration    ${#dict_device_name}    ${lo_myais_local_config_file_path}    virtual_device_1    ${ar_take_timeout}    ${ar_ntype}=include
    ${number}    get from dictionary    ${virtual_device_1_number}    ${ar_ntype}
    set network connection    ${${ar_network}}    ${virtual_device_1_ipappium}    ${virtual_device_1_platfrom_name}    ${virtual_device_1_sn}
    ${appiuminfo}    open my ais    ${virtual_device_1_ipappium}    ${virtual_device_1_platfrom_name}    ${virtual_device_1_platfrom_version}    ${virtual_device_1_sn}
    login    ${virtual_device_1_ipappium}    ${virtual_device_1_platfrom_name}    ${virtual_device_1_platfrom_version}    ${virtual_device_1_sn}    ${number}    ${ar_network}
    choose language    ${ar_lang}    ${ar_network}
    select menu    quickmenu
    select sub menu    quickmenusearch
    # swipe to element    ${char_c}
    swipe to element    ${lblcurrentpackageandremaining}
    verify c postpaid
    back from quickmenu
    [Teardown]    keywords for teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_19_2] Select character C and verify Calling Melody Page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "C"
    ...    7. คลิ๊กเมนู Calling Melody
    ...    8. ตรวจสอบหน้า Calling Melody [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Calling Melody
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    ...    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_C}
    Swipe to element    ${lblCallingMelody}
    Click Mobile Element    ${lblCallingMelody}
    Verify Calling Melody
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_20_2] Select character C and verify Change Price Plan Page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "C"
    ...    7. คลิ๊กเมนู Change Price Plan
    ...    8. ตรวจสอบหน้า Change Price Plan [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Change Price Plan
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_C}
    Swipe to element    ${lblChangePricePlan}
    Click Mobile Element    ${lblChangePricePlan}
    Verify Change Price Plan Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_21_2] Select character C and verify Current Package and Remaining page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "C"
    ...    7. คลิ๊กเมนู Current Package & Remaining
    ...    8. ตรวจสอบหน้าCurrent Package & Remaining [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Current Package & Remaining
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_C}
    Swipe to element    ${lblCurrentPackageAndRemaining}
    Click Mobile Element    ${lblCurrentPackageAndRemaining}
    Verify Current Package And Remaing Page From QuickMenu    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_22_2] Select character H and show result that contain H
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "H"
    ...    7. ตรวจสอบเมนูตัวอักษร "H" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - Home
    ...    - How to use
    ...    - Help & Support
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_H}
    Swipe to element    ${lblHelpAndSupport}
    Verify H
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_23_2] Select character H and verify Home page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "H"
    ...    7. คลิ๊กเมนู Home
    ...    8. ตรวจสอบหน้า Home [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Home
    ...    - Current Usages
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_H}
    Swipe to element    ${lblHome}
    Click Mobile Element    ${lblHome}
    Verify Home Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_24_2] Select character H and verify Help and Support page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - How to use
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_H}
    Swipe to element    ${lblHelpAndSupport}
    Click Mobile Element    ${lblHelpAndSupport}
    Verify Help & Support
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_25_2] Select character H and verify How to use page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "H"
    ...    7. คลิ๊กเมนู How to use
    ...    8. ตรวจสอบหน้า How to use [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - How to use
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_H}
    Swipe to element    ${lblHowtoUse}
    Click Mobile Element    ${lblHowtoUse}
    Verify How to Use
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_26_2] Select character I and show result that contain I
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "I"
    ...    7. ตรวจสอบเมนูตัวอักษร "I" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - iSOWP
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_I}
    Swipe to element    ${lbliSWOP}
    Verify Swipe to I
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_27_2] Select character I and verify iSWOP page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "I"
    ...    7. คลิ๊กเมนู iSOWP
    ...    8. ตรวจสอบหน้า iSOWP [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - iSOWP
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_I}
    Swipe to element    ${lbliSWOP}
    Click Mobile Element    ${lbliSWOP}
    Verify iSWOP Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_28_2] Select character L and show result that contain L
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "L"
    ...    7. ตรวจสอบเมนูตัวอักษร "L" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - Log Out
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_L}
    Swipe to element    ${lblLogOutMyAIS}
    Verify Swipe to L
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_29_2] Select character L and verify Login page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "L"
    ...    7. คลิ๊กเมนู Log Out
    ...    8. ตรวจสอบหน้า Log Out [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Login
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_L}
    Swipe to element    ${lblLogOutMyAIS}
    Click Mobile Element    ${lblLogOutMyAIS}
    Verify click sub menu LogOut
    [Teardown]    Keywords For TearDown Without Logout    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_30_2] Select character M and show result that contain M
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "M"
    ...    7. ตรวจสอบเมนูตัวอักษร "M" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - My Profile
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_M}
    Swipe to element    ${lblMyProfile}
    Verify Swipe to M
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_31_2] Select character M and verify My Profile page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "M"
    ...    7. คลิ๊กเมนู My Profile
    ...    8. ตรวจสอบหน้า My Profile [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - My Profile
    ...    - Bill Cycle
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_M}
    Swipe to element    ${lblMyProfile}
    Click Mobile Element    ${lblMyProfile}
    Verify My Profile page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_32_2] Select character M and verify My AIS Account page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "M"
    ...    7. คลิ๊กเมนู my AIS Account
    ...    8. ตรวจสอบหน้า my AIS Account [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - my AIS Account
    ...    - My List
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    ...    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_M}
    Swipe to element    ${lblmyAISAccountLabel}
    Click Mobile Element    ${lblmyAISAccountLabel}
    Verify My AIS Account Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_33_2] Select character P and show result that contain P
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "P"
    ...    7. ตรวจสอบเมนูตัวอักษร "P" [1]
    ...    8. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1]
    ...    - Package
    ...    - Payment To Another Number
    ...    - Payment
    ...    - Payment/ Top up
    ...    - Point & Privileges
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_P}
    Swipe to element    ${lblPointsAndPrivileges}
    Verify Swipe to P
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_34_2] Select character P and verify Package page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "P"
    ...    7. คลิ๊กเมนู Package
    ...    8. ตรวจสอบหน้า Package [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Package
    ...    - Roaming Package
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_P}
    Swipe to element    ${lblPackage}
    Click Mobile Element    ${lblPackage}
    Verify Package Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_35_2] Select character P and verify Payment To Another Number page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "P"
    ...    7. คลิ๊กเมนู Payment To Another Number
    ...    8. ตรวจสอบหน้า Payment To Another Number [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Payment
    ...    - Your usage charges
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_P}
    Swipe to element    ${lblPayForAnotherNumber}
    Click Mobile Element    ${lblPayForAnotherNumber}
    Verify Pay For Another Number Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_36_2] Select character P and verify Payment page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "P"
    ...    7. คลิ๊กเมนู Payment
    ...    8. ตรวจสอบหน้า Payment [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Payment
    ...    - Your usage charges
    ...    - Payment channels
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_M}
    Swipe to element    ${lblPayment}
    Click Mobile Element    ${lblPayment}
    Verify Payment Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_37_2] Select character P and verify Payment and Topup page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "P"
    ...    7. คลิ๊กเมนู Payment/ Top up
    ...    8. ตรวจสอบหน้า Payment/ Top up [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [[1] verify
    ...    - Payment/ Top up
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMenu
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_P}
    Swipe to element    ${lblPaymentAndTopUp}
    Click Mobile Element    ${lblPaymentAndTopUp}
    Verify Payment and TopUp
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_38_2] Select character P and verify Points and Privileges page
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PO
    ...    -----------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "P"
    ...    7. คลิ๊กเมนู Point & Privileges
    ...    8. ตรวจสอบหน้า Point & Privileges [1]
    ...    9. Capture screen
    ...    ------------------------
    ...    Expected Result
    ...    [1] verify
    ...    - Points & Privileges
    ...    - Points
    ...    - Privileges
    ...    - Nearby
    [Tags]    EN    3PO    QuickMenu_IOS_search    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    QuickMen
    Select Sub Menu    QuickMenuSearch
    # Swipe to element    ${Char_P}
    Swipe to element    ${lblPointsAndPrivileges}
    Click Mobile Element    ${lblPointsAndPrivileges}
    Verify PointsAndPrivileges Page From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_39_2] Verify Result Menu When Search Keyword R
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "R"
    ...    7. ตรวจสอบเมนูตัวอักษร "R" [1]
    ...    8. Capture screen
    ...    [1] - Register
    ...    - Register AIS Fibre/Coverage Checking
    ...    - Request/Change WiFi Password
    ...    - Roaming Service Rates
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    R
    Verify Result When Search Keyword R
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_40_2] Verify Create my AIS Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "R"
    ...    7. คลิ๊กเมนู Register
    ...    8. ตรวจสอบหน้า Register [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Register \ \ \ \ *แก้ไขตามแอพ เป็น Create my AIS
    ...    - Create my AIS (Button)
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    R
    Select Quick Menu    CreateMyAIS
    Verify Create my AIS Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_41_2] Verify Register AIS Fibre And Coverage Checking Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "R"
    ...    7. คลิ๊กเมนู Register AIS Fibre/Coverage Checking
    ...    8. ตรวจสอบหน้า Register AIS Fibre/Coverage Checking [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Register AIS Fibre/Coverage Checking
    [Tags]    TH    success    active    bug
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    R
    Select Quick Menu    RegisterAISFibreAndCoverageChecking
    Verify Register AIS Fibre And Coverage Checking page For Postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_42_2] Verify Request And Change WiFi Password Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "R"
    ...    7. คลิ๊กเมนู Request/Change WiFi Password
    ...    8. ตรวจสอบหน้า Request/Change WiFi Password [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Request/Change WiFi Password
    [Tags]    TH    success    active    bug
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    R
    Select Quick Menu    RequestAndChangeWiFiPassword
    Verify Request And Change WiFi Password Page
    Confirm Dailog Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_43_2] Verify Roaming Service Rates Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "R"
    ...    7. คลิ๊กเมนู Roaming Service Rates
    ...    8. ตรวจสอบหน้า Roaming Service Rates [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Roaming Service Rates
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - Choose your country
    ...    - Choose customer type
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    R
    Select Quick Menu    RoamingServiceRates
    Verify Roaming Service Rates Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_44_2] Verify Result Menu When Search Keyword S
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "S"
    ...    7. ตรวจสอบเมนูตัวอักษร "S" [1]
    ...    8. Capture screen
    ...
    ...    [1]
    ...    - Service - Setting
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    S
    Verify S
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_45_2] Verify Service Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "S"
    ...    7. คลิ๊กเมนู Service
    ...    8. ตรวจสอบหน้า Service [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Service
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    S
    Select Quick Menu    Service
    Verify Service Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_46_2] Verify Setting Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "S"
    ...    7. คลิ๊กเมนู Setting
    ...    8. ตรวจสอบหน้า Setting [1]
    ...    9. Capture screen
    ...    [1] verify
    ...    - Setting
    ...    - Language
    ...    - Notification
    ...    - Passcode Lock
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    S
    Select Quick Menu    Setting
    Verify ตั้งค่า
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_47_2] Verify Result Menu When Search Keyword T
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "T"
    ...    7. ตรวจสอบเมนูตัวอักษร "T" [1]
    ...    8. Capture screen
    ...
    ...    [1] - Top Up
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    T
    Verify Result When Search Keyword T
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_48_2] Verify TopUp Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "T"
    ...    7. คลิ๊กเมนู Top Up
    ...    8. ตรวจสอบหน้า Top Up [1]
    ...    9. Capture screen[1] verify - Top Up - หมายเลขโทรศัพท์
    ...    10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - Enter destination number you wish to top up
    ...    - Please select top up channels
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    T
    Select Quick Menu    TopUp
    Verify TopUp Page From QuickMenu    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_49_2] Verify Result Menu When Search Keyword U
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "U"
    ...    7. ตรวจสอบเมนูตัวอักษร "U" [1]
    ...    8. Capture screen
    ...
    ...    [1]
    ...    - Usage Detail History
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    U
    Verify Result When Search Keyword U
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_50_2] Verify Usage Detail History Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "U"
    ...    7. คลิ๊กเมนู Usage Detail History
    ...    8. ตรวจสอบหน้า Usage Detail History [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Usage Detail History
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    T
    Select Quick Menu    UsageDetailHistory
    Verify Usage Detail Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_51_2] Verify Result Menu When Search Keyword Y
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "Y"
    ...    7. ตรวจสอบเมนูตัวอักษร "Y" [1]
    ...    8. Capture screen
    ...
    ...    [1]
    ...    - Your Balance
    ...    - Your Credit/Debit Card
    ...    - Your Current Charge(Unbilled)
    ...    - Your Current Package
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    Y
    Verify Result When Search Keyword Y
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_52_2] Verify Your Balance Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "Y"
    ...    7. คลิ๊กเมนู สมัคร Your Balance
    ...    8. ตรวจสอบหน้า Your Balance [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Your balance
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    Y
    Select Quick Menu    YourBalance
    Verify Your Balance Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_53_2] Verify Your Credit and Debit Card Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "Y"
    ...    7. คลิ๊กเมนู สมัคร Your Credit/Debit Card
    ...    8. ตรวจสอบหน้า Your Credit/Debit Card [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Your Credit/Debit Card
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - Your Credit/Debit card detail
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    Y
    Select Quick Menu    YourCreditandDebit
    Verify Your Credit And Debit Card Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_54_2] Verify Your Current Charge Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "Y"
    ...    7. คลิ๊กเมนู สมัคร Your Current Charge(Unbilled)
    ...    8. ตรวจสอบหน้า Your Current Charge(Unbilled) [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Your current charge(Unbilled)
    [Tags]    TH    success    active    bug
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    Y
    Select Quick Menu    YourCurrentCharge
    Verify Your Current Charge (Unbilled) Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_55_2] Verify Your Current Package Page From QuickMenu
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP 3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. เลื่อนมาที่ตัวอักษร "Y"
    ...    7. คลิ๊กเมนู สมัคร Your Current Package
    ...    8. ตรวจสอบหน้า Your Current Package [1]
    ...    9. Capture screen
    ...
    ...    [1] verify
    ...    - Your Current Package
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - Price Plan - ปุ่ม Change Price Plan
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    Y
    Select Quick Menu    YourCurrentPackage
    Verify Your Current Package Page Postpaid    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_56_2] Verify Result Menu When Search Keyword SMS Cancellation And Inquiries
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. ค้นหาด้วยตัวคำว่า "SMS Cancellation/Inquiries"
    ...    7. ตรวจสอบเมนู "SMS Cancellation/Inquiries" [1]
    ...    8. Capture screen
    ...
    ...    [1]
    ...    - All Menu
    ...    - หน้าว่าง ไม่มีข้อความขึ้น
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    SMS Cancellation/Inquiries
    Verify QuickMenu Search Not Found
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_QuickMenu_IOS_2_2_Y_57_2] Verify Result Menu When Search Keyword Special campaign & Privileges
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PO
    ...    Status : Active
    ...    TestStep
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "OK"
    ...    4. คลิกไอคอน Quick Menu
    ...    5. คลิกไอคอน "Search"
    ...    6. ค้นหาด้วยตัวคำว่า "Special campaign & Privileges"
    ...    7. ตรวจสอบเมนู "Special campaign & Privileges" [1]
    ...    8. Capture screen
    ...    [1]
    ...    - All Menu
    ...    - หน้าว่าง ไม่มีข้อความขึ้น
    [Tags]    TH    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    Input Search Keyword    Special campaign & Privileges
    Verify QuickMenu Search Not Found
    Back From QuickMenu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F0_0_0_Y_0_Test] Smoke test
    [Tags]    smoke    TH    EN
    log    test smoke

Test
    [Tags]
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Open Quick Menu List
    Select Sub Menu from QuickMenu    Search
    # Swipe to element    xpath=//*[@name="I"]
    Wait Mobile Until Element Visible    //*[@name="A"]
    # Swipe To Element iOS   //*[@name="I"]
    Swipe Element From Location    //XCUIElementTypeApplication[@name="my AIS"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[3]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeOther[7]/XCUIElementTypeOther    info=verify    area=0.3
    Mobile Capture Screen At Verify Point    test
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
