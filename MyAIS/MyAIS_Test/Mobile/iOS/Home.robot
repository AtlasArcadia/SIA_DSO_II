*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/Home.txt

*** Test Cases ***
[F1_Home_IOS_1-4_1-2_Y_1_2] Verify Page Menu HomeIn Case: Current Package (No Remaining Package)
    [Documentation]    *Owner : Asma
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. ตรวจสอบหน้า "แพ็กเกจปัจจุบัน"
    ...    - "แพ็กเกจปัจจุบัน"
    ...    - "แพ็กเกจปัจจุบันของคุณ"
    ...    - "บริการเสริม"
    ...    - ปุ่ม "เมนูลัด"
    ...    - "รายละเอียด"
    ...    3. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Verify Current Package No Remaining Package
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_2_2] Verify Page Menu HomeIn Case: Current Package (Have Remaining Package)
    [Documentation]    *Owner : Asma
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. ตรวจสอบหน้า "แพ็กเกจคงเหลือ"
    ...    - "แพ็กเกจคงเหลือ" \ (เช็คว่ามีแพ็กเกจมั้ย)
    ...    - ปุ่ม "เมนูลัด"
    ...    - "รายละเอียด"
    ...    3. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Verify Current Package Remaining Package
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_3_2] Verify Page Menu HomeIn Case: AIS Cloud+ storage (No Register)
    [Documentation]    *Owner : Asma
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลื่อนไปทางซ้าย (จนเจอ พื้นที่ใช้งาน AIS Cloud+)
    ...    3. ตรวจสอบหน้า "พื้นที่ใช้งาน AIS Cloud+"
    ...    - "พื้นที่ใช้งาน AIS Cloud+"
    ...    - "Photo"
    ...    - "Videos"
    ...    - "Music"
    ...    - "Files"
    ...    - ปุ่ม "เมนูลัด"
    ...    - "สมัครฟรี"
    ...    4. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_4_2] Verify Page Menu HomeIn Case: AIS Cloud+ storage (Register)
    [Documentation]    *Owner : Asma
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลื่อนไปทางซ้าย (จนเจอ พื้นที่ใช้งาน AIS Cloud+)
    ...    3. ตรวจสอบหน้า "พื้นที่ใช้งาน AIS Cloud+"
    ...    - "พื้นที่ใช้งาน AIS Cloud+"
    ...    - "Photo"
    ...    - "Videos"
    ...    - "Music"
    ...    - "Files"
    ...    - ปุ่ม "เมนูลัด"
    ...    - "ดูข้อมูล"
    ...    4. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success    reject
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_5_2] Verify Page Menu HomeIn Case: Current Roaming Package(No Package)
    [Documentation]    *Owner : Asma
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลื่อนไปทางซ้าย (จนเจอ แพ็กเกจโรมมิ่งปัจจุบัน)
    ...    3. ตรวจสอบหน้า "แพ็กเกจโรมมิ่งปัจจุบัน"
    ...    - "แพ็กเกจโรมมิ่งปัจจุบัน"
    ...    - "คุณยังไม่ได้สมัครแพ็กเกจโรมมิ่ง"
    ...    - "คุณสามารถสมัคร แพ็กเกจโรมมิ่งในราคาสุดคุ้ม เพื่อใช้งานอินเทอร์เน็ต/โทรและส่ง SMS ขณะอยู่ที่ต่างประเทศ"
    ...    - "รายละเอียด"
    ...    - ปุ่ม "เมนูลัด"
    ...    4. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_6_2] Verify Page Menu HomeIn Case: Current Roaming Package(Have Package)
    [Documentation]    *Owner : Asma
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลื่อนไปทางซ้าย (จนเจอ แพ็กเกจโรมมิ่งปัจจุบัน)
    ...    3. ตรวจสอบหน้า "แพ็กเกจโรมมิ่งปัจจุบัน"
    ...    - "แพ็กเกจโรมมิ่งปัจจุบัน" (เช็คว่ามี แพ็กเกจมั้ย)
    ...    - ปุ่ม "เมนูลัด"
    ...    - "รายละเอียด"
    ...    4. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_7_2] Verify Page Menu HomeIn Case: Go to Your Current Package page (From Current Package Home page)
    [Documentation]    *Owner : Asma, Tong
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. คลิก "รายละเอียด" (จากหน้า แพ็กเกจปัจจุบัน)
    ...    3. ตรวจสอบหน้า "แพ็กเกจปัจจุบันของคุณ"
    ...    - Header "แพ็กเกจปัจจุบันของคุณ"
    ...    - เบอร์โทรศัพท์
    ...    - "แพ็กเกจหลัก" at header (Verify ว่ามี Main pack)
    ...    - ปุ่ม "เปลี่ยนแพ็กหลัก"
    ...    - "แพ็กเกจ Internet" at header (Verify ว่ามี On-Top pack)
    ...    - ปุ่ม "สมัครแพ็กเสริม"
    ...    - เงื่อนไขบริการ
    ...    4. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Verify Your Current Package Page From Current Package Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_8_2] Verify Page Menu HomeIn Case: Go to Your Current Package page (From Remaining Package Home page)
    [Documentation]    *Owner : Asma, Tong
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. คลิก "รายละเอียด" (จากหน้า แพ็กเกจคงเหลือ)
    ...    3. ตรวจสอบหน้า "แพ็กเกจปัจจุบันของคุณ"
    ...    - Header "แพ็กเกจปัจจุบันของคุณ"
    ...    - เบอร์โทรศัพท์
    ...    - "แพ็กเกจหลัก" at header (Verify ว่ามี Main pack)
    ...    - ปุ่ม "เปลี่ยนแพ็กหลัก"
    ...    - "บริการเสริม" at header (Verify ว่ามี On-Top pack)
    ...    - ปุ่ม "สมัครแพ็กเสริม"
    ...    - เงื่อนไขบริการ
    ...    4. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_9_2] Verify Page Menu HomeIn Case: Go to AIS Cloud+ storage (No Register) From Home Page
    [Documentation]    *Owner : Asma, Tong
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลื่อนไปทางซ้าย (จนเจอ พื้นที่ใช้งาน AIS Cloud+)
    ...    3. คลิก "พื้นที่ใช้งาน AIS Cloud+"
    ...    4. ตรวจสอบหน้า "สมัครฟรี"
    ...    - Header "พื้นที่ใช้งาน AIS Cloud+"
    ...    - ปุ่ม "TH"
    ...    - ปุ่ม "EN"
    ...    - "Cloud+"
    ...    - "เบอร์โทรศัพท์" auto detect
    ...    - "รหัสผ่าน" text box
    ...    - "อีเมล" text box
    ...    - ปุ่ม "การลงทะเบียน"
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_10_2] Verify Page Menu HomeIn Case: Go to AIS Cloud+ storage (Register) From Home Page
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลื่อนไปทางซ้าย (จนเจอ พื้นที่ใช้งาน AIS Cloud+)
    ...    3. คลิก "พื้นที่ใช้งาน AIS Cloud+"
    ...    4. ตรวจสอบหน้า "สมัครฟรี"
    ...    - Header "พื้นที่ใช้งาน AIS Cloud+"
    ...    - ปุ่ม "TH"
    ...    - ปุ่ม "EN"
    ...    - "Cloud+"
    ...    - "เบอร์โทรศัพท์" auto detect
    ...    - "รหัสผ่าน" text box
    ...    - ปุ่ม "เข้าใช้งาน"
    ...    - "ลืมรหัสผ่าน?"
    ...    - "คุณมีบัญชีหรือยัง? สร้างบัญชี"
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Go to AIS Cloud
    Comment    Verify Register Free
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_11_2] Verify Page Menu HomeIn Case: Go to Apply Roaming Package(No Package) From Home Page
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลื่อนไปทางซ้าย (จนเจอ แพ็กเกจโรมมิ่งปัจจุบัน)
    ...    3. คลิก "รายละเอียด"
    ...    4. ตรวจสอบหน้า "สมัครแพ็กเกจโรมมิ่ง"
    ...    - Header "สมัครแพ็กเกจโรมมิ่ง" \ - "เบอร์โทรศัพท์"
    ...    - "ประเทศที่ต้องการสมัคร"
    ...    - "ระบบของหมายเลขที่ต้องการสมัคร" (auto detect)
    ...    - "ประเภทแพ็กเกจที่ต้องการ"
    ...    - ปุ่ม "ดำเนินการต่อ"
    ...    - เงื่อนไขบริการ
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Go to Roaming
    Swipe Element To Screen    ${lblCardRoaming}
    Click Mobile Element    ${lblMore}
    Verify Apply Roaming Package No Package From Home Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_12_2] Verify Page Menu HomeIn Case: Go to Current Package & Remaining(Have Package) From Home Page
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลื่อนไปทางซ้าย (จนเจอ แพ็กเกจโรมมิ่งปัจจุบัน)
    ...    3. คลิก "รายละเอียด"
    ...    4. ตรวจสอบหน้า "แพ็กเกจปัจจุบัน/ยอดคงเหลือ"
    ...    - Header "แพ็กเกจปัจจุบัน/ยอดคงเหลือ" \ - "เบอร์โทรศัพท์"
    ...    - "รายการแพ็กเกจ"
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Go to Roaming
    Click Mobile Element    ${lblMore}
    Verify Current Package & Remaining Have Package From Home Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_13_2] Verify Page Menu HomeIn Case: Go to Top Up page (From Remaining Balance Home Page)
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE,3BE 3BP,3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. คลิก "ยอดเงินคงเหลือ"
    ...    3. ตรวจสอบหน้า "เติมเงิน"
    ...      - Header "เติมเงิน"
    ...      -หมายเลขโทรศัพท์
    ...      -ระบุหมายเลขโทรศัพท์ที่ต้องการเติมเงิน
    ...         -หมายเลขโทรศัพท์ (Textbox)
    ...      -เลือกช่องทางการเติมเงิน
    ...         - บัตรเครดิต/เดบิต
    ...           - VISA
    ...           - MasterCard
    ...           - JCB
    ...           - AMEX
    ...           - E-Wallet
    ...           - m-pay
    ...         - Refill Card
    ...      -เลือกจำนวนเงินที่ต้องการเติมเงิน
    ...         -10,20,30,40,50,100,200,300,เพิ่มเติม
    ...    "กรุณาตรวจสอบรายการเติมเงินของคุณอีกครั้ง
    ...    แล้วกด ต่อไป เพื่อทำรายการ"
    ...      -ปุ่ม "ต่อไป"
    ...      -เงื่อนไขบริการ
    ...    4.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Remaining Balance
    Verify Top Up page From Remaining Balance Home Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_2,4_1-2_Y_13_2] Verify Page Menu HomeIn Case: Go to Payment page (From Balance Home Page)
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE,3BE 3BP,3PO
    ...    Status : Active
    ...
    ...    Test Step
    ...        1. เข้าสู่ระบบ My AIS
    ...    2. คลิก "ยอดค้างชำระ"
    ...    3. ตรวจสอบหน้า "ยอดค้างชำระ"
    ...      - Header "ชำระค่าบริการ"
    ...      -หมายเลขโทรศัพท์
    ...      -ชำระค่าบริการให้หมายเลขอื่น
    ...      -รายละเอียดค่าใช้บริการ
    ...      -ช่องทางการชำระ
    ...      -ปุ่ม "ต่อไป"
    ...      -ปุ่ม "กลับ"
    ...      -เงื่อนไขบริการ
    ...    4.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Balance
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Balance
    Verify Payment page From Balance Home Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1,3_1-2_Y_14_2] Verify Page Menu HomeIn Case: Go to Top Up page (From Valid Until Home Page)
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE,3BE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. คลิก "ใช้งานได้ถึงวันที่"
    ...    3. ตรวจสอบหน้า "เติมเงิน/ จ่ายบิล"
    ...    - ปุ่ม "Hamburger menu"
    ...    - ปุ่ม "Camera"
    ...    - "AIS Banner"
    ...    - "หน้าหลัก" at header
    ...    - "เติมเงิน/ จ่ายบิล"
    ...    - "เติมเงิน"
    ...    - "ชำระค่าบริการ"
    ...    - ปุ่ม "เมนูลัด"
    ...    4. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Valid Until
    Verify Top Up page From Valid Until Home Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_2,4_1-2_Y_14_2] Verify Page Menu HomeIn Case: Go to Top Up page (From Valid Until Home Page)
    [Documentation]    *Owner : Lek
    ...    Ntype : 3PO 3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. คลิก "ยอดรอบปัจจุบัน"
    ...    3. ตรวจสอบหน้า "ยอดรอบปัจจุบัน"
    ...     - Header "ค่าใช้บริการระหว่างรอบบิล"
    ...     -หมายเลขโทรศัพท์
    ...     -รายละเอียดค่าใช้บริการรอบบิลปัจจุบัน
    ...     -รายละเอียดการใช้งาน
    ...     -หน่วยที่ใช้
    ...     -ค่าบริการ(฿)
    ...     -ค่าใช้บริการภายในประเทศ
    ...     -เงื่อนไขบริการ
    ...     4.จับภาพหน้าจอ
    [Tags]    TH    EN    3PO    3BO    active    success    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveCurrentCharges
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Valid Until
    Verify Your Current Charge Unbilled    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_15_2] Verify Page Menu HomeIn Case: Go to Camera (ครั้งแรก)
    [Documentation]    *Owner : Tong ,Lek
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. คลิก "กล้อง"
    ...    3. คลิก "อณุญาต"
    ...    4. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Camera
    Verify Camera First time
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_16_2] Verify Page Menu HomeIn Case: Go to Camera
    [Documentation]    *Owner : Asma,Tong,Lek
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. คลิก "กล้อง"
    ...    3. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Camera
    Verify Camera
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_17_2] Verify Page Menu HomeIn Case: Go to Hamburger Menu
    [Documentation]    *Owner : Tong,Lek
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. คลิกเมนู "Hamburger"
    ...    3. ตรวจสอบหน้าเมนู "Hamburger"
    ...    - "เบอร์โทรศัทท์"
    ...    - "สมัคร my AIS"
    ...    - "ข้อมูลของคุณ"
    ...    - "ข้อมูลบัตรเครดิต/เดบิต"
    ...    - "AIS Online Store"
    ...    - "AIS Website"
    ...    - "AIS Facebook"
    ...    - "AIS Twitter"
    ...    - "AIS Line"
    ...    - "ตั้งค่า"
    ...    - "ออกจากระบบ"
    ...    4. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Hamberger
    Verify Hamburger Menu    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_18_2] Verify Page Menu Home
    [Documentation]    *Owner : Tong,Lek
    ...    Ntype : 3PE,3BE,3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. ตรวจสอบหน้า "Home"
    ...    - ปุ่ม "Hamburger menu"
    ...    - ปุ่ม "Camera"
    ...    - "AIS Banner"
    ...    - "หน้าหลัก" at header
    ...    - "ชื่อลูกค้า"
    ...    - "เบอร์โทรศัพท์"
    ...    - "หน้าหลัก"
    ...    - "ยอดเงินคงเหลือ"
    ...    - "ใช้งานได้ถึงวันที่"
    ...    - "AIS Point"
    ...    - ปุ่ม "เมนูลัด"
    ...    - "รายละเอียด"
    ...    3. จับภาพหน้าจอ
    ...
    ...    *Owner : Lek
    ...    Ntype : 3PO,3BO
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. ตรวจสอบหน้า "Home"
    ...    - ปุ่ม "Hamburger menu"
    ...    - ปุ่ม "Camera"
    ...    - "AIS Banner"
    ...    - "หน้าหลัก" at header
    ...    - "ชื่อลูกค้า"
    ...    - "เบอร์โทรศัพท์"
    ...    - "หน้าหลัก"
    ...    - "ยอดค้างชำระ"
    ...    - "ยอดรอบปัจจุบัน"
    ...    - "AIS Point"
    ...    - ปุ่ม "เมนูลัด"
    ...    3. จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    3BE    3PO    3BO    active    success    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Verify Home Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Home_IOS_1-4_1-2_Y_19_2] verify page Point&Privilege
    [Documentation]    *Owner : Lek
    ...    Ntype : 3PO,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. คลิก "AIS Point"
    ...    3. ตรวจสอบหน้า "Point&Privilege"
    ...    - "AIS Banner"
    ...    - "หน้าหลัก" at header
    ...    - "ชื่อลูกค้า"
    ...    - "เบอร์โทรศัพท์"
    ...    - "ลูกค้าเอไอเอส"
    ...    - "จำนวนพอยท์"
    ...    - "My Lists"
    ...    - "History"
    ...    - ปุ่ม "เมนูลัด"
    ...    3. จับภาพหน้าจอ
    [Tags]    TH    EN    3PO    3BO    active    success    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select AIS Point
    Verify Point And Privilege    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F0_0_0_Y_0_Test] Smoke test
    [Tags]    smoke    TH    EN
    log    test smoke
