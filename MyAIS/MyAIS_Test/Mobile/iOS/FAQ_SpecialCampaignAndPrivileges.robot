*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/FAQ_SpecialCampaignAndPrivileges.txt

*** Test Cases ***
[F2_Help_IOS_1,3_1-2_Y_56_2] Go to Special campaign & Privileges
    [Documentation]    ***Owner : Asma***
    ...
    ...    Test Step
    ...    ===EN===
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "Special campaign & Privileges"
    ...    4.Verify FAQ "Special campaign & Privileges" Page
    ...    "Special campaign & Privileges" (Text)
    ...    - Serenade privileges
    ...    - Serenade Card & Strickernone
    ...
    ...    ===TH===
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.ตรวจสอบเมนู "ช่วยเหลือ"
    ...    - ผู้ช่วย
    ...    • ถาม อุ่นใจ
    ...    - ถามตอบ
    ...    • แพ็กเกจหลัก/แพ็กเกจเสริม
    ...    • อินเทอร์เน็ต/ไฟเบอร์
    ...    • ตรวจสอบใบแจ้งและยอดเงิน
    ...    • การใช้งานต่างประเทศ
    ...    • การยกเลิก SMS โฆษณา
    ...    • แคมเปญและสิทธิพิเศษ
    ...    - วิธีใช้งาน application
    ...    • วิธีใช้งาน
    ...    4.เลือก เมนู "แคมเปญและสิทธิพิเศษ"
    ...    5.ตรวจสอบหน้าถามตอบ "แคมเปญและสิทธิพิเศษ"
    ...    "แคมเปญและสิทธิพิเศษ" (Text)
    ...    - สิทธิพิเศษในการเป็นเซเรเนด
    ...    - บัตรเซเรเนดและสติ๊กเกอร์จอดรถnone
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    HelpAndSupport
    Verify Help and Support
    Select Sub Menu SpecialCampaignAndPrivileges
    Verify Special Campaign And Privileges
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_57_2] Go to Special campaign & Privileges - Serenade privileges Verify First question
    [Documentation]    ***Owner : Asma***
    ...
    ...    Test Step
    ...    ===EN===
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "Special campaign & Privileges"
    ...    4.Verify FAQ "Special campaign & Privileges" Page
    ...    "Special campaign & Privileges" (Text)
    ...    - Serenade privileges
    ...    - Serenade Card & Stricker
    ...    5.Click "Serenade privileges"
    ...    6.Verify "FAQ" page
    ...    "Special campaign & Privileges" (Text)
    ...    "Serenade privileges" (Text)
    ...    - First question
    ...    - Second question
    ...    7.Click "First question"
    ...    8.Verify "Answer" Page
    ...    "Special campaign & Privileges" (Text)
    ...    "Serenade privileges" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    ...
    ...    ===TH===
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "แคมเปญและสิทธิพิเศษ"
    ...    4.ตรวจสอบหน้าถามตอบ "แคมเปญและสิทธิพิเศษ"
    ...    "แคมเปญและสิทธิพิเศษ" (Text)
    ...    - สิทธิพิเศษในการเป็นเซเรเนด
    ...    - บัตรเซเรเนดและสติ๊กเกอร์จอดรถ
    ...    5.เลือก "สิทธิพิเศษในการเป็นเซเรเนด"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...    "สิทธิพิเศษลูกค้าเซเรเนด" (Text)
    ...    "สิทธิพิเศษลูกค้าเซเรเนด" (Text)
    ...    - คำถามข้อที่1
    ...    - คำถามข้อที่2
    ...    7.เลือก " คำถามข้อที่ 1 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...    "สิทธิพิเศษลูกค้าเซเรเนด" (Text)
    ...    "สิทธิพิเศษลูกค้าเซเรเนด" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    HelpAndSupport
    Select Sub Menu SpecialCampaignAndPrivileges
    # Verify Special Campaign And Privileges
    Select Topic    SerenadePrivileges
    # Verify Topic Serenade Privileges
    ${QuestionText}    Select Serenade Privileges Question    1
    Verify Answer Serenade Privileges    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_58_2] Go to Special campaign & Privileges - Serenade privileges Verify Second question
    [Documentation]    ***Owner : Asma***
    ...
    ...    Test Step
    ...    ===EN===
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "Special campaign & Privileges"
    ...    4.Verify FAQ "Special campaign & Privileges" Page
    ...    "Special campaign & Privileges" (Text)
    ...    - Serenade privileges
    ...    - Serenade Card & Stricker
    ...    5.Click "Serenade privileges"
    ...    6.Verify "FAQ" page
    ...    "Special campaign & Privileges" (Text)
    ...    "Serenade privileges" (Text)
    ...    - First question
    ...    - Second question
    ...    7.Click "First question"
    ...    8.Verify "Answer" Page
    ...    "Special campaign & Privileges" (Text)
    ...    "Serenade privileges" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    ...
    ...    ===TH===
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "แคมเปญและสิทธิพิเศษ"
    ...    4.ตรวจสอบหน้าถามตอบ "แคมเปญและสิทธิพิเศษ"
    ...    "แคมเปญและสิทธิพิเศษ" (Text)
    ...    - สิทธิพิเศษในการเป็นเซเรเนด
    ...    - บัตรเซเรเนดและสติ๊กเกอร์จอดรถ
    ...    5.เลือก "สิทธิพิเศษในการเป็นเซเรเนด"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...    "สิทธิพิเศษลูกค้าเซเรเนด" (Text)
    ...    "สิทธิพิเศษลูกค้าเซเรเนด" (Text)
    ...    - คำถามข้อที่1
    ...    - คำถามข้อที่2
    ...    7.เลือก " คำถามข้อที่ 2 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...    "สิทธิพิเศษลูกค้าเซเรเนด" (Text)
    ...    "สิทธิพิเศษลูกค้าเซเรเนด" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    HelpAndSupport
    Select Sub Menu SpecialCampaignAndPrivileges
    # Verify Special Campaign And Privileges
    Select Topic    SerenadePrivileges
    # Verify Topic Serenade Privileges
    ${QuestionText}    Select Serenade Privileges Question    2
    Verify Answer Serenade Privileges    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_59_2] Go to Special campaign & Privileges - Serenade Card & Stricker Verify First question
    [Documentation]    ***Owner : Asma***
    ...
    ...    Test Step
    ...    ===EN===
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "Special campaign & Privileges"
    ...    4.Verify FAQ "Special campaign & Privileges" Page
    ...    "Special campaign & Privileges" (Text)
    ...    - Serenade privileges
    ...    - Serenade Card & Stricker
    ...    5.Click "Serenade Card & Stricker"
    ...    6.Verify "FAQ" page
    ...    "Special campaign & Privileges" (Text)
    ...    "Serenade Card & Stricker" (Text)
    ...    - First question
    ...    - Second question
    ...    7.Click "First question"
    ...    8.Verify "Answer" Page
    ...    "Special campaign & Privileges" (Text)
    ...    "Serenade Card & Stricker" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    ...
    ...    ===TH===
    ...
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "แคมเปญและสิทธิพิเศษ"
    ...    4.ตรวจสอบหน้าถามตอบ "แคมเปญและสิทธิพิเศษ"
    ...    "แคมเปญและสิทธิพิเศษ" (Text)
    ...    - สิทธิพิเศษในการเป็นเซเรเนด
    ...    - บัตรเซเรเนดและสติ๊กเกอร์จอดรถ
    ...    5.เลือก "บัตรเซเรเนดและสติ๊กเกอร์จอดรถ"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...    "สิทธิพิเศษลูกค้าเซเรเนด" (Text)
    ...    "บัตรเซเรเนดและสติ๊กเกอร์จอดรถ" (Text)
    ...    - คำถามข้อที่1
    ...    - คำถามข้อที่2
    ...    7.เลือก " คำถามข้อที่ 1 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...    "สิทธิพิเศษลูกค้าเซเรเนด" (Text)
    ...    "บัตรเซเรเนดและสติ๊กเกอร์จอดรถ" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    HelpAndSupport
    Select Sub Menu SpecialCampaignAndPrivileges
    # Verify Special Campaign And Privileges
    Select Topic    SenadeCardAndSticker
    # Verify Topic Serenade Card And Sticker
    ${QuestionText}    Select Serenade Card And Sticker Question    1
    Verify Answer Serenade Card And Sticker    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_60_2] Go to Special campaign & Privileges - Serenade Card & Stricker Verify Second question
    [Documentation]    ***Owner : Asma***
    ...
    ...    Test Step
    ...    ===EN===
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "Special campaign & Privileges"
    ...    4.Verify FAQ "Special campaign & Privileges" Page
    ...    "Special campaign & Privileges" (Text)
    ...    - Serenade privileges
    ...    - Serenade Card & Stricker
    ...    5.Click "Serenade Card & Stricker"
    ...    6.Verify "FAQ" page
    ...    "Special campaign & Privileges" (Text)
    ...    "Serenade Card & Stricker" (Text)
    ...    - First question
    ...    - Second question Click "Second question"
    ...    7.Verify "Answer" Page
    ...    "Special campaign & Privileges" (Text)
    ...    "Serenade Card & Stricker" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    ...
    ...    ===TH===
    ...
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "แคมเปญและสิทธิพิเศษ"
    ...    4.ตรวจสอบหน้าถามตอบ "แคมเปญและสิทธิพิเศษ"
    ...    "แคมเปญและสิทธิพิเศษ" (Text)
    ...    - สิทธิพิเศษในการเป็นเซเรเนด
    ...    - บัตรเซเรเนดและสติ๊กเกอร์จอดรถ
    ...    5.เลือก "บัตรเซเรเนดและสติ๊กเกอร์จอดรถ"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...    "สิทธิพิเศษลูกค้าเซเรเนด" (Text)
    ...    "บัตรเซเรเนดและสติ๊กเกอร์จอดรถ" (Text)
    ...    - คำถามข้อที่1
    ...    - คำถามข้อที่2
    ...    7.เลือก " คำถามข้อที่ 2 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...    "สิทธิพิเศษลูกค้าเซเรเนด" (Text)
    ...    "บัตรเซเรเนดและสติ๊กเกอร์จอดรถ" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    HelpAndSupport
    Select Sub Menu SpecialCampaignAndPrivileges
    # Verify Special Campaign And Privileges
    Select Topic    SenadeCardAndSticker
    # Verify Topic Serenade Card And Sticker
    ${QuestionText}    Select Serenade Card And Sticker Question    2
    Verify Answer Serenade Card And Sticker    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}