*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/ChangingIVRAndSMSLanguage.txt

*** Test Cases ***
[F6_Service_IOS_1,3_1-2_Y_1_2] Verify page Changing IVR & SMS Language
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active"
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Service"
    ...    3. Click sub menu "Calling Melody"
    ...    4. Verify page "Changing IVR & SMS Language"
    ...     - You can easily change your received SMS message language, IVR language or both as your require. (Text)
    ...     - IVR Language
    ...       - Thai
    ...       - English
    ...     - SMS Language
    ...       - Thai
    ...       - English
    ...     - "Confirm" button
    ...     - "Cancel" button
    ...     - Terms & Conditions
    ...    5. Capture screen
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "เปลี่ยนภาษา IVR & SMS"
    ...    4. ตรวจสอบหน้า "เปลี่ยนภาษา IVR & SMS"
    ...     - คุณสามารถเปลี่ยนภาษาของข้อความ SMS ที่จะได้รับ และเลือกภาษาในการฟังข้อความจากระบบตอบรับอัตโนมัติ (IVR) ให้เป็นภาษาไทย หรือ ภาษาอังกฤษ ตามที่คุณต้องการได้ทันที (Text)
    ...     - ภาษาในการรับฟังข้อความจากระบบตอบรับอัตโนมัติ
    ...       - ภาษาไทย
    ...       - ภาษาอังกฤษ
    ...     - ภาษาของข้อความ SMS ที่จะได้รับ
    ...       - ภาษาไทย
    ...       - ภาษาอังกฤษ
    ...     - ปุ่ม"ตกลง"
    ...     - ปุ่ม"ยกเลิก"
    ...     - เงื่อนไขบริการ
    ...    5. Capture screen
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Service Menu
    Select Changing IVR And SMS Language Submenu
    Verify Changing IVR And SMS Language Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Service_IOS_1,3_1-2_Y_2_2] Changing IVR & SMS Language In case: เปลี่ยนภาษาสำเร็จ(IVR Language: Thai)
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active"
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Service"
    ...    3. Click sub menu "Changing IVR & SMS Language"
    ...    4. Select IVR Language: Thai
    ...    5. Verify popup msg: Your request has been processing. Please wait for a confirmation SMS. Thank you.
    ...    6. Capture screen
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "เปลี่ยนภาษา IVR & SMS"
    ...    4. เลือกเปลี่ยนภาษาในการฟังข้อความจากระบบตอบรับอัตโนมัติ (IVR): ภาษาไทย
    ...    5. กด "ตกลง"
    ...    6. ตรวจสอบ popup msg: ดำเนินการเปลี่ยนภาษา IVR เรียบร้อยแล้ว กรุณารอรับ SMS ยืนยันการทำรายการขอบคุณที่ใช้บริการ
    ...    7. Capture screen
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Service Menu
    Select Changing IVR And SMS Language Submenu
    Select IVR Thai Language
    Click Confirm Change Language
    Verify Dialog Message Change IVR Language Complete
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Service_IOS_1,3_1-2_Y_3_2] Changing IVR & SMS Language In case: เปลี่ยนภาษาสำเร็จ(IVR Language: English)
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active"
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Service"
    ...    3. Click sub menu "Changing IVR & SMS Language"
    ...    4. Select IVR Language: English
    ...    5. Verify popup msg: Your request has been processing. Please wait for a confirmation SMS. Thank you.
    ...    6. Capture screen
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "เปลี่ยนภาษา IVR & SMS"
    ...    4. เลือกเปลี่ยนภาษาในการฟังข้อความจากระบบตอบรับอัตโนมัติ (IVR): ภาษาอังกฤษ
    ...    5. กด "ตกลง"
    ...    6. ตรวจสอบ popup msg: ดำเนินการเปลี่ยนภาษา IVR เรียบร้อยแล้ว กรุณารอรับ SMS ยืนยันการทำรายการขอบคุณที่ใช้บริการ
    ...    7. Capture screen
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Service Menu
    Select Changing IVR And SMS Language Submenu
    Select IVR English Language
    Click Confirm Change Language
    Verify Dialog Message Change IVR Language Complete
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Service_IOS_1,3_1-2_Y_4_2] Changing IVR & SMS Language In case: เปลี่ยนภาษาสำเร็จ(SMS Language: Thai)
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active"
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Service"
    ...    3. Click sub menu "Changing IVR & SMS Language"
    ...    4. Select SMS Language: Thai
    ...    5. Verify popup msg: Your request has been processing. Please wait for a confirmation SMS. Thank you.
    ...    6. Capture screen
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "เปลี่ยนภาษา IVR & SMS"
    ...    4. เลือกเปลี่ยนภาษาของข้อความ SMS ที่จะได้รับ: ภาษาไทย
    ...    5. กด "ตกลง"
    ...    6. ตรวจสอบ popup msg: ดำเนินการเปลี่ยนภาษา SMS เรียบร้อยแล้ว กรุณารอรับ SMS ยืนยันการทำรายการขอบคุณที่ใช้บริการ
    ...    7. Capture screen
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Service Menu
    Select Changing IVR And SMS Language Submenu
    Select SMS Thai Language
    Click Confirm Change Language
    Verify Dialog Message Change SMS Language Complete
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Service_IOS_1,3_1-2_Y_5_2] Changing IVR & SMS Language In case: เปลี่ยนภาษาสำเร็จ(SMS Language: English)
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active"
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Service"
    ...    3. Click sub menu "Changing IVR & SMS Language"
    ...    4. Select SMS Language: English
    ...    5. Verify popup msg: Your request has been processing. Please wait for a confirmation SMS. Thank you.
    ...    6. Capture screen
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "เปลี่ยนภาษา IVR & SMS"
    ...    4. เลือกเปลี่ยนภาษาของข้อความ SMS ที่จะได้รับ: ภาษาอังกฤษ
    ...    5. กด "ตกลง"
    ...    6. ตรวจสอบ popup msg: ดำเนินการเปลี่ยนภาษา SMS เรียบร้อยแล้ว กรุณารอรับ SMS ยืนยันการทำรายการขอบคุณที่ใช้บริการ
    ...    7. Capture screen
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Service Menu
    Select Changing IVR And SMS Language Submenu
    Select SMS English Language
    Click Confirm Change Language
    Verify Dialog Message Change SMS Language Complete
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Service_IOS_1,3_1-2_N_6_2] Changing IVR & SMS Language In case: ไม่เลือกภาษา
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active"
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Service"
    ...    3. Click sub menu "Changing IVR & SMS Language"
    ...    4. No Select Lang
    ...    5. Verify popup msg: Please specify the language you would like to change.
    ...    6. Capture screen
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "เปลี่ยนภาษา IVR & SMS"
    ...    4. ไม่เลือกภาษา
    ...    5. กด "ตกลง"
    ...    6. ตรวจสแบ popup msg: กรุณาระบุภาษาที่คุณต้องการเปลี่ยนแปลง
    ...    7. Capture screen
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Service Menu
    Select Changing IVR And SMS Language Submenu
    Click Confirm Change Language
    Verify Dialog Message No Select Language
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
