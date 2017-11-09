*** Settings ***
Resource          ../Resource/PageKeywords/QuickMenu_VerifyButton.txt
Resource          ../../../../Config/LocalConfig.txt

*** Test Cases ***
[F1_QuickMenu_1_1-2_Y_1_2] Verify all menu have quick menu
    [Documentation]    Owner : Mac Rukpong , Tong
    ...
    ...    Support NType :3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. เลือกเมนู "หน้าหลัก"
    ...    5. ตรวจสอบมุมขวาล่าง [1]
    ...    6. Capture screen
    ...    7. เลือกเมนู "แพ็กเกจ"
    ...    8. ตรวจสอบมุมขวาล่าง พบปุ่ม เมนูลัด [2]
    ...    9. Capture screen
    ...    10. เลือกเมนู "ข้อมูลการใช้งาน"
    ...    11. ตรวจสอบมุมขวาล่าง พบปุ่ม เมนูลัด [3]
    ...    12. Capture screen
    ...    13. เลือกเมนู "เติมเงิน/จ่ายบิล"
    ...    14. ตรวจสอบมุมขวาล่าง พบปุ่ม เมนูลัด [4]
    ...    15. Capture screen
    ...    16. เลือกเมนู "บริการ"
    ...    17. ตรวจสอบมุมขวาล่าง พบปุ่ม เมนูลัด [5]
    ...    18. Capture screen
    ...    19. เลือกเมนู "พอยท์ & สิทธิพิเศษ"
    ...    20. ตรวจสอบมุมขวาล่าง พบปุ่ม เมนูลัด [6]
    ...    21. Capture screen
    ...    22. เลือกเมนู "ช่วยเหลือ"
    ...    23. ตรวจสอบมุมขวาล่าง พบปุ่ม เมนูลัด [7]
    ...    24. Capture screen[1] พบปุ่ม เมนูลัด "หน้าหลัก"
    ...    ------------------------
    ...    Expected Result
    ...    [2] พบปุ่ม เมนูลัด "แพ็กเกจ"
    ...    [3] พบปุ่ม เมนูลัด "ข้อมูลการใช้งาน"
    ...    [4] พบปุ่ม เมนูลัด "เติมเงิน/จ่ายบิล"
    ...    [5] พบปุ่ม เมนูลัด "บริการ"a
    ...    [6] พบปุ่ม เมนูลัด "พอยท์ & สิทธิพิเศษ"
    ...    [7] พบปุ่ม เมนูลัด "ช่วยเหลือ"
    [Tags]    success    regression    active    test    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu And Verify Quick Menu    Home
    Select Menu And Verify Quick Menu    Package
    Select Menu And Verify Quick Menu    BalanceAndUsageDetail
    Select Menu And Verify Quick Menu    TopupAndPayment
    Select Menu And Verify Quick Menu    Service
    Select Menu And Verify Quick Menu    PointsAndPrivileges
    Select Menu And Verify Quick Menu    HelpAndSupport
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_QuickMenu_1_1-2_Y_2_2] Verify not display quick menu in sub menu home
    [Documentation]    Owner : Mac Rukpong , Tong
    ...
    ...    Support NType :3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. เลือกเมนู "หน้าหลัก"
    ...    5.เลือกเมนู "ยอดเงินคงเหลือ"
    ...    6. ตรวจสอบหน้า เติมเงิน [1]
    ...    7. Capture screen[1]
    ...    ------------------------
    ...    Expected Result
    ...    - เติมเงิน
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - ระบุหมายเลขโทรศัพท์ที่ต้องการเติมเงิน
    ...    - เลือกช่องทางการเติมเงิน
    ...    - เลือกจำนวนเงินที่ต้องการ
    ...    - ไม่พบปุ่ม "เมนูลัด"
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Remaining Balance
    Verify Top up Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_QuickMenu_1_1-2_Y_3_2] Verify not display quick menu in sub menu package
    [Documentation]    Owner : Mac Rukpong , Tong
    ...
    ...    Support NType :3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. เลือกเมนู "แพ็กเกจ"
    ...    5.เลือกเมนู "แพ็กเกจปัจจุบันของคุณ"
    ...    6. ตรวจสอบหน้า แพ็กเกจปัจจุบันของคุณ [1]
    ...    7. Capture screen[1]
    ...    ------------------------
    ...    Expected Result
    ...    - แพ็กเกจปัจจุบันของคุณ
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - แพ็กเกจหลัก
    ...    - ไม่พบปุ่ม "เมนูลัด"
    [Tags]    success    regression    active    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    YourCurrentPackage
    Verify Current Package Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_QuickMenu_1_1-2_Y_4_2] Verify not display quick menu in sub menu usage detail history
    [Documentation]    Owner : Mac Rukpong , Tong
    ...
    ...    Support NType :3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. เลือกเมนู "ข้อมูลการใช้งาน"
    ...    5.เลือกเมนู "การโทร"
    ...    6. ตรวจสอบหน้า รายละเอียดการใช้งาน [1]
    ...    7. Capture screen[1]
    ...    ------------------------
    ...    Expectecd Result
    ...    - รายละเอียดการใช้งาน -> (change: ข้อมูลการใช้งาน)
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - ไม่พบปุ่ม "เมนูลัด"
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Sub Menu    UsageDetailVoiceCall
    Verify Usage Detail Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_QuickMenu_1_1-2_Y_5_2] Verify not display quick menu in sub menu topup and payment
    [Documentation]    Owner : Mac Rukpong , Tong
    ...
    ...    Support NType :3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. เลือกเมนู "เติมเงิน/จ่ายบิล"
    ...    5.เลือกเมนู "ชำระค่าบริการ"
    ...    6. ตรวจสอบหน้า ชำระค่าบริการ [1]
    ...    7. Capture screen[1]
    ...    ------------------------
    ...    Expected Result
    ...    - ชำระค่าบริการ
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - รายละเอียดค่าใช้บริการ
    ...    - ไม่พบปุ่ม "เมนูลัด"
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    Payment
    Verify Payment Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_QuickMenu_1_1-2_Y_6_2] Verify not display quick menu in sub menu service
    [Documentation]    Owner : Mac Rukpong , Tong
    ...
    ...    Support NType :3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. เลือกเมนู "บริการ"
    ...    5.เลือกเมนู "โอนวัน"
    ...    6. ตรวจสอบหน้า โอนวัน [1]
    ...    7. Capture screen[1]
    ...    ------------------------
    ...    Expected Result
    ...    - โอนวัน
    ...    - หมายเลขโทรศัพท์ 10 หลัก (จะต้องเป็นหมายเลขเดียวกันกับที่ใส่หน้า login)
    ...    - กรอกหมายเลขโทรศัพท์ปลายทางที่ต้องการโอนวันให้
    ...    - จำนวนวันที่ต้องการโอน/วัน
    ...    - ไม่พบปุ่ม "เมนูลัด"
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    ValidityTransfer
    Verify Validity Transfer Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_QuickMenu_1_1-2_Y_7_2] Verify not display quick menu in sub menu point/privileges
    [Documentation]    Owner : Mac Rukpong , Tong
    ...
    ...    Support NType :3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. เลือกเมนู "พอยท์ & สิทธิพิเศษ"
    ...    5.คลิก "เพิ่มเติม" หลังพอยท์
    ...    6. ตรวจสอบหน้า พอยท์ [1]
    ...    7. Capture screen[1]
    ...    ------------------------
    ...    Expected Result
    ...    - พอยท์
    ...    - ไม่พบปุ่ม "เมนูลัด"
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    PointsAndPrivileges
    Select Button Recents
    Verify Recents Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_QuickMenu_1_1-2_Y_8_2] Verify not display quick menu in sub menu help and support
    [Documentation]    Owner : Mac Rukpong , Tong
    ...
    ...    Support NType :3PE
    ...    ------------------------
    ...    Test Step
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. เลือกเมนู "ช่วยเหลือ"
    ...    5.เลื่อนมาที่ "ถามตอบ"
    ...    6.เลือกเมนุ ใช้งานต่างประเทศ
    ...    7. ตรวจสอบหน้า การใช้งานในต่างประเทศ [1]
    ...    8. Capture screen[1]
    ...    ------------------------
    ...    Expected Result
    ...    - ถามตอบ
    ...    - การใช้งานในต่างประเทศ
    ...    - ไม่พบปุ่ม "เมนูลัด"
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    HelpAndSupport
    Select Sub Menu    InternationalRoaming
    Verify International Roaming
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_QuickMenu_1_1-2_Y_9_2] Verify menu in quick menu
    [Documentation]    Owner : Mac Rukpong , Tong
    ...
    ...    Support NType :3PE
    ...    ------------------------
    ...    1. เปิดApp myAIS
    ...    2. Login ผ่าน 3G/4G หรือกดรับ OTP
    ...    3. กด "ตกลง"
    ...    4. คลิกไอคอน เมนูลัด
    ...    5. ตรวจสอบ เมนู [1]
    ...    6. Capture screen[1] verify
    ...    ------------------------
    ...    Expected Result
    ...    - ถามอุ่นใจ
    ...    - เติมเงิน
    ...    - สมัครแพ็กเกจเสริมอื่นๆ
    ...    - พอยท์&สิทธิพิเศษ
    ...    - สมัคร AIS Fibre
    ...    - ค้นหา
    ...    - ไอคอน "X"
    [Tags]    success    regression    active    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Quick Menu
    Verify Quick Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
