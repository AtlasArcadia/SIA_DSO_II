*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/ValidityTransfer.txt

*** Test Cases ***
[F2_Service_IOS_1_2_Y_1_2] Verify Validity Transfer page
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1_2_Y_2_2] Validity Transfer Case : Transfer to Prepaid Number (3PE)
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1_2_Y_3_2] Validity Transfer Case : Transfer to Prepaid Number (3BE)
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1_2_N_4_2] Validity Transfer Case : Transfer to Postpaid Number
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1_2_N_5_2] Validity Transfer Case : Transfer to other network
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1_2_N_6_2] Validity Transfer Case : Transfer to Self Number
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1_2_N_7_2] Validity Transfer Case : Not input destination number
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1_2_N_8_2] Validity Transfer Case : Input destination number wrong format (eg. 6666666666)
    [Documentation]    *Owner* :
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1,3_1-2_Y_9_2] Validity Transfer Case : Input destination number wrong digit (eg. 093701)
    [Documentation]    *Owner* : Lek
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Register Date >= 90 วัน
    ...
    ...    *Test Step*
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนวัน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนวันที่ต้องการโอน (5 วัน)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "กรุณากรอกเลขหมายผู้รับโอน ให้ถูกต้อง"
    ...    8. Capture screen
    ...    9. เลือก"ตกลง"
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    ValidityTransfer
    Input Destination Number    ${DestinationNumberWrongdigit}    #WrongDigitNumber
    Select Amount Of Day
    Click OK Button
    Verify Please Input Correct Destination Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1,3_1-2_Y_10_2] Validity Transfer Case : Not select amount
    [Documentation]    *Owner* : Lek
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Register Date >= 90 วัน
    ...
    ...    *Test Step*
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนวัน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. ไม่กรอกจำนวนเงินที่ต้องการโอน
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "กรุณาเลือกจำนวนที่ต้องการ"
    ...    8. Capture screen
    ...    9. เลือก"ตกลง"
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    ValidityTransfer
    Set Destination Number
    Click OK Button
    Verify Not Select Amount
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1,3_1-2_Y_11_2] Validity TransferCase : Insufficient Balance
    [Documentation]    *Owner* :
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Register Date >= 90 วัน
    ...    Insufficient balance
    ...
    ...    *Test Step*
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนวัน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนวันที่ต้องการโอน (5 วัน)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนวันจำนวน 5 วันให้หมายเลข 09xxxxxxxx"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "ยอดเงินคงเหลือของคุณไม่พอสำหรับโอนค่าโทร กรุณาเติมเงินและทำรายการใหม่อีกครั้ง"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_InsufficientBalance
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    ValidityTransfer
    Set Destination Number
    Select Amount Of Day
    Click OK Button
    Verify Making Transfer To Destination Number iOS
    Click Confirm Button
    Verify Insufficient Balance
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1,3_1-2_N_12_2] Validity TransferCase : Insufficient Validity
    [Documentation]    *Owner* :
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Register Date >= 90 วัน
    ...    Insufficient Validity
    ...
    ...    *Test Step*
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนวัน"
    ...    4. ตรวจสอบ "โอนวัน" page
    ...      - หมายเลขโทรศัพท์
    ...      - โอนวันให้เพื่อนๆ ในระบบ AIS One-2-Call! ได้ง่ายๆที่นี่ (Text)
    ...      - 1.กรอกหมายเลขโทรศัพท์ปลายทางที่ต้องการโอนเงินให้
    ...      - 2.Transfer amount/วัน
    ...      - จำนวนวันคงเหลือไม่เพียงพอ (Dropdown list)
    ...      - ปุ่ม "ตกลง"
    ...      - เงื่อนไขบริการ
    ...    5. Capture screen
    [Tags]    TH    EN    active    fail    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_InsufficientValidity
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    ValidityTransfer
    Verify Transfer Insufficient Validity    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1,3_1-2_N_13_2] Validity Transfer Case : Destination number has max Validity
    [Documentation]    *Owner* :
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    หมายเลขปลายทาง : 3PE
    ...    Status : Active
    ...    Register Date >= 90 วัน
    ...    หมายเลขปลายทาง has max Validity
    ...
    ...    *Test Step*
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนวัน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนวันที่ต้องการโอน (5 วัน)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนวันจำนวน 5 วันให้หมายเลข 09xxxxxxxx"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "ขออภัย ระบบไม่สามารถให้บริการได้ในขณะนี้ กรุณาเข้าใช้บริการใหม่ภายหลัง"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    TH    EN    active    fail    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    ValidityTransfer
    Input Max Validity Number
    Select Amount Of Day
    Click OK Button
    Verify Making Transfer To Destination Number iOS
    Click Confirm Button
    Verify Service Unavailable
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1,3_1-2_N_14_2] Validity Transfer Case : Source Number Status = suspend
    [Documentation]    *Owner* :
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    หมายเลขปลายทาง : 3PE
    ...    Status : suspend (Source)
    ...    Register Date >= 90 วัน
    ...
    ...    *Test Step*
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนวัน"
    ...    4. ตรวจสอบ dialog message "ไม่สามารถเช็กยอดเงินคงเหลือได้ในขณะนี้ กรุณาใช้บริการใหม่ภายหลัง"
    ...    5. Capture screen
    [Tags]    TH    EN    active    fail    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Suspend
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    ValidityTransfer
    Verify Balance Checking Unavailable
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1,3_1-2_N_15_2] Validity Transfer Case : Destination Number Status = suspend
    [Documentation]    *Owner* :
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    หมายเลขปลายทาง : 3PE
    ...    Status : suspend (Dest)
    ...    Register Date >= 90 วัน
    ...
    ...    *Test Step*
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนวัน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนวันที่ต้องการโอน (5 วัน)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนวันจำนวน 5 วันให้หมายเลข 09xxxxxxxx"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "ไม่สามารถใช้บริการนี้ได้ในขณะนี้"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    TH    EN    active    fail    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    ValidityTransfer
    Input Suspend Number
    Select Amount Of Day
    Click OK Button
    Verify Making Transfer To Destination Number iOS
    Click Confirm Button
    Verify This Service Unavailable
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1,3_1-2_N_16_2] Validity Transfer Case : Source Number = Black List
    [Documentation]    *Owner* :
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    หมายเลขปลายทาง : 3PE
    ...    Register Date >= 90 วัน
    ...    COS (Source) = Black List
    ...
    ...    *Test Step*
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนวัน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนวันที่ต้องการโอน (5 วัน)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนวันจำนวน 5 วันให้หมายเลข 09xxxxxxxx"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "หมายเลขของคุณไม่สามารถใช้บริการโอนเงิน/โอนวันได้"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    TH    EN    active    fail    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_BlackList
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    ValidityTransfer
    Set Destination Number
    Select Amount Of Day
    Click OK Button
    Verify Making Transfer To Destination Number iOS
    Click Confirm Button
    Verify Mobile Number Not Eligible
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1,3_1-2_N_17_2] Validity Transfer Case : Dest Number = Black List
    [Documentation]    *Owner* :
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    หมายเลขปลายทาง : 3PE
    ...    Register Date >= 90 วัน
    ...    COS (Dest) = Black List
    ...
    ...    *Test Step*
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนวัน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนวันที่ต้องการโอน (5 วัน)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนวันจำนวน 5 วันให้หมายเลข 09xxxxxxxx"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "หมายเลขปลายทางไม่สามารถใช้บริการโอนเงิน/โอนวันได้"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    TH    EN    active    fail    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    ValidityTransfer
    Input Blacklist Number
    Select Amount Of Day
    Click OK Button
    Verify Making Transfer To Destination Number iOS
    Click Confirm Button
    Verify Destination Number Not Eligible
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Service_IOS_1,3_1-2_N_18_2] Validity Transfer Case : Source Number register date < 30 Days
    [Documentation]    *Owner* :
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Register Date < 30 วัน
    ...
    ...    *Test Step*
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนวัน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนวันที่ต้องการโอน (5 วัน)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนวันจำนวน 5 วันให้หมายเลข 09xxxxxxxx"
    ...    8. เลือกปุ่ม "ยืนยัน"บริการโอนเงิน/โอนวัน ขอสงวนสิทธิ์เฉพาะลูกค้าที่มีอายุการใช้งานตั้งแต่ 90 วันขึ้นไป และ 30 วันขึ้นไปสำหรับบริการโอนวัน"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    TH    EN    active    fail    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Registerleesthan30day
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    ValidityTransfer
    Set Destination Number
    Select Amount Of Day
    Click OK Button
    Verify Making Transfer To Destination Number iOS
    Click Confirm Button
    Verify Service Reserve For AIS Prepaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
