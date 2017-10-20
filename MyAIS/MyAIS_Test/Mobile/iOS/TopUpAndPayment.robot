*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/TopUpAndPayment.txt

*** Test Cases ***
[F1_TopupPayment_IOS_1_1-2_Y_1_2] Verify menu TopUp and Payment
    [Documentation]    Owner : Tong
    ...
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3. ตรวจสอบ เมนู "เติมเงิน/ จ่ายบิล"
    ...    - "เติมเงิน"
    ...    - "ชำระค่าบริการ"
    ...    4.จับภาพหน้าจอ
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select menuTopUpAndPayment
    Verify page TopUpAndPayment
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_2_2] Verify Top Up page
    [Documentation]    Owner : Tong
    ...
    ...    Pre-Requisite
    ...
    ...    source number :3PE Status Active
    ...
    ...    Test step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.ตรวจสอบ "เติมเงิน"
    ...    -หมายเลขโทรศัพท์
    ...    -ระบุหมายเลขโทรศัพท์ที่ต้องการเติมเงิน
    ...    -หมายเลขโทรศัพท์ (Textbox)
    ...    -เลือกช่องทางการเติมเงิน
    ...    -บัตรเครดิต/เดบิต
    ...    - VISA
    ...    - MasterCard
    ...    - JCB
    ...    - AMEX
    ...    - E-Wallet
    ...    - บัตรเติมเงิน
    ...    -เลือกจำนวนเงินที่ต้องการเติมเงิน
    ...    -10,20,30,40,50,100,200,300,400,500,600,700,800,1000,15000
    ...    "กรุณาตรวจสอบรายการเติมเงินของคุณอีกครั้ง
    ...    แล้วกด ต่อไป เพื่อทำรายการ"
    ...    -ปุ่ม "ต่อไป"
    ...    -เงื่อนไขบริการ
    ...    5.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select menuTopUpAndPayment
    Verify page Top Up    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_3_2] Verify page Top Up summary VISA
    [Documentation]    Owner : Tong
    ...
    ...    Pre-Requisite
    ...
    ...    Source number: 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.เลือกช่องทางการเติมเงิน (VISA)
    ...    5.เลือกจำนวนเงินที่ต้องการเติม
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...    -สรุปรายละเอียด
    ...    - หมายเลข
    ...    - ช่องทาง
    ...    - ประเภทบัตร
    ...    - จำนวนเงิน
    ...    -บัตรเครดิต/บัตรเดบิต
    ...    -เลขที่บัตร (textbox)
    ...    -วันหมดอายุ (ddl:MM) (ddl:YYYY)
    ...    -CVV (textbox)
    ...    -ปุ่ม "ตกลง"
    ...    -ปุ่ม "ยกเลิก"
    ...    8.กดปุ่ม "ตกลง"
    ...    9.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    10.จับภาพหน้าจอ
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select menuTopUpAndPayment
    Go to TopUp by VISA No CreditCard
    Comment    Verify Bank
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_4_2] Verify page Top up summary MasterCard
    [Documentation]    Owner : Tong
    ...
    ...    pre-Requisite
    ...
    ...    Source number : 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.เลือกช่องทางการเติมเงิน (MasterCard)
    ...    5.เลือกจำนวนเงินที่ต้องการเติม
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...    -สรุปรายละเอียด
    ...    - หมายเลข
    ...    - ช่องทาง
    ...    - ประเภทบัตร
    ...    - จำนวนเงิน
    ...    -บัตรเครดิต/บัตรเดบิต
    ...    -เลขที่บัตร (textbox)
    ...    -วันหมดอายุ (ddl:MM) (ddl:YYYY)
    ...    -CVV (textbox)
    ...    -ปุ่ม "ตกลง"
    ...    -ปุ่ม "ยกเลิก"
    ...    8.กดปุ่ม "ตกลง"
    ...    9.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    10.จับภาพหน้าจอ
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Go to TopUP by MasterCard No CreditCard
    Comment    Verify Bank
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_5_2] Verify page Top Up summary JCB
    [Documentation]    Owner : Tong
    ...
    ...    Pre-Requisite
    ...
    ...    source number: 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.เลือกช่องทางการเติมเงิน (JCB)
    ...    5.เลือกจำนวนเงินที่ต้องการเติม
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...    -สรุปรายละเอียด
    ...    - หมายเลข
    ...    - ช่องทาง
    ...    - ประเภทบัตร
    ...    - จำนวนเงิน
    ...    -บัตรเครดิต/บัตรเดบิต
    ...    -เลขที่บัตร (textbox)
    ...    -วันหมดอายุ (ddl:MM) (ddl:YYYY)
    ...    -CVV (textbox)
    ...    -ปุ่ม "ตกลง"
    ...    -ปุ่ม "ยกเลิก"
    ...    8.กดปุ่ม "ตกลง"
    ...    9.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    10.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Go to TopUp by JCB No CreditCard
    Comment    Verify Bank
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_6_2] Verify page top up summary incase: without verified AMEX
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.เลือกช่องทางการเติมเงิน (AMEX)
    ...    5.เลือกจำนวนเงินที่ต้องการเติม
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...      -หมายเลขโทรศัพท์
    ...      -สรุปรายละเอียดการเติมเงิน
    ...         - ช่องทางการเติมเงิน
    ...         - ประเภทบัตร
    ...         - หมายเลขที่ต้องการเติมเงิน
    ...         - จำนวนเงิน
    ...      -ปุ่ม "ตกลง"
    ...      -ปุ่ม "กลับ"
    ...    8.กดปุ่ม "ตกลง"
    ...    9.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    10.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Select top up channels (AMEX)
    ...    5.Select top up amount
    ...    6.Click "Next"
    ...    7.Verify page "Top Up Summary"
    ...      -Mobile no
    ...      -Summary of top up
    ...         - Top up channel
    ...         - Card type
    ...         - Top up to number
    ...         - Amount
    ...      -"OK" button
    ...      -"Back" button
    ...    8.Click "OK"
    ...    9.Verify page "Bank" (verify object in page)
    ...    10.Capture Screen
    [Tags]    active    success    regression    reject
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Go to TopUp by AMEX No CreditCard
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_7_2] Verify top up in case : verified by credit
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.ตรวจสอบ "เติมเงิน"
    ...      -หมายเลขโทรศัพท์
    ...      -ระบุหมายเลขโทรศัพท์ที่ต้องการเติมเงิน
    ...         -หมายเลขโทรศัพท์ (Textbox)
    ...      -เลือกช่องทางการเติมเงิน (Ver ว่ามีบัตรมั้ย)
    ...         -บัตรเครดิต/เดบิต
    ...         -จัดการข้อมูลบัตร
    ...           - VISA (1234 56** **** 1234)
    ...           - MasterCard (1234 56** **** 1234)
    ...           - JCB (1234 56** **** 1234)
    ...           - อื่นๆ
    ...           - E-Wallet
    ...           - บัตรเติมเงิน
    ...      -เลือกจำนวนเงินที่ต้องการเติมเงิน
    ...         -10,20,30,40,50,100,200,300,400,500,600,700,800,1000,15000
    ...    "กรุณาตรวจสอบรายการเติมเงินของคุณอีกครั้ง
    ...    แล้วกด ต่อไป เพื่อทำรายการ"
    ...      -ปุ่ม "ต่อไป"
    ...      -เงื่อนไขบริการ
    ...    5.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Verify menu "Top Up"
    ...      -Mobile no
    ...      -Enter destination number you wish to top up
    ...         -Mobile no (Textbox)
    ...      -Please select top up channels
    ...         -Credit Card/Debit Card
    ...         -Manage
    ...           - VISA (1234 56** **** 1234)
    ...           - MasterCard (1234 56** **** 1234)
    ...           - JCB (1234 56** **** 1234)
    ...           - อื่นๆ
    ...           - E-Wallet
    ...           - Refill Card
    ...      -Select top up amount
    ...         -10,20,30,40,50,100,200,300,400,500,600,700,800,1000,15000
    ...      -Please verify your top up information and click Next to confirm transaction.
    ...      -"Next" button
    ...      -Terms & Conditions
    ...    5.Capture Screen
    [Tags]    active    success    regression    credit_Card
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify TopUP Page Verified by Credit    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_8_2] Verify page top up summary incase: verified by Visa
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.เลือกช่องทางการเติมเงิน (VISA)
    ...    5.เลือกจำนวนเงินที่ต้องการเติม
    ...    6.กดปุ่ม "ต่อไป"      #ไปต่อไม่ได้
    ...    7.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...      -สรุปรายละเอียด
    ...         - หมายเลข
    ...         - จำนวนเงิน
    ...      -บัตรเครดิต/บัตรเดบิต
    ...         - เลขที่บัตร (1234 56** **** 1234)
    ...         - CVV (xxx)
    ...      -ปุ่ม "ตกลง"
    ...      -ปุ่ม "ยกเลิก"
    ...    8.กดปุ่ม "ตกลง"
    ...    9.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    10.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Select top up channels (VISA)
    ...    5.Select top up amount
    ...    6.Click "Next"
    ...    7.Verify page "Top Up Summary"
    ...      -Top Up Summary
    ...         - Number
    ...         - Amount
    ...      -Credit card/Debit card
    ...         - Card number (1234 56** **** 1234)
    ...         - CVV (xxx)
    ...      -"OK" button
    ...      -"Cancel" button
    ...    8.Click "OK"
    ...    9.Verify page "Bank" (verify object in page)
    ...    10.Capture Screen
    [Tags]    active    success    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Go to TopUP by VISA CreditCard
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_9_2] Verify page top up summary incase: verified by MasterCard
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.เลือกช่องทางการเติมเงิน (MasterCard)
    ...    5.เลือกจำนวนเงินที่ต้องการเติม
    ...    6.กดปุ่ม "ต่อไป"          #ไปต่อไไม่ได้
    ...    7.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...      -สรุปรายละเอียด
    ...         - หมายเลข
    ...         - จำนวนเงิน
    ...      -บัตรเครดิต/บัตรเดบิต
    ...         - เลขที่บัตร (1234 56** **** 1234)
    ...         - CVV (xxx)
    ...      -ปุ่ม "ตกลง"
    ...      -ปุ่ม "ยกเลิก"
    ...    8.กดปุ่ม "ตกลง"
    ...    9.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    10.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Select top up channels (MasterCard)
    ...    5.Select top up amount
    ...    6.Click "Next"
    ...    7.Verify page "Top Up Summary"
    ...      -Top Up Summary
    ...         - Number
    ...         - Amount
    ...      -Credit card/Debit card
    ...         - Card number (1234 56** **** 1234)
    ...         - CVV (xxx)
    ...      -"OK" button
    ...      -"Cancel" button
    ...    8.Click "OK"
    ...    9.Verify page "Bank" (verify object in page)
    ...    10.Capture Screen
    [Tags]    active    success    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Go to TopUp by MasterCard CreditCard
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_10_2] Verify page top up summary incase: verified by JCB
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.เลือกช่องทางการเติมเงิน (JCB)
    ...    5.เลือกจำนวนเงินที่ต้องการเติม
    ...    6.กดปุ่ม "ต่อไป"         #ไปต่อไไม่ได้
    ...    7.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...      -สรุปรายละเอียด
    ...         - หมายเลข
    ...         - จำนวนเงิน
    ...      -บัตรเครดิต/บัตรเดบิต
    ...         - เลขที่บัตร (1234 56** **** 1234)
    ...         - CVV (xxx)
    ...      -ปุ่ม "ตกลง"
    ...      -ปุ่ม "ยกเลิก"
    ...    8.กดปุ่ม "ตกลง"
    ...    9.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    10.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Select top up channels (JCB)
    ...    5.Select top up amount
    ...    6.Click "Next"
    ...    7.Verify page "Top Up Summary"
    ...      -Top Up Summary
    ...         - Number
    ...         - Amount
    ...      -Credit card/Debit card
    ...         - Card number (1234 56** **** 1234)
    ...         - CVV (xxx)
    ...      -"OK" button
    ...      -"Cancel" button
    ...    8.Click "OK"
    ...    9.Verify page "Bank" (verify object in page)
    ...    10.Capture Screen
    [Tags]    active    success    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Go to TopUP by JCB CreditCard
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_16_2] Top up to other number with VISA (No Credit Card)
    [Documentation]    Owner : Tong
    ...
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (Visa)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...    -สรุปรายละเอียด
    ...    - หมายเลข
    ...    - จำนวนเงิน
    ...    -บัตรเครดิต/บัตรเดบิต
    ...    - เลขที่บัตร (1234 56** **** 1234)
    ...    - CVV (xxx)
    ...    -ปุ่ม "ตกลง"
    ...    -ปุ่ม "ยกเลิก"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    11.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Go to Top up to other number with VISA_No Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_17_2] Top up to other number with MasterCard (No Credit Card)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (MasterCard)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...    -สรุปรายละเอียด
    ...    - หมายเลข
    ...    - จำนวนเงิน
    ...    -บัตรเครดิต/บัตรเดบิต
    ...    - เลขที่บัตร (1234 56** **** 1234)
    ...    - CVV (xxx)
    ...    -ปุ่ม "ตกลง"
    ...    -ปุ่ม "ยกเลิก"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    11.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Go to Top up to other number with MasterCard_No Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_18_2] Top up to other number with JCB (No Credit Card)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (JCB)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...    -สรุปรายละเอียด
    ...    - หมายเลข
    ...    - จำนวนเงิน
    ...    -บัตรเครดิต/บัตรเดบิต
    ...    - เลขที่บัตร (1234 56** **** 1234)
    ...    - CVV (xxx)
    ...    -ปุ่ม "ตกลง"
    ...    -ปุ่ม "ยกเลิก"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    11.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Go to Top up to other number with JCB_No Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_19_2] Top up to other number with AMEX (No Credit Card)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (AMEX)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...    -หมายเลขโทรศัพท์
    ...    -สรุปรายละเอียดการเติมเงิน
    ...    - ช่องทางการเติมเงิน
    ...    - ประเภทบัตร
    ...    - หมายเลขที่ต้องการเติมเงิน
    ...    - จำนวนเงิน
    ...    -ปุ่ม "ตกลง"
    ...    -ปุ่ม "กลับ"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    11.จับภาพหน้าจอ
    [Tags]    active    regression    success    reject
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Go to Top up to other number with AMEX_No Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_20_2] Top up to other number with VISA (Has Credit Card)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (VISA)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...    -สรุปรายละเอียด
    ...    - หมายเลข
    ...    - จำนวนเงิน
    ...    -บัตรเครดิต/บัตรเดบิต
    ...    - เลขที่บัตร (1234 56** **** 1234)
    ...    - CVV (xxx)
    ...    -ปุ่ม "ตกลง"
    ...    -ปุ่ม "ยกเลิก"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    11.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Go to Top up to other number with VISA_Has Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_21_2] Top up to other number with MasterCard (Has Credit Card)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (MasterCard)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...    -สรุปรายละเอียด
    ...    - หมายเลข
    ...    - จำนวนเงิน
    ...    -บัตรเครดิต/บัตรเดบิต
    ...    - เลขที่บัตร (1234 56** **** 1234)
    ...    - CVV (xxx)
    ...    -ปุ่ม "ตกลง"
    ...    -ปุ่ม "ยกเลิก"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    11.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Go to Top up to other number with MasterCard_Has Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_22_2] Top up to other number with JCB (Has Credit Card)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (JCB)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...    -สรุปรายละเอียด
    ...    - หมายเลข
    ...    - จำนวนเงิน
    ...    -บัตรเครดิต/บัตรเดบิต
    ...    - เลขที่บัตร (1234 56** **** 1234)
    ...    - CVV (xxx)
    ...    -ปุ่ม "ตกลง"
    ...    -ปุ่ม "ยกเลิก"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    11.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Go to Top up to other number with JCB_Has Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_23_2] Top up to other number Select Other Chanel (Has Credit Card)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือก "อื่นๆ"
    ...    6.ตรวจสอบ "เติมเงิน"
    ...    -หมายเลขโทรศัพท์
    ...    -ระบุหมายเลขโทรศัพท์ที่ต้องการเติมเงิน
    ...    -หมายเลขโทรศัพท์ (Textbox)
    ...    -เลือกช่องทางการเติมเงิน (Ver ว่ามีบัตรมั้ย)
    ...    -บัตรเครดิต/เดบิต
    ...    -จัดการข้อมูลบัตร
    ...    - VISA (1234 56** **** 1234)
    ...    - MasterCard (1234 56** **** 1234)
    ...    - อื่นๆ
    ...    - VISA
    ...    - MasterCard
    ...    - JCB
    ...    - AMEX
    ...    - E-Wallet
    ...    - บัตรเติมเงิน
    ...    -เลือกจำนวนเงินที่ต้องการเติมเงิน
    ...    -10,20,30,40,50,100,200,300,400,500,600,700,800,1000,15000
    ...    "กรุณาตรวจสอบรายการเติมเงินของคุณอีกครั้ง
    ...    แล้วกด ต่อไป เพื่อทำรายการ"
    ...    -ปุ่ม "ต่อไป"
    ...    -เงื่อนไขบริการ
    ...    7.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify TopUp Other Number by Other Channel    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_24_2] Top up to other number with E-Wallet
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (EWallet)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...    -หมายเลขโทรศัพท์
    ...    -สรุปรายละเอียดการเติมเงิน
    ...    - ช่องทางการเติมเงิน
    ...    - หมายเลขที่ต้องการเติมเงิน
    ...    - จำนวนเงิน
    ...    -ปุ่ม "ตกลง"
    ...    -ปุ่ม "กลับ"
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify TopUp Other Number by E-Wallet
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_25_2] Top up to other number with RefillCard
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (บัตรเติมเงิน)
    ...    6.ตรวจสอบหน้า "เติมเงิน"
    ...    -หมายเลขโทรศัพท์
    ...    -ระบุหมายเลขโทรศัพท์ที่ต้องการเติมเงิน
    ...    -หมายเลขโทรศัพท์ (Textbox)
    ...    -เลือกช่องทางการเติมเงิน (Ver ว่ามีบัตรมั้ย)
    ...    -บัตรเครดิต/เดบิต
    ...    -E-Wallet
    ...    -บัตรเติมเงิน
    ...    -กรุณาระบุรหัสบัตร
    ...    เติมเงิน 16 หลัก (Textbox)
    ...    -กรุณาตรวจสอบรายการเติมเงินของคุณอีกครั้ง
    ...    แล้วกด ต่อไป เพื่อทำรายการ
    ...    -ปุ่ม "ต่อไป"
    ...    -เงื่อนไขบริการ
    ...    7.ระบุเลขบัตรเติมเงิน 16 หลัก
    ...    8.กดปุ่ม "ต่อไป"
    ...    9.ตรวจสอบหน้า "สรุปรายละเอียดการเติมเงิน"
    ...    -หมายเลขโทรศัพท์
    ...    -สรุปรายละเอียดการเติมเงิน
    ...    - ช่องทางการเติมเงิน
    ...    - หมายเลขที่ต้องการเติมเงิน
    ...    - รหัสบัตรเติมเงิน
    ...    -ปุ่ม "ตกลง"
    ...    -ปุ่ม "กลับ"
    ...    10.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify TopUp Other Number by RefillCard
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_26_2] Top Up With VISA No CreditCard (Do not enter the number)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.ไม่กรอกหมายเลขโทรศัพท์
    ...    5.เลือกช่องทางการเติมเงิน(VISA)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ ที่คุณต้องการเติมเงิน
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify PopUp Alert Top Up No VISA_Do not enter the number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_27_2] Top Up With MasterCard No CreditCard (Do not enter the number)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.ไม่กรอกหมายเลขโทรศัพท์
    ...    5.เลือกช่องทางการเติมเงิน(MasterCard)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ ที่คุณต้องการเติมเงิน
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify PopUp Alert Top Up No MasterCard_Do not enter the number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_28_2] Top Up With JCB No CreditCard (Do not enter the number)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.ไม่กรอกหมายเลขโทรศัพท์
    ...    5.เลือกช่องทางการเติมเงิน(JCB)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ ที่คุณต้องการเติมเงิน
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify PopUp Alert Top Up No JCB_Do not enter the number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_29_2] Top Up With AMEX No CreditCard (Do not enter the number)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.ไม่กรอกหมายเลขโทรศัพท์
    ...    5.เลือกช่องทางการเติมเงิน(AMEX)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ ที่คุณต้องการเติมเงิน
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success    Reject
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_30_2] Top up with E-Wallet (Do not enter the number)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.ไม่กรอกหมายเลขโทรศัพท์
    ...    5.เลือกช่องทางการเติมเงิน(E-Wallet)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ ที่คุณต้องการเติมเงิน
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify PopUp Alert Top Up E-Wallet_Do not enter the number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_31_2] Top up with RefillCard (Do not enter the number)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.ไม่กรอกหมายเลขโทรศัพท์
    ...    5.เลือกช่องทางการเติมเงิน(E-Wallet)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ ที่คุณต้องการเติมเงิน
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify PopUp Alert Top Up RefillCard_Do not enter the number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_32_2] Top Up With VISA Has CreditCard (Do not enter the number)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.ไม่กรอกหมายเลขโทรศัพท์
    ...    5.เลือกช่องทางการเติมเงิน(VISA)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ ที่คุณต้องการเติมเงิน
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up VISA has Information No number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_33_2] Top Up With MasterCard Has CreditCard (Do not enter the number)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.ไม่กรอกหมายเลขโทรศัพท์
    ...    5.เลือกช่องทางการเติมเงิน(MasterCard)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ ที่คุณต้องการเติมเงิน
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up Master Card has information No number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_34_2] Top Up With JCB Has CreditCard (Do not enter the number)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.ไม่กรอกหมายเลขโทรศัพท์
    ...    5.เลือกช่องทางการเติมเงิน(JCB)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ ที่คุณต้องการเติมเงิน
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up JCB has information No number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_35_2] Top Up With VISA No CreditCard (number less than 10 digits)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ครบ 10 หลัก
    ...    5.เลือกช่องทางการเติมเงิน(VISA)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ เป็นตัวเลข 10 หลัก
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up VISA number less than 10 digits
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_36_2] Top Up With MasterCard No CreditCard (number less than 10 digits)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ครบ 10 หลัก
    ...    5.เลือกช่องทางการเติมเงิน(MasterCard)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ เป็นตัวเลข 10 หลัก
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up Master Card number less than 10 digits
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_37_2] Top Up With JCB No CreditCard (number less than 10 digits)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ครบ 10 หลัก
    ...    5.เลือกช่องทางการเติมเงิน(JCB)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ เป็นตัวเลข 10 หลัก
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up JCB number less than 10 digits
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_38_2] Top Up With AMEX No CreditCard (number less than 10 digits)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ครบ 10 หลัก
    ...    5.เลือกช่องทางการเติมเงิน(AMEX)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ เป็นตัวเลข 10 หลัก
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success    Reject
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up AMEX number less than 10 digits
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_39_2] Top Up E-Wallet (number less than 10 digits)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ครบ 10 หลัก
    ...    5.เลือกช่องทางการเติมเงิน(E-Wallet)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ เป็นตัวเลข 10 หลัก
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up EWallet number less than 10 digits
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_40_2] Top Up With RefillCard (number less than 10 digits)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ครบ 10 หลัก
    ...    5.เลือกช่องทางการเติมเงิน(บัตรเติมเงิน)
    ...    6.กรอกรหัสบัตรเติมเงิน 16 หลัก
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ เป็นตัวเลข 10 หลัก
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up Refill Card number less than 10 digits
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_41_2] Top Up With VISA Has CreditCard (number less than 10 digits)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ครบ 10 หลัก
    ...    5.เลือกช่องทางการเติมเงิน(VISA)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ เป็นตัวเลข 10 หลัก
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up VISA has information number less than 10 digits
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_42_2] Top Up With MasterCard Has CreditCard (number less than 10 digits)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ครบ 10 หลัก
    ...    5.เลือกช่องทางการเติมเงิน(MasterCard)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ เป็นตัวเลข 10 หลัก
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up Master Card has information number less than 10 digits
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_43_2] Top Up With JCB Has CreditCard (number less than 10 digits)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ครบ 10 หลัก
    ...    5.เลือกช่องทางการเติมเงิน(JCB)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ เป็นตัวเลข 10 หลัก
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up JCB has information number less than 10 digits
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_44_2] Top Up With VISA No CreditCard (number not cerrect)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    5.เลือกช่องทางการเติมเงิน(VISA)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณระบุหมายเลขโทรศัพท์ไม่ถูกต้องก
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up VISA number not correct
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_45_2] Top Up With MasterCard No CreditCard (number not cerrect)
    [Documentation]    Owner : Tong
    ...    Pre-Requisite
    ...    Source Number 3PE Status Active
    ...
    ...    TestStep
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    5.เลือกช่องทางการเติมเงิน(MasterCard)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณระบุหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    9.จับภาพหน้าจอ
    [Tags]    active    regression    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Pop up MasterCard number not correct
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_46_2] Verify page top up/payment incase:failed without verified by JCB/Wrong number
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    5.เลือกช่องทางการเติมเงิน(JCB)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณระบุหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Invalid Mobile no(eg.66xxxxxxxx)
    ...    5.Select top up channels (JCB)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: You have entered invalid mobile number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verfy Pop up JCB number not correct
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_47_2] Verify page top up/payment incase:failed without verified by AMEX/Wrong number
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    5.เลือกช่องทางการเติมเงิน(AMEX)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณระบุหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Invalid Mobile no(eg.66xxxxxxxx)
    ...    5.Select top up channels (AMEX)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: You have entered invalid mobile number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    reject
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up AMEX number not correct
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_48_2] Verify page top up/payment incase:failed without verified by E-Wallet/Wrong number
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    5.เลือกช่องทางการเติมเงิน(E-Wallet)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณระบุหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Invalid Mobile no(eg.66xxxxxxxx)
    ...    5.Select top up channels (E-Wallet)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: You have entered invalid mobile number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up EWallet number not correct
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_49_2] Verify page top up/payment incase:failed refill card channel/Wrong number
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    5.เลือกช่องทางการเติมเงิน(บัตรเติมเงิน)
    ...    6.กรอกรหัสบัตรเติมเงิน 16 หลัก
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณระบุหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Invalid Mobile no(eg.66xxxxxxxx)
    ...    5.Select top up channels (Refill Card)
    ...    6.Enter 16 digits PIN code
    ...    7.Click "Next"
    ...    8.Verify popup msg: Please specify a 10digit mobile number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up Refill Card number not correct
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_50_2] Verify page top up/payment incase:failed verified by Visa/Wrong number
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    5.เลือกช่องทางการเติมเงิน(VISA)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณระบุหมายเลขโทรศัพท์ไม่ถูกต้องก
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Invalid Mobile no(eg.66xxxxxxxx)
    ...    5.Select top up channels(VISA)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: You have entered invalid mobile number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up VISA has information number not correct
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_51_2] Verify page top up/payment incase:failed verified by MasterCard/Wrong number
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    5.เลือกช่องทางการเติมเงิน(MasterCard)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณระบุหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Invalid Mobile no(eg.66xxxxxxxx)
    ...    5.Select top up channels (MasterCard)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: You have entered invalid mobile number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up MasterCard has information number not correct
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_52_2] Verify page top up/payment incase:failed verified by JCB/Wrong number
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    5.เลือกช่องทางการเติมเงิน(JCB)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณระบุหมายเลขโทรศัพท์ไม่ถูกต้อง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Invalid Mobile no(eg.66xxxxxxxx)
    ...    5.Select top up channels (JCB)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: You have entered invalid mobile number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verfy Pop up JCB has information number not correct
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_53_2] Verify page top up/payment incase:failed without verified by Visa/Wrong System
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ต่างเครือข่าย
    ...    5.เลือกช่องทางการเติมเงิน(VISA)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: บริการนี้สำหรับลูกค้าเอไอเอสเท่านั้น
    ...    กรุณาระบุหมายเลขเอไอเอสใหม่อีกครั้ง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile no not AIS number
    ...    5.Select top up channels(VISA)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: The number must be an AIS mobile number only.
    ...    Please enter a new number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up VISA number different network
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_54_2] Verify page top up/payment incase:failed without verified by MasterCard/Wrong System
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ต่างเครือข่าย
    ...    5.เลือกช่องทางการเติมเงิน(MasterCard)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: บริการนี้สำหรับลูกค้าเอไอเอสเท่านั้น
    ...    กรุณาระบุหมายเลขเอไอเอสใหม่อีกครั้ง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile no not AIS number
    ...    5.Select top up channels (MasterCard)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: The number must be an AIS mobile number only.
    ...    Please enter a new number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up MasterCard number different network
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_55_2] Verify page top up/payment incase:failed without verified by JCB/Wrong System
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ต่างเครือข่าย
    ...    5.เลือกช่องทางการเติมเงิน(JCB)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: บริการนี้สำหรับลูกค้าเอไอเอสเท่านั้น
    ...    กรุณาระบุหมายเลขเอไอเอสใหม่อีกครั้ง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile no not AIS number
    ...    5.Select top up channels (JCB)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: The number must be an AIS mobile number only.
    ...    Please enter a new number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up JCB no information and differnt network
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_56_2] Verify page top up/payment incase:failed without verified by AMEX/Wrong System
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ต่างเครือข่าย
    ...    5.เลือกช่องทางการเติมเงิน(AMEX)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: บริการนี้สำหรับลูกค้าเอไอเอสเท่านั้น
    ...    กรุณาระบุหมายเลขเอไอเอสใหม่อีกครั้ง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile no not AIS number
    ...    5.Select top up channels (AMEX)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: The number must be an AIS mobile number only.
    ...    Please enter a new number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    reject
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up AMEX no information and differnt network
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_57_2] Verify page top up/payment incase:failed verified by E-Wallet/Wrong System
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ต่างเครือข่าย
    ...    5.เลือกช่องทางการเติมเงิน(E-Wallet)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: บริการนี้สำหรับลูกค้าเอไอเอสเท่านั้น
    ...    กรุณาระบุหมายเลขเอไอเอสใหม่อีกครั้ง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile no not AIS number
    ...    5.Select top up channels (E-Wallet)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: The number must be an AIS mobile number only.
    ...    Please enter a new number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    bug
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up EWallet no information and differnt network
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_58_2] Verify page top up/payment incase:failed Refill Card Channel/Wrong System
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ต่างเครือข่าย
    ...    5.เลือกช่องทางการเติมเงิน(บัตรเติมเงิน)
    ...    6.กรอกรหัสบัตรเติมเงิน 16 หลัก
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: บริการนี้สำหรับลูกค้าเอไอเอสเท่านั้น
    ...    กรุณาระบุหมายเลขเอไอเอสใหม่อีกครั้ง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile no not AIS number
    ...    5.Select top up channels (Refill Card)
    ...    6.Enter 16 digits PIN code
    ...    7.Click "Next"
    ...    8.Verify popup msg: The number must be an AIS mobile number only.
    ...    Please enter a new number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    bug
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up RefillCard no information and differnt network
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_59_2] Verify page top up/payment incase:failed verified by Visa/Wrong System
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ต่างเครือข่าย
    ...    5.เลือกช่องทางการเติมเงิน(VISA)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: บริการนี้สำหรับลูกค้าเอไอเอสเท่านั้น
    ...    กรุณาระบุหมายเลขเอไอเอสใหม่อีกครั้ง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile no not AIS number
    ...    5.Select top up channels(VISA)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: The number must be an AIS mobile number only.
    ...    Please enter a new number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up VISA has information and differnt network
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_60_2] Verify page top up/payment incase:failed verified by MasterCard/Wrong System
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ต่างเครือข่าย
    ...    5.เลือกช่องทางการเติมเงิน(MasterCard)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: บริการนี้สำหรับลูกค้าเอไอเอสเท่านั้น
    ...    กรุณาระบุหมายเลขเอไอเอสใหม่อีกครั้ง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile no not AIS number
    ...    5.Select top up channels (MasterCard)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: The number must be an AIS mobile number only.
    ...    Please enter a new number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up MasterCard has information and differnt network
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_61_2] Verify page top up/payment incase:failed verified by JCB/Wrong System
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ต่างเครือข่าย
    ...    5.เลือกช่องทางการเติมเงิน(JCB)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: บริการนี้สำหรับลูกค้าเอไอเอสเท่านั้น
    ...    กรุณาระบุหมายเลขเอไอเอสใหม่อีกครั้ง
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile no not AIS number
    ...    5.Select top up channels (JCB)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: The number must be an AIS mobile number only.
    ...    Please enter a new number.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up JCB has information and differnt network
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_62_2] Verify page top up/payment incase:failed without verified by Visa/AIS postpaid(eg.0937019824)
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ AIS postpaid
    ...    5.เลือกช่องทางการเติมเงิน(VISA)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณไม่สามารถเติมเงินได้ เนื่องจากหมายเลขปลายทางไม่ได้อยู่ในระบบ One2Call!
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile AIS postpaid
    ...    5.Select top up channels(VISA)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: Your request is not completed because the destination number is not in One2Call! network.
    ...    9.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up VISA no information and input postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_63_2] Verify page top up/payment incase:failed without verified by MasterCard/AIS postpaid(eg.0937019824)
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ AIS postpaid
    ...    5.เลือกช่องทางการเติมเงิน(MasterCard)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณไม่สามารถเติมเงินได้ เนื่องจากหมายเลขปลายทางไม่ได้อยู่ในระบบ One2Call!
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile AIS postpaid
    ...    5.Select top up channels(MasterCard)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: Your request is not completed because the destination number is not in One2Call! network.
    ...    9.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up MasterCard no information and input postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_64_2] Verify page top up/payment incase:failed without verified by JCB/AIS postpaid(eg.0937019824)
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ AIS postpaid
    ...    5.เลือกช่องทางการเติมเงิน(JCB)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณไม่สามารถเติมเงินได้ เนื่องจากหมายเลขปลายทางไม่ได้อยู่ในระบบ One2Call!
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile AIS postpaid
    ...    5.Select top up channels(JCB)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: Your request is not completed because the destination number is not in One2Call! network.
    ...    9.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up JCB no information and input postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_65_2] Verify page top up/payment incase:failed without verified by AMEX/AIS postpaid(eg.0937019824)
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ AIS postpaid
    ...    5.เลือกช่องทางการเติมเงิน(AMEX)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณไม่สามารถเติมเงินได้ เนื่องจากหมายเลขปลายทางไม่ได้อยู่ในระบบ One2Call!
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile AIS postpaid
    ...    5.Select top up channels(AMEX)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: Your request is not completed because the destination number is not in One2Call! network.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    reject
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up AMEX no information and input postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_66_2] Verify page top up/payment incase:failed E-Wallet/AIS postpaid(eg.0937019824)
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ AIS postpaid
    ...    5.เลือกช่องทางการเติมเงิน(E-Wallet)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณไม่สามารถเติมเงินได้ เนื่องจากหมายเลขปลายทางไม่ได้อยู่ในระบบ One2Call!
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile AIS postpaid
    ...    5.Select top up channels (E-Wallet)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: Your request is not completed because the destination number is not in One2Call! network.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    bug
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up EWallet and input postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_67_2] Verify page top up/payment incase:failed Refill Card Channel/AIS postpaid(eg.0937019824)
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ AIS postpaid
    ...    5.เลือกช่องทางการเติมเงิน(บัตรเติมเงิน)
    ...    6.กรอกรหัสบัตรเติมเงิน 16 หลัก
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณไม่สามารถเติมเงินได้ เนื่องจากหมายเลขปลายทางไม่ได้อยู่ในระบบ One2Call!
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile AIS postpaid
    ...    5.Select top up channels (Refill Card)
    ...    6.Enter 16 digits PIN code
    ...    7.Click "Next"
    ...    8.Verify popup msg: Your request is not completed because the destination number is not in One2Call! network.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    bug
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up RefilCard and input postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_68_2] Verify page top up/payment incase:failed verified by Visa/AIS postpaid(eg.0937019824)
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ AIS postpaid
    ...    5.เลือกช่องทางการเติมเงิน(VISA)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณไม่สามารถเติมเงินได้ เนื่องจากหมายเลขปลายทางไม่ได้อยู่ในระบบ One2Call!
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile AIS postpaid
    ...    5.Select top up channels(VISA)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: Your request is not completed because the destination number is not in One2Call! network.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up VISA has information and input postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_69_2] Verify page top up/payment incase:failed verified by MasterCard/AIS postpaid(eg.0937019824)
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ AIS postpaid
    ...    5.เลือกช่องทางการเติมเงิน(MasterCard)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณไม่สามารถเติมเงินได้ เนื่องจากหมายเลขปลายทางไม่ได้อยู่ในระบบ One2Call!
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile AIS postpaid
    ...    5.Select top up channels (MasterCard)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: Your request is not completed because the destination number is not in One2Call! network.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up MasterCard has information and input postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_70_2] Verify page top up/payment incase:failed verified by JCB/AIS postpaid(eg.0937019824)
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอกหมายเลขโทรศัพท์ AIS postpaid
    ...    5.เลือกช่องทางการเติมเงิน(JCB)
    ...    6.เลือกจำนวนเงินที่ต้องการเติม
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: คุณไม่สามารถเติมเงินได้ เนื่องจากหมายเลขปลายทางไม่ได้อยู่ในระบบ One2Call!
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Input Mobile AIS postpaid
    ...    5.Select top up channels (JCB)
    ...    6.Select top up amount
    ...    7.Click "Next"
    ...    8.Verify popup msg: Your request is not completed because the destination number is not in One2Call! network.
    ...    9.Capture Screen
    [Tags]    active    fail    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up JCB has information and input postpaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_71_2] Verify page top up/payment incase:failed Without Verified/No Selected Payment
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.ไม่เลือกช่องทางการชำระ
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: กรุณาเลือกช่องทางการชำระ    //กรุณาเลือกช่องทางที่ต้องการเติมเงิน
    ...    8.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Enter Your Mobile no
    ...    5.No Select top up channels
    ...    6.Click "Next"
    ...    7.Verify popup msg: Please select payment channels
    ...    8.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up no information and no payment channel
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_72_2] Verify page top up/payment incase:failed without verified by Visa/No Selected Payment
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน(VISA)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: เลือกจำนวนเงินที่ต้องการเติม
    ...    8.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Enter Your Mobile no
    ...    5.Select top up channels (VISA)
    ...    6.Click "Next"
    ...    7.Verify popup msg: Select top up amount
    ...    8.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up VISA no information and no amount
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_73_2] Verify page top up/payment incase:failed without verified by MasterCard/No Selected Payment
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน(MasterCard)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: เลือกจำนวนเงินที่ต้องการเติม
    ...    8.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Enter Your Mobile no
    ...    5.Select top up channels (MasterCard)
    ...    6.Click "Next"
    ...    7.Verify popup msg: Select top up amount
    ...    8.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up MasterCard no information and no amount
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_74_2] Verify page top up/payment incase:failed without verified by JCB/No Selected Payment
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"s
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน(JCB)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: เลือกจำนวนเงินที่ต้องการเติม
    ...    8.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Enter Your Mobile no
    ...    5.Select top up channels (JCB)
    ...    6.Click "Next"
    ...    7.Verify popup msg: Select top up amount
    ...    8.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up JCB no information and no amount
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_75_2] Verify page top up/payment incase:failed without verified by AMEX/No Selected Payment
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน(AMEX)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: เลือกจำนวนเงินที่ต้องการเติม
    ...    8.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Enter Your Mobile no
    ...    5.Select top up channels (AMEX)
    ...    6.Click "Next"
    ...    7.Verify popup msg: Select top up amount
    ...    8.Capture Screen
    [Tags]    active    fail    regression    reject
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up Amax no information and no amount
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_76_2] Verify page top up/payment incase:failed without verified by E-Wallet/No Selected Payment
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน(E-Wallet)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: เลือกจำนวนเงินที่ต้องการเติม
    ...    8.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Enter Your Mobile no
    ...    5.Select top up channels (E-Wallet)
    ...    6.Click "Next"
    ...    7.Verify popup msg: Select top up amount
    ...    8.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up Ewallet no information and no amount
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_77_2] Verify page top up/payment incase:failed verified by Visa/No Selected Payment
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน(VISA)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: เลือกจำนวนเงินที่ต้องการเติม
    ...    8.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Enter Your Mobile no
    ...    5.Select top up channels (VISA)
    ...    6.Click "Next"
    ...    7.Verify popup msg: Select top up amount
    ...    8.Capture Screen
    [Tags]    active    fail    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up VISA has information and no amount
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_78_2] Verify page top up/payment incase:failed verified by MasterCard/No Selected Payment
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน(MasterCard)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: เลือกจำนวนเงินที่ต้องการเติม
    ...    8.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Enter Your Mobile no
    ...    5.Select top up channels (MasterCard)
    ...    6.Click "Next"
    ...    7.Verify popup msg: Select top up amount
    ...    8.Capture Screen
    [Tags]    active    fail    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up MasterCard has information and no amount
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_79_2] Verify page top up/payment incase:failed verified by JCB/No Selected Payment
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน(JCB)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: เลือกจำนวนเงินที่ต้องการเติม
    ...    8.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Enter Your Mobile no
    ...    5.Select top up channels (JCB)
    ...    6.Click "Next"
    ...    7.Verify popup msg: Select top up amount
    ...    8.Capture Screen
    [Tags]    active    fail    regression    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Verify Pop up JCB has information and no amount
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_80_2] Verify page top up/payment incase:failed No Refill Code
    [Documentation]    Owner : Asma
    ...
    ...    Pre-Requisiteq1
    ...    Source Number 3PE Status Active
    ...
    ...    Test Step
    ...
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (บัตรเติมเงิน)
    ...    6.ไม่กรอกรหัสบัตรเติมเงิน
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาระบุบัตรเติมเงิน 16 หลัก
    ...    9.จับภาพหน้าจอ
    ...    ------EN------
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Enter Your Mobile no
    ...    5.Select top up channels (Refill Card)
    ...    6.No Input Refill Card
    ...    7.Click "Next"
    ...    8.Verify popup msg: Please enter a 16 digits PIN code.
    ...    9.Capture Screen
    [Tags]    active    fail    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    sleep    30
    Verify Pop up no input Refill Card Code
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_81_2] Input PIN code less than 16 digit
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (บัตรเติมเงิน)
    ...    6.กรอกรหัสบัตรเติมเงินไม่ครบ 16 หลัก
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: ระบุบัตรเติมเงิน 16 หลัก
    ...    9.จับภาพหน้าจอ
    [Tags]    success    regression    active    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Select TopUp Channel    RefillCardTopup
    Enter TopUp PIN Code    ${PINCodeLessThan16Digit}
    Confirm Select TopUp Detail    ${btnNextForRefillCardChannal}
    Verify Input PIN Code Less Than 16 Digit
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_82_2] Input wrong PIN code
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (บัตรเติมเงิน)
    ...    6.กรอกรหัสบัตรเติมเงินไม่ถูกต้อง
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.กด "ตกลง"
    ...    9.ตรวจสอบ popup msg: คุณระบุหมายเลข PIN ไม่ถูกต้อง
    ...    กรุณาระบุใหม่อีกครั้ง
    ...    10.จับภาพหน้าจอ
    [Tags]    success    regression    active    onhold    bug?
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Select TopUp Channel    RefillCardTopup
    Enter TopUp PIN Code    ${WrongPINCode}
    Confirm Select TopUp Detail    ${btnNextForRefillCardChannal}
    Sleep    20
    Confirm TopUp
    Sleep    20
    #Verify Input Wrong PIN Code
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_83_2] Verify top up VISA not have creditcard and destination number maxBalance
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (VISA)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: ไม่สามารถเติมเงินได้ เนื่องจากหมายเลขที่ระบุมียอดเงินคงเหลือครบ 10,000 บาท ตามกำหนดแล้ว
    ...    8.จับภาพหน้าจอ
    [Tags]    success    regression    active    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Input Topup Destination Number    ${AISNonBosPrepaidMaxBalance}
    Select TopUp Channel    VISA
    Select topup amount    10
    Confirm Select TopUp Detail    ${btnNextForCardChannal}
    Sleep    50
    Mobile Capture Screen At Verify Point    test
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_84_2] Verify top up MASTER not have creditcard and destination number maxBalance
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (MasterCard)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: ไม่สามารถเติมเงินได้ เนื่องจากหมายเลขที่ระบุมียอดเงินคงเหลือครบ 10,000 บาท ตามกำหนดแล้ว
    ...    8.จับภาพหน้าจอ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Input Topup Destination Number    ${AISNonBosPrepaidMaxBalance}
    Select TopUp Channel    MasterCard
    Select topup amount    10
    Confirm Select TopUp Detail    ${btnNextForCardChannal}
    Sleep    50
    Mobile Capture Screen At Verify Point    test
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_85_2] Verify top up JCB not have creditcard and destination number maxBalance
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (JCB)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: ไม่สามารถเติมเงินได้ เนื่องจากหมายเลขที่ระบุมียอดเงินคงเหลือครบ 10,000 บาท ตามกำหนดแล้ว
    ...    8.จับภาพหน้าจอ
    [Tags]    success    regression    active    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Input Topup Destination Number    ${AISNonBosPrepaidMaxBalance}
    Select TopUp Channel    JCB
    Select topup amount    10
    Confirm Select TopUp Detail    ${btnNextForCardChannal}
    Mobile Capture Screen At Verify Point    test
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_87_2] Verify top up E-Wallet not have creditcard and destination number maxBalance
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (E-Wallet)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.กดปุ่ม "ตกลง"
    ...    8.ตรวจสอบ popup msg: ไม่สามารถเติมเงินได้ เนื่องจากหมายเลขที่ระบุมียอดเงินคงเหลือครบ 10,000 บาท ตามกำหนดแล้ว
    ...    9.จับภาพหน้าจอ
    [Tags]    success    regression    active    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Input Topup Destination Number    ${AISNonBosPrepaidMaxBalance}
    Select TopUp Channel    EWallet
    Select topup amount    10
    Confirm Select TopUp Detail    ${btnNextForCardChannal}
    Confirm TopUp
    Sleep    10
    Mobile Capture Screen At Verify Point    test
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_88_2] Verify top up Refill not have creditcard and destination number maxBalance
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (บัตรเติมเงิน)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.กดปุ่ม "ตกลง"
    ...    8.ตรวจสอบ popup msg: ไม่สามารถเติมเงินได้ เนื่องจากหมายเลขที่ระบุมียอดเงินคงเหลือครบ 10,000 บาท ตามกำหนดแล้ว
    ...    9.จับภาพหน้าจอ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Input Topup Destination Number    ${AISNonBosPrepaidMaxBalance}
    Select TopUp Channel    RefillCardTopup
    Enter TopUp PIN Code    1234567890234567
    Confirm Select TopUp Detail    ${btnNextForRefillCardChannal}
    Confirm TopUp
    Sleep    10
    Mobile Capture Screen At Verify Point    test
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_89_2] Verify top up VISA have creditcard and destination number maxBalance
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (VISA)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: ไม่สามารถเติมเงินได้ เนื่องจากหมายเลขที่ระบุมียอดเงินคงเหลือครบ 10,000 บาท ตามกำหนดแล้ว
    ...    8.จับภาพหน้าจอ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Input Topup Destination Number    ${AISNonBosPrepaidMaxBalance}
    Select Top up Credit Card    Visa
    Select topup amount    10
    Confirm Select TopUp Detail    ${btnNextForCardChannalHaveCard}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_90_2] Verify top up MASTER have creditcard and destination number maxBalance
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (MasterCard)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: ไม่สามารถเติมเงินได้ เนื่องจากหมายเลขที่ระบุมียอดเงินคงเหลือครบ 10,000 บาท ตามกำหนดแล้ว
    ...    8.จับภาพหน้าจอ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Input Topup Destination Number    ${AISNonBosPrepaidMaxBalance}
    Select Top up Credit Card    MasterCard
    Select topup amount    10
    Confirm Select TopUp Detail    ${btnNextForCardChannalHaveCard}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_N_91_2] Verify top up JCB have creditcard and destination Number maxBalance
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "เติมเงิน"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.เลือกช่องทางการเติมเงิน (JCB)
    ...    6.กดปุ่ม "ต่อไป"
    ...    7.ตรวจสอบ popup msg: ไม่สามารถเติมเงินได้ เนื่องจากหมายเลขที่ระบุมียอดเงินคงเหลือครบ 10,000 บาท ตามกำหนดแล้ว
    ...    8.จับภาพหน้าจอ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    TopUp
    Input Topup Destination Number    ${AISNonBosPrepaidMaxBalance}
    Select Top up Credit Card    JCB
    Select topup amount    10
    Confirm Select TopUp Detail    ${btnNextForCardChannalHaveCard}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_1_2] Verify page payment
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.ตรวจสอบหน้า ชำระค่าบริการ
    ...      -หมายเลขโทรศัพท์
    ...      -รายละเอียดค่าใช้บริการ
    ...      -ระบุหมายเลขที่ต้องการชำระค่าบริการ(textbox)
    ...      -ปุ่ม "กลับ"
    ...      -ปุ่ม "ต่อไป"
    ...    5.จับภาพหน้าจอ
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

[F2_TopupPayment_IOS_1_1_Y_2_2] Verify page payment not have usagebalance and not have creditcard
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.ตรวจสอบหน้า ชำระค่าบริการ
    ...      -หมายเลขโทรศัพท์
    ...      -รายละเอียดค่าใช้บริการ
    ...      -ไม่มียอดค้างชำระ
    ...      -ชำระค่าบริการล่วงหน้า
    ...      -ยอดที่ต้องการชำระ 0.00฿
    ...      -ช่องทางการชำระ
    ...      -บัตรเครดิต/เดบิต
    ...         - VISA
    ...         - MasterCard
    ...         - JCB
    ...         - AMEX
    ...         - E-Wallet
    ...      -ตรวจสอบรายการการชำระค่าบริการของคุณอีกครั้ง
    ...    แล้วกดปุ่ม ต่อไป เพื่อทำรายการ
    ...      -ปุ่ม "กลับ"
    ...      -ปุ่ม "ต่อไป"
    ...      -เงื่อนไขบริการ
    ...    7.จับภาพหน้าจอ
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
    Input Payment Destination Number    ${AISPostpaidNumber}
    Confirm Payment Number
    Verify Payment Page No UsageBalance And No CreditCard Mobile Number    ${AISPostpaidNumber}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_3_2] Verify page payment not have usagebalance and have creditcard
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.ตรวจสอบหน้า ชำระค่าบริการ
    ...      -หมายเลขโทรศัพท์
    ...      -รายละเอียดค่าใช้บริการ
    ...      -ไม่มียอดค้างชำระ
    ...      -ชำระค่าบริการล่วงหน้า
    ...      -ยอดที่ต้องการชำระ 0.00฿
    ...      -ช่องทางการชำระ
    ...      -บัตรเครดิต/เดบิต
    ...      -จัดการข้อมูลบัตร
    ...         - VISA  (1234 56** **** 1234)
    ...         - MasterCard  (1234 56** **** 1234)
    ...         - JCB  (1234 56** **** 1234)
    ...         - อื่นๆ
    ...         - E-Wallet
    ...      -ตรวจสอบรายการการชำระค่าบริการของคุณอีกครั้ง
    ...    แล้วกดปุ่ม ต่อไป เพื่อทำรายการ
    ...      -ปุ่ม "กลับ"
    ...      -ปุ่ม "ต่อไป"
    ...      -เงื่อนไขบริการ
    ...    7.จับภาพหน้าจอ
    [Tags]    success    regression    active    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    Payment
    Input Payment Destination Number    ${AISPostpaidNumber}
    Confirm Payment Number
    Verify Payment Page No UsageBalance And Have CreditCard Mobile Number    ${AISPostpaidNumber}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_4_2] Verify page payment have usagebalance and not have creditcard
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.ตรวจสอบหน้า ชำระค่าบริการ
    ...      -หมายเลขโทรศัพท์
    ...      -รายละเอียดค่าใช้บริการ
    ...      -รอบบิล
    ...      -กำหนดชำระ
    ...      -ค่าบริการ
    ...      -รวมค่าใช้บริการ
    ...      -ยอดที่ต้องการชำระ
    ...      -ช่องทางการชำระ
    ...      -บัตรเครดิต/เดบิต
    ...         - VISA
    ...         - MasterCard
    ...         - JCB
    ...         - AMEX
    ...         - E-Wallet
    ...      -ตรวจสอบรายการการชำระค่าบริการของคุณอีกครั้ง
    ...    แล้วกดปุ่ม ต่อไป เพื่อทำรายการ
    ...      -ปุ่ม "กลับ"
    ...      -ปุ่ม "ต่อไป"
    ...      -เงื่อนไขบริการ
    ...    7.จับภาพหน้าจอ
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
    Input Payment Destination Number    ${AISBosPostpaidHaveOutStandingBalanceNoCreditCard}    ##บัตรที่มียอดค้างชำระอะไรก็ได้(postpaid)
    Confirm Payment Number
    Verify Payment Page Have UsageBalance And No CreditCard    ${AISBosPostpaidHaveOutStandingBalanceNoCreditCard}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_5_2] Verify page payment outstanding balance add credit card
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.ตรวจสอบหน้า ชำระค่าบริการ
    ...      -หมายเลขโทรศัพท์
    ...      -รายละเอียดค่าใช้บริการ
    ...      -รอบบิล
    ...      -กำหนดชำระ
    ...      -ค่าบริการ
    ...      -รวมค่าใช้บริการ
    ...      -ยอดที่ต้องการชำระ
    ...      -ช่องทางการชำระ
    ...      -บัตรเครดิต/เดบิต
    ...      -จัดการข้อมูลบัตร
    ...         - VISA  (1234 56** **** 1234)
    ...         - MasterCard  (1234 56** **** 1234)
    ...         - JCB  (1234 56** **** 1234)
    ...         - อื่นๆ
    ...         - E-Wallet
    ...      -ตรวจสอบรายการการชำระค่าบริการของคุณอีกครั้ง
    ...    แล้วกดปุ่ม ต่อไป เพื่อทำรายการ
    ...      -ปุ่ม "กลับ"
    ...      -ปุ่ม "ต่อไป"
    ...      -เงื่อนไขบริการ
    ...    7.จับภาพหน้าจอ
    [Tags]    success    regression    active    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    Payment
    Input Payment Destination Number    ${AISNonBosPostpaidHaveOutStandingBalanceHaveCreditCard}    #บัตรที่มียอดค้างชำระอะไรก็ได้(postpaid)
    Confirm Payment Number
    Verify Payment Page Have UsageBalance And Have CreditCard Mobile Number    ${AISNonBosPostpaidHaveOutStandingBalanceHaveCreditCard}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_6_2] Verify page payment manage card
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือก จัดการข้อมูลบัตร
    ...    7.ตรวจสอบหน้า "ข้อมูลบัตรเครดิต/เดบิต"
    ...      -หมายเลขโทรศัพท์
    ...      -บัตรเครดิต/เดบิตของคุณ
    ...      -ข้อมูลบัตรเครดิต/เดบิตของคุณสำหรับการชำระค่าบริการ และเติมเงินผ่าน my AIS
    ...      -Ver ว่ามีบัตรมั้ย
    ...    8.จับภาพหน้าจอ
    [Tags]    success    regression    active    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    Payment
    Input Payment Destination Number    ${AISPostpaidNumber}
    Confirm Payment Number
    Manage Card
    Verify page Manage Credit Card    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_7_2] Verify popup msg would you like to remove this card on page remove card
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือก จัดการข้อมูลบัตร
    ...    7.กด x (กากบาท)
    ...    8.ตรวจสอบ popup msg "ต้องการลบข้อมูลบัตร"
    ...      -VISA (1234 56** **** 1234)
    ...      -ปุ่ม "ยืนยัน"
    ...      -ปุ่ม "ยกเลิก"
    ...    9.จับภาพหน้าจอ
    [Tags]    success    regression    active    CreditCard
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    Payment
    Input Payment Destination Number    ${AISPostpaidNumber}
    Confirm Payment Number
    Manage Card
    Select Delete First Card
    Verify Delete Card Popup Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_8_2] Verify page payment detail By VISA have outstanding balance and no creditCard
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือกช่องทางการชำระ (VISA)
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการชำระค่าบริการ"
    ...      -สรุปรายละเอียด
    ...         - หมายเลข
    ...         - ช่องทาง
    ...         - ประเภทบัตร
    ...         - จำนวนเงิน
    ...      -บัตรเครดิต/บัตรเดบิต
    ...         -เลขที่บัตร (textbox)
    ...         -วันหมดอายุ (ddl:MM) (ddl:YYYY)
    ...         -CVV (textbox)
    ...      -ปุ่ม "ตกลง"
    ...      -ปุ่ม "ยกเลิก"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    11.จับภาพหน้าจอ
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
    Input Payment Destination Number    ${AISBosPostpaidHaveOutStandingBalanceNoCreditCard}
    Confirm Payment Number
    Select Payment Channal    VISA
    Confirm Payment Detail
    Verify Payment Detail Page By VISA Have Outstanding Balance And No Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_9_2] Verify page payment detail outstanding balance by masterCard in case no creditCard
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือกช่องทางการชำระ (MasterCard)
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการชำระค่าบริการ" (18/10/2017 step 8 flow เปลี่ยนเป็น ไม่ Verify สรุปรายละเอียดการชำระค่าบริการ เนื่องจากปัจจุบันเปลี่ยนเป็นไปหน้า แบงค์เลย)
    ...      -สรุปรายละเอียด
    ...         - หมายเลข
    ...         - ช่องทาง
    ...         - ประเภทบัตร
    ...         - จำนวนเงิน
    ...      -บัตรเครดิต/บัตรเดบิต
    ...         -เลขที่บัตร (textbox)
    ...         -วันหมดอายุ (ddl:MM) (ddl:YYYY)
    ...         -CVV (textbox)
    ...      -ปุ่ม "ตกลง"
    ...      -ปุ่ม "ยกเลิก"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    11.จับภาพหน้าจอ
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
    Input Payment Destination Number    ${AISBosPostpaidHaveOutStandingBalanceNoCreditCard}
    Confirm Payment Number
    Select Payment Channal    MasterCard
    Confirm Payment Detail
    Verify Payment Detail Page By MasterCard Have Outstanding Balance And No Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_10_2] Verify page payment detail outstanding balance by JCB in case no creditCard
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือกช่องทางการชำระ (JCB)
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการชำระค่าบริการ" (18/10/2017 step 8 flow เปลี่ยนเป็น ไม่ Verify สรุปรายละเอียดการชำระค่าบริการ เนื่องจากปัจจุบันเปลี่ยนเป็นไปหน้า แบงค์เลย)
    ...      -สรุปรายละเอียด
    ...         - หมายเลข
    ...         - ช่องทาง
    ...         - ประเภทบัตร
    ...         - จำนวนเงิน
    ...      -บัตรเครดิต/บัตรเดบิต
    ...         -เลขที่บัตร (textbox)
    ...         -วันหมดอายุ (ddl:MM) (ddl:YYYY)
    ...         -CVV (textbox)
    ...      -ปุ่ม "ตกลง"
    ...      -ปุ่ม "ยกเลิก"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    11.จับภาพหน้าจอ
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
    Input Payment Destination Number    ${AISBosPostpaidHaveOutStandingBalanceNoCreditCard}
    Confirm Payment Number
    Select Payment Channal    JCB
    Confirm Payment Detail
    Verify Payment Detail Page By JCB Have Outstanding Balance And No Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_11_2] Verify page payment detail outstanding balance by AMEX in case no creditCard
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือกช่องทางการชำระ (JCB)
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการชำระค่าบริการ" (18/10/2017 step 8 flow เปลี่ยนเป็น ไม่ Verify สรุปรายละเอียดการชำระค่าบริการ เนื่องจากปัจจุบันเปลี่ยนเป็นไปหน้า แบงค์เลย)
    ...      -สรุปรายละเอียดการชำระเงิน
    ...         - หมายเลขที่ต้องการชำระ
    ...         - ช่องทางการชำระ
    ...         - ประเภทบัตร
    ...         - จำนวนเงิน
    ...      -ปุ่ม "ตกลง"
    ...      -ปุ่ม "กลับ"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)  (18/10/2017 ไม่ verify หน้าฑนาคารเนื่องจากไม่สามารถไปได้)
    ...    11.จับภาพหน้าจอ
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
    Input Payment Destination Number    ${AISBosPostpaidHaveOutStandingBalanceNoCreditCard}
    Confirm Payment Number
    Select Payment Channal    AMEX
    Confirm Payment Detail
    Verify Payment Detail Page AMEX Channal    ${AISBosPostpaidHaveOutStandingBalanceNoCreditCard}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_12_2] Verify page payment detail outstanding balance by E-wallet in case no creditCard
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือกช่องทางการชำระ (EWallet)
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการชำระค่าบริการ"
    ...      -หมายเลขโทรศัพท์
    ...      -สรุปรายละเอียดการชำระเงิน
    ...         - หมายเลขที่ต้องการชำระ
    ...         - ช่องทางการชำระ
    ...         - จำนวนเงิน
    ...      -ปุ่ม "ตกลง"
    ...      -ปุ่ม "กลับ"
    ...    9.จับภาพหน้าจอ
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
    Input Payment Destination Number    ${AISBosPostpaidHaveOutStandingBalanceNoCreditCard}
    Confirm Payment Number
    Select Payment Channal    EWallet
    Confirm Payment Detail
    Verify Payment Detail Page E Wallet Channal    ${AISBosPostpaidHaveOutStandingBalanceNoCreditCard}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_13_2] Verify page payment detail outstanding balance by VISA
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือกช่องทางการชำระ (VISA)
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการชำระค่าบริการ"
    ...      -สรุปรายละเอียด
    ...         - หมายเลข
    ...         - จำนวนเงิน
    ...      -บัตรเครดิต/บัตรเดบิต
    ...         - เลขที่บัตร (1234 56** **** 1234)
    ...         - CVV (xxx)
    ...      -ปุ่ม "ตกลง"
    ...      -ปุ่ม "ยกเลิก"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    11.จับภาพหน้าจอ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    Payment
    Input Payment Destination Number    ${AISNonBosPostpaidHaveOutStandingBalanceHaveCreditCard}
    Confirm Payment Number
    Select Payment Channal For have CreditCard    VISA
    Confirm Payment Detail For have CreditCard
    Verify Payment Page Select VISA Channel Have Outstanding Balance And Have Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_14_2] Verify page payment detail outstanding balance by MasterCard
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือกช่องทางการชำระ (MasterCard)
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการชำระค่าบริการ"
    ...      -สรุปรายละเอียด
    ...         - หมายเลข
    ...         - จำนวนเงิน
    ...      -บัตรเครดิต/บัตรเดบิต
    ...         - เลขที่บัตร (1234 56** **** 1234)
    ...         - CVV (xxx)
    ...      -ปุ่ม "ตกลง"
    ...      -ปุ่ม "ยกเลิก"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    11.จับภาพหน้าจอ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    Payment
    Input Payment Destination Number    ${AISNonBosPostpaidHaveOutStandingBalanceHaveCreditCard}
    Confirm Payment Number
    Select Payment Channal For have CreditCard    MasterCard
    Confirm Payment Detail For have CreditCard
    Verify Payment Page Select MasterCard Channel Have Outstanding Balance And Have Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_15_2] Verify page payment detail outstanding balance by JCB
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือกช่องทางการชำระ (JCB)
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบหน้า "สรุปรายละเอียดการชำระค่าบริการ"
    ...      -สรุปรายละเอียด
    ...         - หมายเลข
    ...         - จำนวนเงิน
    ...      -บัตรเครดิต/บัตรเดบิต
    ...         - เลขที่บัตร (1234 56** **** 1234)
    ...         - CVV (xxx)
    ...      -ปุ่ม "ตกลง"
    ...      -ปุ่ม "ยกเลิก"
    ...    9.กดปุ่ม "ตกลง"
    ...    10.ตรวจสอบหน้า "ธนาคาร" (verify object in page)
    ...    11.จับภาพหน้าจอ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    TopupAndPayment
    Select Sub Menu    Payment
    Input Payment Destination Number    ${AISNonBosPostpaidHaveOutStandingBalanceHaveCreditCard}
    Confirm Payment Number
    Select Payment Channal For have CreditCard    JCB
    Confirm Payment Detail For have CreditCard
    Verify Payment Page Select JCB Channel Have Outstanding Balance And Have Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_16_2] Verify page payment outstanding balance by credit card in case select other payment channels
    [Documentation]    Owner : Tinpan
    ...    Ntype : 3PE
    ...    Status : Active
    ...    TestStep
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอก หมายเลขโทรศัพท์ที่ต้องการเติมเงินให้
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือก "อื่นๆ"
    ...    7.ตรวจสอบหน้า "ชำระค่าบริการ"
    ...      -หมายเลขโทรศัพท์
    ...      -รายละเอียดค่าใช้บริการ
    ...      -รอบบิล
    ...      -กำหนดชำระ
    ...      -ค่าบริการ
    ...      -รวมค่าใช้บริการ
    ...      -ยอดที่ต้องการชำระ
    ...      -ช่องทางการชำระ (Ver ว่ามีบัตรมั้ย)
    ...         -บัตรเครดิต/เดบิต
    ...         -จัดการข้อมูลบัตร
    ...           - VISA (1234 56** **** 1234)
    ...           - MasterCard (1234 56** **** 1234)
    ...           - อื่นๆ
    ...           - VISA
    ...           - MasterCard
    ...           - JCB
    ...           - AMEX
    ...           - E-Wallet
    ...      -ตรวจสอบรายการการชำระค่าบริการของคุณอีกครั้ง
    ...    แล้วกดปุ่ม ต่อไป เพื่อทำรายการ
    ...      -ปุ่ม "กลับ"
    ...      -ปุ่ม "ต่อไป"
    ...      -เงื่อนไขบริการ
    ...    8.จับภาพหน้าจอ
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
        Select Menu    TopupAndPayment
    Select Sub Menu    Payment
    Input Payment Destination Number    ${AISNonBosPostpaidHaveOutStandingBalanceHaveCreditCard}
    Confirm Payment Number
    Select Payment Channal For have CreditCard    Other
    Verify Payment Page Select Other Channel Have Outstanding Balance And Have Credit Card    ${AISNonBosPostpaidHaveOutStandingBalanceHaveCreditCard}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

