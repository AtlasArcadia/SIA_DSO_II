*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/BalanceTransfer.txt

*** Test Cases ***
[F1_Service_IOS_1,3_1-2_Y_1_2] Verify Menu : Service
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. ตรวจสอบ เมนู "บริการ"
    ...       - โอนเงิน
    ...       - โอนวัน
    ...       - สมัคร AIS Fibre/เช็กพื้นที่ให้บริการ
    ...       - ขอรับ/เปลี่ยนรหัส WiFi
    ...       - เพลงรอสาย
    ...       - เปลี่ยนภาษา IVR & SMS
    ...    4. Capture screen
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Verify Service Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_Y_2_2] Verify Balance Transfer page
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. ตรวจสอบหน้า "โอนเงิน"
    ...       - หมายเลขโทรศัพท์
    ...       - โอนเงินให้เพื่อนๆ ในระบบ AIS One-2-Call! ได้ง่ายๆที่นี่ (Text)
    ...       - 1.กรอกหมายเลขโทรศัพท์ปลายทางที่ต้องการโอนเงินให้
    ...       - 2.จำนวนเงินที่ต้องการโอน/บาท
    ...       - ปุ่ม "ตกลง"
    ...       - เงื่อนไขบริการ
    ...    5. Capture screen
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Verify Balance Transfer Page    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_Y_3_2] Balance Transfer Case : Transfer to Prepaid Number (3PE)
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนเงินที่ต้องการโอน (10 บาท)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนเงินจำนวน 10 บาทให้หมายเลข 0932015585"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "ดำเนินการเรียบร้อยแล้ว กรุรารอรับ SMS เพื่อยืนยันการทำรายการ"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${AISNonBosPrepaidDestinationNumber3PE}
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Balance Transfer Success
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_Y_4_2] Balance Transfer Case : Transfer to Prepaid Number (3BE)
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนเงินที่ต้องการโอน (10 บาท)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนเงินจำนวน 10 บาทให้หมายเลข 0932015585"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "ดำเนินการเรียบร้อยแล้ว กรุรารอรับ SMS เพื่อยืนยันการทำรายการ"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    success    3be    3pe
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${AISNonBosPrepaidDestinationNumber3BE}
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Balance Transfer Success
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_5_2] Balance Transfer Case : Transfer to Postpaid Number
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนเงินที่ต้องการโอน (10 บาท)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนเงินจำนวน 10 บาทให้หมายเลข 093xxxxxxx"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "หมายเลขปลายทางที่ต้องการโอนเงิน/โอนวัน ไม่ใช่หมายเลขในระบบ เอไอเอส วัน-ทู-คอล! กรุณาระบุใหม่อีกครั้ง"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${AISPostpaidNumberTest}
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Balance Transfer To Postpaid Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_6_2] Balance Transfer Case : Transfer to other network
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนเงินที่ต้องการโอน (10 บาท)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนเงินจำนวน 10 บาทให้หมายเลข 09xxxxxxxx"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "บริการนี้สำหรับลูกค้าเอไอเอสเท่านั้น กรุณาระบุหมายเลขเอไอเอสใหม่อีกครั้ง"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${DtacNumber}    #Other Network Number
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Balance Transfer To Other Network
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_7_2] Balance Transfer Case : Transfer to Self Number
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนเงินที่ต้องการโอน (10 บาท)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนเงินจำนวน 10 บาทให้หมายเลข 09xxxxxxxx"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "ไม่สามารถโอนเงิน/โอนวัน ให้หมายเลขของคุณได้ กรุณาระบุหมายเลขใหม่"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${Number}    #MyNumber
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Balance Transfer To Self Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_8_2] Balance Transfer Case : Not input destination number
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. ไม่กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนเงินที่ต้องการโอน (10 บาท)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "กรุณากรอกเลขหมายผู้รับโอน ให้ถูกต้อง"
    ...    8. Capture screen
    ...    9. เลือก"ตกลง"
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Select Min Amount
    Click OK Button
    Verify Not Input Destination Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_9_2] Balance Transfer Case : Input destination number wrong format (eg. 6666666666)
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. กรอกหมายเลขปลายทาง wrong format
    ...    5. เลือกจำนวนเงินที่ต้องการโอน (10 บาท)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "กรุณากรอกเลขหมายผู้รับโอน ให้ถูกต้อง"
    ...    8. Capture screen
    ...    9. เลือก"ตกลง"
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${WrongFormatNumber}    #WrongFormat
    Select Min Amount
    Click OK Button
    Verify Input Wrong Format Destination Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_Y_10_2] Balance Transfer Case : Input destination number wrong digit (eg. 093701)
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. Case : กรอกหมายเลขปลายทาง wrong digit
    ...    5. เลือกจำนวนเงินที่ต้องการโอน (10 บาท)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "กรุณากรอกเลขหมายผู้รับโอน ให้ถูกต้อง"
    ...    8. Capture screen
    ...    9. เลือก"ตกลง"
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${WrongDigitNumber}    #WrongFormat
    Select Min Amount
    Click OK Button
    Verify Input Wrong Format Destination Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_Y_11_2] Balance Transfer Case : Not select amount
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. ไม่กรอกจำนวนเงินที่ต้องการโอน
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "กรุณาเลือกจำนวนที่ต้องการ"
    ...    8. Capture screen
    ...    9. เลือก"ตกลง"
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${AISPrepaidNumberTest}
    Click OK Button
    Verify Not Select Amount
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_12_2] Balance Transfer Case : Insufficient balance
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. ตรวจสอบหน้า "โอนเงิน"
    ...       - หมายเลขโทรศัพท์
    ...       - โอนเงินให้เพื่อนๆ ในระบบ AIS One-2-Call! ได้ง่ายๆที่นี่ (Text)
    ...       - 1.กรอกหมายเลขโทรศัพท์ปลายทางที่ต้องการโอนเงินให้
    ...       - 2.จำนวนเงินที่ต้องการโอน/บาท
    ...       - ยอดเงินคงเหลือไม่เพียงพอ (Dropdown list)
    ...       - ปุ่ม "ตกลง"
    ...       - เงื่อนไขบริการ
    ...    5. Capture screen
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_InsufficientBalance=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_InsufficientBalance
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Verify Source Number Insufficient Balance    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_13_2] Balance Transfer Case : Destination number has max balance
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนเงินที่ต้องการโอน (10 บาท)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนเงินจำนวน 10 บาทให้หมายเลข 0932015585"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "ขออภัย ระบบไม่สามารถให้บริการได้ในขณะนี้ กรุณาเข้าใช้บริการใหม่ภายหลัง"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${AISNonBosPrepaidMaxBalance}    #MaxBlance
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Transfer To Max Balance Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_14_2] Balance Transfer Case : Source Number Status = suspend
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. ตรวจสอบ dialog message "ไม่สามารถเช็กยอดเงินคงเหลือได้ในขณะนี้ กรุณาใช้บริการใหม่ภายหลัง"
    ...    5. Capture screen
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_Suspend=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Suspend
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Verify Balance Transfer Source Suspend Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_15_2] Balance Transfer Case : Destination Number Status = suspend
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนเงินที่ต้องการโอน (10 บาท)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนเงินจำนวน 10 บาทให้หมายเลข 09xxxxxxxxx"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "ไม่สามารถใช้บริการนี้ได้ในขณะนี้"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${AISNonBosPrepaidSuspensionNumberTest}    #0925380508
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Balance Transfer To Suspend Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_16_2] Balance Transfer Case : Source Number = Black List
    [Documentation]    *Owner* : Tong
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนเงินที่ต้องการโอน (10 บาท)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนเงินจำนวน 10 บาทให้หมายเลข 0932015585"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "หมายเลขของคุณไม่สามารถใช้บริการโอนเงิน/โอนวันได้"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_Blacklist=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_Blacklist
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${AISNonBosPrepaidNumberTest2}
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Balance Transfer From Blacklist Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_17_2] Balance Transfer Case : Dest Number = Black List
    [Documentation]    *Owner* : Asma
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนเงินที่ต้องการโอน (10 บาท)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนเงินจำนวน 10 บาทให้หมายเลข 0932015585"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "หมายเลขของคุณไม่สามารถใช้บริการโอนเงิน/โอนวันได้"
    ...    10. Capture screen
    [Tags]    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${AISBlacklistNumberTest}
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Balance Transfer To Blacklist Number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_Service_IOS_1,3_1-2_N_18_2] Balance Transfer Case : Source Number register date < 90 Days
    [Documentation]    *Owner* : Asma
    ...    Source Number : 3PE, 3BE
    ...    Status : Active
    ...    Teststep
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "บริการ"
    ...    3. เลือกsub เมนู "โอนเงิน"
    ...    4. กรอกหมายเลขปลายทาง
    ...    5. เลือกจำนวนเงินที่ต้องการโอน (10 บาท)
    ...    6. เลือกปุ่ม "ตกลง"
    ...    7. ตรวจสอบ dialog message "คุณต้องการโอนเงินจำนวน 10 บาทให้หมายเลข 0932015585"
    ...    8. เลือกปุ่ม "ยืนยัน"
    ...    9. ตรวจสอบ dialog message "บริการโอนเงิน/โอนวัน ขอสงวนสิทธิ์เฉพาะลูกค้าที่มีอายุการใช้งานตั้งแต่ 90 วันขึ้นไป และ 30 วันขึ้นไปสำหรับบริการโอนวัน"
    ...    10. Capture screen
    ...    11. เลือก"ตกลง"
    [Tags]    success    3PE    3BE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_RegisterLessThan30Days=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_RegisterLessThan30Days
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Service
    Select Sub Menu    BalanceTransfer
    Set Destination Number    ${AISNonBosPrepaidRegisterDateLessThan30DaysNumberTest}    #${AISBlacklistNumberTest}
    Select Min Amount
    Click OK Button
    Verify And Select Confirm Balance Transfer Dialog Message
    Confirm Balance Transfer
    Verify Balance Transfer From Number Register Date < 90 Days
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
