*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/TouchID.txt

*** Test Cases ***
[F1_TouchID_IOS_1-4_1-2_Y_1_2] Verify Passcode Lock Disable
    [Documentation]    **Owner:Tong**
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status :  Active
    ...
    ...    *Pre-Requisite*
    ...    '- ล็อกรหัส : ปิดการใช้งาน
    ...    - ไม่มีการ Add Fingerprint ไว้ในเครื่องแล้ว
    ...
    ...    **Expected Result**
    ...    1.ระบบแสดงที่หน้าจอ "การล็อกรหัส"
    ...    - แสดงสัญลักษณ์ [<]
    ...    - แสดงเมนู "ล็อกรหัส" [ปิด]
    ...
    ...    ***TestStep***
    ...    1. เปิด App my AIS.
    ...    2. Login ผ่าน 3G/4G หรือ กดรับ OTP
    ...    3. เลือกเมนู Hamburger
    ...    4. เลือกเมนู "ตั้งค่า"
    ...    5. เลือก การล็อกรหัส ที่หน้า "ตั้งค่า"
    ...    6. ตรวจสอบหน้าจอ "การล็อกรหัส"
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Verify Passcode Page Setting
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_2_2] Verify TouchID Support Passcode Lock and no add Finger Print
    [Documentation]    **Owner:Tong**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...    '- ล็อกรหัส : เปิดการใช้งาน
    ...    - ไม่มีการ Add Fingerprint ไว้ในเครื่องแล้ว
    ...
    ...    **Expected Result**
    ...    1.ระบบแสดงที่หน้าจอ "การล็อกรหัส"
    ...    - แสดงสัญลักษณ์ [<]
    ...    - แสดงเมนู "ล็อกรหัส" [เปิด]
    ...    - แสดงเมนู "เปลี่ยนรหัส"
    ...
    ...    ***TestStep***
    ...    1. เปิด App my AIS.
    ...    2. ใส่รหัส ถูกต้อง ที่หน้า "ใส่รหัสของคุณ"
    ...    3. เลือกเมนู Hamburger
    ...    4. เลือกเมนู "ตั้งค่า"
    ...    5. เลือก การล็อกรหัส ที่หน้า "ตั้งค่า"
    ...    6. กรอกรหัสที่ตั้งค่าไว้
    ...    7. ตรวจสอบหน้าจอ "การล็อกรหัส"
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login with Passcode
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Verify Passcode Enable
    Disable Passcode
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_3_2] Verify TouchID Support Passcode Lock and add Finger Print (Enable Finger Print)
    [Documentation]    **Owner:Tong**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...    - ล็อกรหัส : เปิดการใช้งาน
    ...    - Finger Print : เปิดการใช้งาน Fingerprint
    ...    - มีการ Add Fingerprint ไว้ในเครื่องแล้ว
    ...
    ...    **Expected Result**
    ...    1.ระบบแสดงที่หน้าจอ "การล็อกรหัส & Touch ID"
    ...    - แสดงสัญลักษณ์ [<]
    ...    - แสดงเมนู "ล็อกรหัส" [เปิด]
    ...    - แสดงเมนู "เปลี่ยนรหัส"
    ...    - แสดงเมนู "Touch ID"  [เปิด]
    ...
    ...    ***TestStep***
    ...    1. เปิด App my AIS.
    ...    2. ใส่รหัส ถูกต้อง ที่หน้า "ใส่รหัสของคุณ"
    ...    3. เลือกเมนู Hamburger
    ...    4. เลือกเมนู "ตั้งค่า"
    ...    5. เลือก การล็อกรหัส ที่หน้า "ตั้งค่า"
    ...    6. สแกนนิ้ว หรือ กรอกรหัสที่ตั้งค่าไว้
    ...    7. ตรวจสอบหน้าจอ "การล็อกรหัส"
    ...
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login with Passcode
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Verify Passcode Enable TouchID
    Logout
    Verify Login Enable Touch ID
    Disable TouchID Login Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_4_2] Verify TouchID Support Passcode Lock and add Finger Print (Disable Finger Print)
    [Documentation]    **Owner:Tong**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...    - ล็อกรหัส : เปิดการใช้งาน
    ...    - Finger Print : ปิดการใช้งาน Fingerprint
    ...    - มีการ Add Fingerprint ไว้ในเครื่องแล้ว
    ...
    ...    **Expected Result**
    ...    1.ระบบแสดงที่หน้าจอ "การล็อกรหัส & Touch ID"
    ...    - แสดงสัญลักษณ์ [<]
    ...    - แสดงเมนู "ล็อกรหัส" [เปิด]
    ...    - แสดงเมนู "เปลี่ยนรหัส"
    ...    - แสดงเมนู "Touch ID" [ปิด]
    ...
    ...    ***TestStep***
    ...    1. เปิด App my AIS.
    ...    2. ใส่รหัส ถูกต้อง ที่หน้า "ใส่รหัสของคุณ"
    ...    3. เลือกเมนู Hamburger
    ...    4. เลือกเมนู "ตั้งค่า"
    ...    5. เลือก การล็อกรหัส ที่หน้า "ตั้งค่า"
    ...    6. กรอกรหัสที่ตั้งค่าไว้
    ...    7. ตรวจสอบหน้าจอ "การล็อกรหัส"
    ...
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login with Passcode
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Verify Passcode Enable TouchID
    Logout
    Login with Passcode
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Verify Passcode Disable TouchID
    Logout
    Verify Login Disable Touch ID
    Disable TouchID Login Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_6_2] Verify TouchID Support Passcode Lock and no add Finger Print (Disable Finger Print)
    [Documentation]    **Owner:Tong**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...    - ล็อกรหัส : เปิดการใช้งาน
    ...    - Finger Print : เปิดการใช้งาน Fingerprint
    ...    - ไม่มีการ Add Fingerprint ไว้ในเครื่องแล้ว
    ...
    ...    **Expected Result**
    ...    แสดง Popup
    ...    -fingerprint เพื่อใช้งาน my AIS
    ...
    ...    ***TestStep***
    ...    1. เปิด App my AIS.
    ...    2. ตรวจสอบ Popup "fingerprint เพื่อใช้งาน my Ais"
    ...
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login with Passcode
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Verify Passcode Enable TouchID
    Logout
    Verify Popup Fingerprint to use MyAIS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_7_2] Verify Settint Passcode Lock First Time
    [Documentation]    **Owner:Tong**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...    - ยังไม่เคยมีการตั้งค่าล็อกรหัส
    ...
    ...    **Expected Result**
    ...    1.แสดง Popup "กำหนดรหัสเรียบร้อย"
    ...
    ...    ***TestStep***
    ...    1.ล็อกอิน "My AIS"
    ...    2.เลือกเมนู "ตั้งค่า"
    ...    3. เลือกเมนู "การล็อกรหัส & Fingerprint"
    ...    4. เปิดการใช้งาน ฟังก์ชั่น "ล็อกรหัส"
    ...    5. ระบุรหัสผ่านที่ต้องการ [ตัวเลข 6 หลัก]
    ...    6. ยืนยันรหัสผ่านอีกครั้ง [ตัวเลข 6 หลัก]
    ...    7. แสดง Popup "กำหนดรหัสเรียบร้อย"
    ...
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Verify Passcode Setting Success
    Disable Passcode
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_8_2] Verify Settint Passcode Lock First Time and Passcode Setting Don't Match
    [Documentation]    **Owner:Tong**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...    - ยังไม่เคยมีการตั้งค่าล็อกรหัส
    ...
    ...    **Expected Result**
    ...    1.แสดงการแจ้งเตือน "รหัสไม่ถูกต้อง กรุณาทำการตั้งรหัสใหม่"
    ...
    ...    ***TestStep***
    ...    1.ล็อกอิน "My AIS"
    ...    2.เลือกเมนู "ตั้งค่า"
    ...    3. เลือกเมนู "การล็อกรหัส & Fingerprint"
    ...    4. เปิดการใช้งาน ฟังก์ชั่น "ล็อกรหัส"
    ...    5. ระบุรหัสผ่านที่ต้องการ [ตัวเลข 6 หลัก]
    ...    6. ยืนยันรหัสผ่านอีกครั้งไม่ตรงกับรหัสผ่านที่ต้องการ
    ...    7. แสดงการแจ้งเตือน "รหัสไม่ถูกต้อง กรุณาทำการตั้งรหัสใหม่"
    ...
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Verify Passcode Setting Don't Match
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_9_2]Cancel setting passcode lock by close passcode
    [Documentation]    **Owner:Asma**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    ...    1.ล็อกอิน "My AIS"
    ...    2.เลือกเมนู "ตั้งค่า"
    ...    3. เลือกเมนู "การล็อกรหัส & Fingerprint"
    ...    4. ใส่รหัสของคุณ
    ...    5. เข้าสู่หน้าเมนู "การล็อกรหัส & Fingerprint"
    ...    6. เลือกปิด ฟังก์ชั่น "ล็อกรหัส"
    ...    7. ตรวจสอบ "ระบบรีเซ็ตรหัสของคุณ กรุณาทำการตั้งรหัสใหม่"
    ...    8. กดปุ่ม "ตกลง"
    ...    9. ตรวจสอบ ปิดฟังก์ชั่น ล็อกรหัส สำเร็จ
    [Tags]    success    active    regression    sanity    3PO    3PE    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login By Passcode
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Input Correct Passcode
    Close PassLock
    Verify Dialog Reset Passcode
    Verify Dont Have Passcode Lock
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_10_2]Disable setting passcode lock by forgot passcode
    [Documentation]    **Owner:Asma**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    ...    Test Step
    ...    1.ล็อกอิน "My AIS"
    ...    2.เลือกเมนู "ตั้งค่า"
    ...    3. เลือกเมนู "การล็อกรหัส & Fingerprint"
    ...    4. กดปุ่ม "ลืมรหัส" ในหน้า "ใส่รหัสของคุณ"
    ...    5. แสดง Popup "คุณต้องการตั้งรหัสใหม่"
    ...    6. กดปุ่ม "ตกลง" เพิ่มทำการยกเลิกการตั้งค่า ล็อกรหัส
    ...    7. Login เข้าใช้งานอัตโนมัติทันที กรณีใช้งาน 3G/4G หรือ อยู่ที่หน้าขอรับ OTP กรณีที่เชื่อมต่อผ่าน WiFi
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login By Passcode
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Forgot Password And Verify
    Verify Manual Login Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_11_2]Change passcode on the screen successfully
    [Documentation]    **Owner:Asma**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    ...    Test Step
    ...    1.เข้าสู่แอพพลิเคชั่น  MyAIS
    ...    2. เลือกเมนู Hamburger
    ...    3. เลือกเมนู "ตั้งค่า"
    ...    4. เลือกเมนู "การล็อกรหัส & Fingerprint"
    ...    5. ใส่ รหัส ถูกต้อง
    ...    6. เลือกเมนู "เปลี่ยนรหัส"
    ...    7.ใส่รหัสเดิม
    ...    8.กำหนดรหัสที่ต้องการเปลี่ยน
    ...    9.ยืนยันรหัสที่ต้องการเปลี่ยน
    ...    10.จับภาพหน้าจอหลังจากเปลี่ยนรหัสแล้ว
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login By Passcode
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Input Correct Passcode
    Change Passcode Successful    ${CorrectPassword}    ${CorrectPassword}    ${CorrectPassword}
    [Teardown]    Keywords For Teardown With Reset Passcode    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_N_12_2]Change passcode by input new passcode with wrong passcode one time
    [Documentation]    **Owner:Asma**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    ...    Test Step
    ...    1.เข้าสู่แอพพลิเคชั่น  MyAIS
    ...    2. เลือกเมนู Hamburger
    ...    3. เลือกเมนู "ตั้งค่า"
    ...    4. เลือกเมนู "การล็อกรหัส & Fingerprint"
    ...    5. ใส่ รหัส ถูกต้อง
    ...    6. เลือกเมนู "เปลี่ยนรหัส"
    ...    7.ใส่รหัสเดิม
    ...    8.กำหนดรหัสที่ต้องการเปลี่ยน
    ...    9.ยืนยันรหัสที่ต้องการเปลียน(ใส่รห้สไม่ตรงกับครั้งแรก)
    ...    10ตรวจสอบหน้า"รหัสไม่ถูกต้องกรุณาทำการตั้งรหัสใหม่"
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login By Passcode
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Input Correct Passcode
    Change Passcode Fail Re Enter New Passcode Wrong    ${CorrectPassword}    ${CorrectPassword}    ${WrongPassword}
    [Teardown]    Keywords For Teardown With Reset Passcode    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_N_13_2]Input wrong old passcode on the screen
    [Documentation]    **Owner:Asma**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    ...    Test Step
    ...    1.เข้าสู่แอพพลิเคชั่น  MyAIS
    ...    2. เลือกเมนู Hamburger
    ...    3. เลือกเมนู "Setting"
    ...    4. เลือกเมนู "การล็อกรหัส & Fingerprint"
    ...    5. ใส่ รหัส ถูกต้อง
    ...    6. เลือกเมนู "เปลี่ยนรหัส"
    ...    7. ใส่ รหัสเดิม ไม่ถูกต้อง (2 ครั้งขึ้นไป)
    ...    8.ตรวจสอบหน้า "ใส่รหัสเดิม"
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login By Passcode
    Select Hamburger
    Select Settings
    Select Passcode Menu
    Input Correct Passcode
    Change Passcode Fail Old Passcode Wrong    ${WrongPassword}    3
    [Teardown]    Keywords For Teardown With Reset Passcode    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_Y_14_2]Verify home page after login by passcode successfully
    [Documentation]    **Owner:Asma**
    ...
    ...    *Source*
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    ...    "1. เปิด App my AIS.
    ...    2. ใส่รหัส ถูกต้อง ที่หน้า ""Enter your passcode""
    ...    3.ตรวจสอบหน้าหลักของ ""my AIS"""
    ...    ระบบจะแสดงหน้าหลัก "my AIS"
    ...     - แสดงเมนู Hamburger
    ...     - เบอร์โทรศัพท์
    ...     - แสดงชื่อผู้ใช้งาน
    [Tags]    success    active    regression    sanity    3PO    3PE
    ...    3BO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login By Passcode
    Login And Verify Login Passcode Success    ${Number}
    [Teardown]    Keywords For Teardown With Reset Passcode    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_N_15_2]Verify login input wrong passcode 1 time
    [Documentation]    **Owner:Asma**
    ...
    ...    *Source*
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    ...    Test Step
    ...    1. เปิด App my AIS.
    ...    2. ใส่รหัส ไม่ถูกต้อง ที่หน้า "ใส่รหัสของคุณ"
    ...    3.ตรวจสอบหน้า "ใส่รหัสของคุณ"
    ...
    ...    *verify point*
    ...    "1.ระบบจะแสดงหน้ากรอกรหัส :
    ...    - แสดงข้อความ ""Enter your passcode""
    ...    - จุดวงกลม 6 จุดโยก
    ...    - ปุ่ม [รีเซ็ต]"
    [Tags]    fail    active    regression    3PO    3PE    3BO
    ...    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login And Verify Login Passcode Fail
    [Teardown]    Keywords For Teardown With Reset Passcode    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_N_16_2]Verify login input passcode wrong 3 times
    [Documentation]    **Owner:Asma**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    ...    1. เปิด App my AIS.
    ...    2. ใส่รหัส ไม่ถูกต้อง 3 ครั้ง ที่หน้า "ใส่รหัสของคุณ"
    ...    3. กดปุ่ม [ตกลง]
    ...    4.ตรวจสอบ Pop-up แจ้ง "คุณใส่รหัสผิดเกินจำนวน ที่กำหนด ระบบจะรีเซ็ตรหัสของคุณ,กรุณาทำการตั้งรหัสใหม่"
    ...    5.ตรวจสอบ "โปรแกรมแสดงหน้าจอ Login"
    [Tags]    fail    active    regression    3PO    3PE    3BO
    ...    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Comment    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}=    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Login Passcode Incorrect 3 Times
    Verify Dialog Reached Maximum Passcode Limit
    Verify Manual Login Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_N_17_2]Reset your passcode in login page
    [Documentation]    **Owner:Asma**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...
    ...    ***TestStep***
    ...    Test Step
    ...    1. เปิด App my AIS.
    ...    2. กดปุ่ม [รีเซ็ต] ที่หน้า "ใส่รหัสของคุณ"
    ...    3.ตรวจสอบ Popup "คุณต้องการตั้งรหัสใหม่?"
    ...    4.กดปุ่ม "ตกลง"
    ...    5.ตรวจสอบ "โปรแกรมแสดงหน้าจอ Login"
    [Tags]    fail    active    regression    3PO    3PE    3BO
    ...    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Comment    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}=    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Press Reset At Login Passcode Page
    Verify Dialog Set Your New Passcode
    Confirm Set New Password
    Verify Manual Login Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TouchID_IOS_1-4_1-2_N_18_2]Press reset and press cancel on dialog for return to login passcode
    [Documentation]    **Owner:Asma**
    ...
    ...    Source Number : 3PE,3BE ,3PO,3BO
    ...    Status : Active
    ...    *Pre-Requisite*
    ...
    ...    **Expected Result**
    ...    1.ระบบจะปิด Pop-up แจ้ง "คุณต้องการตั้งรหัสใหม่?"
    ...    2.ระบบจะแสดงหน้ากรอกรหัส :
    ...    - แสดงข้อความ "Enter your passcode"
    ...    - ปุ่ม [รีเซ็ต]
    ...
    ...    ***TestStep***
    ...    Test Step
    ...    1. เปิด App my AIS.
    ...    2. กดปุ่ม [รีเซ็ต] ที่หน้า "ใส่รหัสของคุณ"
    ...    3. กดปุ่ม [ยกเลิก] ที่ Pop-up แจ้ง "คุณต้องการตั้งรหัสใหม่?"
    ...    4.ตรวจสอบหน้า"ใส่รหัสของคุณ"
    [Tags]    fail    active    regression    3PO    3PE    3BO
    ...    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Comment    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}=    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Setup Active Passcode    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Press Reset At Login Passcode Page
    Cancel Set New Password
    Verify Enter Your Passcode Page
    [Teardown]    Keywords For Teardown With Reset Passcode    ${#dict_device_name}

[F0_0_0_Y_0_Test] Smoke test
    [Tags]    smoke
    log    test smoke