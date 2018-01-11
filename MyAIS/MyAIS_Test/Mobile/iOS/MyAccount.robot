*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/MyAccount.txt

*** Test Cases ***
[F1_MyAccount_IOS_1,3_1-2_Y_1_2] เมนู แฮมเบอร์เกอร์แสดงเมนูย่อย
    [Documentation]    *Owner : Asma
    ...    Ntype :    3PE    3PO    3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ my AIS
    ...    2. คลิก เมนู แฮมเบอร์เกอร์
    ...    3. ตรวจสอบ เมนูย่อย
    ...    - สมัครmy AIS
    ...    - ข้อมูลของคุณ
    ...    - ข้อมูลบัตรเครดิต/เดบิต
    ...    - AIS Online Store
    ...    - AIS Website
    ...    - AIS Facebook
    ...    - AIS Twitter
    ...    - AIS Line
    ...    - ตั้งค่า
    ...    - ออกจากระบบ
    ...    4.จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Verify Sub Menu in Hamberger    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_MyAccount_IOS_1,3_1-2_Y_2_2] Go To Create my AIS Verify Page สมัครmy AIS
    [Documentation]    *Owner : Asma
    ...    Ntype :    3PE    3PO    3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ my AIS
    ...    2. คลิก เมนู แฮมเบอร์เกอร์
    ...    3. เลือก สมัครmy AIS
    ...    3. ตรวจสอบหน้า สมัครmy AIS
    ...    - สมัครmy AIS
    ...    - ครบทุกบริการออนไลน์ ที่ให้คุณจัดการทุกหมายเลขภายในบัญชีของคุณ เพียงล็อกอินเดียว
    ...    - สมัคร my AIS ได้ง่ายๆ
    ...    - 1. สมัครด้วยหมายเลขโทรศัพท์หรืออินเทอร์เน็ต
    ...    - 2. เพิ่มหมายเลขสมาชิกภายในบัญชี
    ...    - 3. ยืนยันและเริ่มใช้งานได้ทันที
    ...    - ปุ่ม "สมัคร my AIS"
    ...    4.จับภาพหน้าจอ
    [Tags]    TH    active    success    3PE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Create MyAIS
    Verify Create my AIS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_MyAccount_IOS_1,3_1-2_Y_3_2] Go To ข้อมูลของคุณ Verify Page ข้อมูลของคุณ
    [Documentation]    *Owner : Asma
    ...    Ntype :    3PE    3PO    3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ my AIS
    ...    2. คลิก เมนู แฮมเบอร์เกอร์
    ...    3. คลิก ข้อมูลของคุณ
    ...    4. ตรวจสอบหน้า ข้อมูลของคุณ
    ...    - ข้อมูลของคุณ
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    active    success    3PE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    MyProfile
    Verify My Profile    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_MyAccount_IOS_1,3_1-2_Y_4_2] Go To AIS Online Store Verify Page AIS Online Store
    [Documentation]    *Owner : Asma
    ...    Ntype :    3PE    3PO    3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ my AIS
    ...    2. คลิก เมนู แฮมเบอร์เกอร์
    ...    3. คลิก AIS Online Store
    ...    4. ตรวจสอบหน้า AIS Online Store
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    active    success    3PE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    AISOnlineStore
    Verify AIS Online Store
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_MyAccount_IOS_1,3_1-2_Y_5_2] Go To AIS WebsiteVerify Page AIS Website
    [Documentation]    *Owner : Asma
    ...    Ntype :    3PE    3PO    3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ my AIS
    ...    2. คลิก เมนู แฮมเบอร์เกอร์
    ...    3. Click AIS Website
    ...    4. Verify AIS Website Page
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    active    success    3PE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    AISWebsite
    Verify AIS Web Site
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_MyAccount_IOS_1,3_1-2_Y_6_2] Go To AIS Facebook Verify Page AIS Facebook
    [Documentation]    *Owner : Tong,Asma
    ...    Ntype :    3PE    3PO    3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ my AIS
    ...    2. คลิก เมนู แฮมเบอร์เกอร์
    ...    3. คลิก AIS Facebook
    ...    4. ตรวจสอบหน้า AIS Facebook
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    active    success    3PE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    AISFacebook
    Verify Facebook Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_MyAccount_IOS_1,3_1-2_Y_7_2] Go To AIS Twitter Verify Page AIS Twitter
    [Documentation]    *Owner : Tong,Asma
    ...    Ntype :    3PE    3PO    3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ my AIS
    ...    2. คลิก เมนู แฮมเบอร์เกอร์
    ...    3. คลิก AIS Twitter
    ...    4. ตรวจสอบหน้า AIS Twitter
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    active    success    3PE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    AISTwitter
    Verify Twitter Page For iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_MyAccount_IOS_1,3_1-2_Y_8_2] Go To AIS Line Verify Page AIS Line
    [Documentation]    *Owner : Tong,Asma
    ...    Ntype :    3PE    3PO    3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ my AIS
    ...    2. คลิก เมนู แฮมเบอร์เกอร์
    ...    3. คลิก AIS Line
    ...    4. ตรวจสอบหน้า AIS Line
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    active    success    3PE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    AISLine
    Verify Line Page For iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_MyAccount_IOS_1,3_1-2_Y_9_2] Go To Setting Verify Page Setting
    [Documentation]    *Owner : Tong,Asma
    ...    Ntype :    3PE    3PO    3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ my AIS
    ...    2. คลิก เมนู แฮมเบอร์เกอร์
    ...    3. คลิก ตั้งค่า
    ...    4. ตรวจสอบหน้า ตั้งค่า
    ...    - ภาษา
    ...    - แจ้งเตือน
    ...    - การล็อกรหัส
    ...    - เงื่อนไขบริการ
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    active    success    3PE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    Settings
    Verify Setting Page For iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_MyAccount_IOS_1,3_1-2_Y_10_2] Logout Verify Page Login
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ my AIS
    ...    2. คลิก เมนู แฮมเบอร์เกอร์
    ...    3. คลิก ออกจากระบบ
    ...    4. ตรวจสอบหน้า เข้าสู่ระบบ
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    LogOutMyAIS
    Verify Log Out MyAIS For iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F0_0_0_Y_0_Test] Smoke test
    [Tags]    smoke    TH
    log    test smoke

[F2_MyAccount_IOS_1,3_1-2_Y_1_2] Hamburger show sub menu

    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE , 3BE
    ...    Status : Active1. Login my AIS
    ...    2. Click Hamberger menu
    ...    3. Verify sub menu
    ...    - my AIS Account
    ...    - My Profile
    ...    - AIS Online Store
    ...    - AIS Website
    ...    - AIS Facebook
    ...    - AIS Twitter
    ...    - AIS Line
    ...    - Setting
    ...    - Log Out
    ...    4. Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Registered
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Verify Sub Menu in Hamberger in case registered    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_MyAccount_IOS_1,3_1-2_Y_2_2] Verify my AIS account page
    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active1. Login my AIS
    ...    2. Click Hamberger menu
    ...    3. Click my AIS Account
    ...    4. Verify my AIS Account Page
    ...    - my AIS Account
    ...    • Main number
    ...    • Email address
    ...    • Password
    ...    - My List (ver ว่ามีเบอร์มั้ย)
    ...    Manage my AIS Account
    ...    - Add+ (button)
    ...    5. Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Registered
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    MyAccount
    Verify My AIS Account
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_MyAccount_IOS_1,3_1-2_Y_3_2] Verify my profile page

    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active1. Login my AIS
    ...    2. Click Hamberger menu
    ...    3. Click My Profile
    ...    4. Verify My Profile Page
    ...    - Name
    ...    - Mobile number
    ...    - Birthday
    ...    - Segment
    ...    - Service year
    ...    - Message
    ...    5. Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Registered
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    MyProfile
    Verify My Profile    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_MyAccount_IOS_1,3_1-2_Y_4_2] Verify AIS online store page

    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active1. Login my AIS
    ...    2. Click Hamberger menu
    ...    3. Click AIS Online Store
    ...    4. Verify AIS Online Store Page
    ...    5. Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Registered
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    AISOnlineStore
    Verify AIS Online Store
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_MyAccount_IOS_1,3_1-2_Y_5_2] Verify AIS website page

    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active1. Login my AIS
    ...    2. Click Hamberger menu
    ...    3. Click AIS Website
    ...    4. Verify AIS Website Page
    ...    5. Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Registered
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    AISWebsite
    Verify AIS Web Site
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_MyAccount_IOS_1,3_1-2_Y_6_2] Verify AIS Facebook page
    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active1. Login my AIS
    ...    2. Click Hamberger menu
    ...    3. Click AIS Facebook
    ...    4. Verify AIS Facebook Page
    ...    5. Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Registered
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    AISFacebook
    Verify Facebook Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_MyAccount_IOS_1,3_1-2_Y_7_2] Verify AIS Twitter page

    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active1. Login my AIS
    ...    2. Click Hamberger menu
    ...    3. Click AIS Twitter
    ...    4. Verify AIS Twitter Page
    ...    5. Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Registered
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    AISTwitter
    Verify Twitter Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_MyAccount_IOS_1,3_1-2_Y_8_2] Verify AIS Line page
    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active1. Login my AIS
    ...    2. Click Hamberger menu
    ...    3. Click AIS Line
    ...    4. Verify AIS Line Page
    ...    5. Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Registered
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    AISLine
    Verify Line Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_MyAccount_IOS_1,3_1-2_Y_9_2] Verify settings display

    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active1. Login my AIS
    ...    2. Click Hamberger menu
    ...    3. Click Settings
    ...    4. Verify Settings display
    ...    - Language
    ...    - Notification
    ...    - Passcode Lock
    ...    - Terms & Conditions
    ...    5. Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Registered
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    Settings
    Verify Setting Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_MyAccount_IOS_1,3_1-2_Y_10_2] Verify Login display

    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active1. Login my AIS
    ...    2. Click Hamberger menu
    ...    3. Click Log Out
    ...    4. Verify Login display
    ...    5. Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Registered
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    LogOutMyAIS
    Verify Log Out MyAIS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_MyAccount_IOS_1,3_1-2_Y_11_2] Verify page Your Credit/Debit Card in case no credit/debit card

    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active1. Login my AIS
    ...    2. Click Hamberger menu
    ...    3. Click Your Credit/Debit Card
    ...    4. Verify page Your Credit/Debit Card
    ...    - Mobile number
    ...    - Your Credit/Debit Card detail
    ...    - Your requested transaction is not found.
    ...    5. Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_RegisteredNoCredit
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    CreditDebit
    Verify Not Have Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_MyAccount_IOS_1,3_1-2_Y_12_2] Verify page Your Credit/Debit Card in case have credit/debit card
    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active1. Login my AIS
    ...    2. Click Hamberger menu
    ...    3. Click Your Credit/Debit Card
    ...    4. Verify page Your Credit/Debit Card
    ...    - Mobile number
    ...    - Your Credit/Debit Card detail
    ...    - Your credit/debit card information for payment and top up via my AIS.
    ...    - ver ว่ามีบัตร
    ...    - Maximum credit/debit card 3 ed.
    ...    5. Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_RegisteredHaveCredit
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    CreditDebit
    Verify Have Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_MyAccount_IOS_1,3_1-2_Y_1_1] Verify MyAIS Account : not have my List
    [Documentation]    **Owner:Tong**
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. คลิกเมนู "Hamburger"
    ...    3. คลิก "บัญชี my AIS"
    ...    4. ตรวจสอบหน้า "บัญชี my AIS"
    ...    - "บัญชี my AIS" at header
    ...    - "บัญชีของคุณ"
    ...    - "หมายเลขหลัก"
    ...    - "อีเมล"
    ...    - "รหัสผ่าน"
    ...    - ปุ่ม "เพิ่ม+"
    ...    5. จับภาพหน้าจอ
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_MyAccount=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_MyAccount
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    MyAccount
    Verify MyAccount Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_MyAccount_IOS_1,3_1-2_Y_2_1] VeriFy Add Member : not have my List
    [Documentation]    **Owner**
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. คลิกเมนู "Hamburger"
    ...    3. คลิก "บัญชี my AIS"
    ...    4. กดปุ่ม  "เพิ่ม+"  หมายเลขในบัญชี my AIS ของคุณ
    ...    5.แสดงหมายเลข AIS Member ที่อยู่ภายใต้ ID เดียวกัน
    ...     - เอไอเอส รายเดือน
    ...     - เอไอเอส วัน-ทู-คอล!
    ...     - เอไอเอสไฟเบอร์
    ...    6.กดปุ่ม รับรหัส OTP  "จากเบอร์ที่ต้องการ Add "
    ...    7.กรอก OTP ที่ได้รับและตกลง (เมื่อตรวจสอบจะพบเครื่องหมายติ๊กถูกข้างหน้าเบอร์ที่แอด Member"
    ...    8.กดปุ่ม  "ตกลง"
    ...    **แสดงเบอร์ที่อยู่ใน my AIS ของคุณ
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_MyAccount=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_MyAccount
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    MyAccount
    Verify Manage MyAIS Account
    Request And Input OTP
    Verify MyList
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_MyAccount_IOS_1,3_1-2_Y_3_1] Verify MyAIS Account : have my List
    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. คลิกเมนู "Hamburger"
    ...    3. คลิก "บัญชี my AIS"
    ...    4. ตรวจสอบหน้า "บัญชี my AIS"
    ...    - "บัญชี my AIS" at header
    ...    - "บัญชีของคุณ"
    ...    - "หมายเลขหลัก"
    ...        ...    - "อีเมล"
    ...    - "รหัสผ่าน"
    ...    - "หมายเลขในบัญชี my AIS ของคุณ" at header
    ...    - "เบอร์โทรศัพท์"
    ...    - "จัดการหมายเลขในบัญชี my AIS ของคุณ"
    ...    - ปุ่ม "เพิ่ม+"
    ...    5. จับภาพหน้าจอ
    [Tags]    active    success    regression    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_MyAccount=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_MyAccount
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamburger
    Select Sub Menu Hamburger    MyAccount
    Verify MyAccount Page have My List
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

