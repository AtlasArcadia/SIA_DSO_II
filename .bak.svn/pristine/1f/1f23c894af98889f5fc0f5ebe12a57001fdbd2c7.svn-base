*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/TopUpAndPayment.txt

*** Test Cases ***
[F1_TopupPayment_IOS_1_1-2_N_81_2] Input PIN Code Less Than 16 Digit
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
    [Tags]    success    regression    active.   demo
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

[F1_TopupPayment_IOS_1_1-2_N_82_2] Input Wrong PIN Code
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

[F1_TopupPayment_IOS_1_1-2_N_83_2] Verify Top Up VISA not have creditcard and Destination Number MaxBalance
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

[F1_TopupPayment_IOS_1_1-2_N_84_2] Verify Top Up MASTER not have creditcard and Destination Number MaxBalance
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

[F1_TopupPayment_IOS_1_1-2_N_85_2] Verify Top Up JCB not have creditcard and Destination Number MaxBalance
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

[F1_TopupPayment_IOS_1_1-2_N_87_2] Verify Top Up E-Wallet not have creditcard and Destination Number MaxBalance
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

[F1_TopupPayment_IOS_1_1-2_N_88_2] Verify Top Up Refill not have creditcard and Destination Number MaxBalance
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

[F1_TopupPayment_IOS_1_1-2_N_89_2] Verify Top Up VISA have creditcard and Destination Number MaxBalance
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

[F1_TopupPayment_IOS_1_1-2_N_90_2] Verify Top Up MASTER have creditcard and Destination Number MaxBalance
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

[F1_TopupPayment_IOS_1_1-2_N_91_2] Verify Top Up JCB have creditcard and Destination Number MaxBalance
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

[F2_TopupPayment_IOS_1_1_Y_1_2] Verify Page Payment
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

[F2_TopupPayment_IOS_1_1_Y_2_2] Verify Page Payment not have usagebalance and not have creditcard
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

[F2_TopupPayment_IOS_1_1_Y_3_2] Verify Page Payment not have usagebalance and have creditcard
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
    Input Payment Destination Number    ${AISPostpaidNumber}
    Confirm Payment Number
    Verify Payment Page No UsageBalance And Have CreditCard Mobile Number    ${AISPostpaidNumber}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_4_2] Verify Page Payment have usagebalance and not have creditcard
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

[F2_TopupPayment_IOS_1_1_Y_5_2] Verify page Payment Outstanding balance add credit card
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
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}

[F2_TopupPayment_IOS_1_1_Y_6_2] Verify page Payment Remove card
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
    Manage Card
    Verify page Manage Credit Card    ${Number}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_7_2] Verify popup msg Would you like to remove this card on page Remove card
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
    Manage Card
    Select Delete First Card
    Verify Delete Card Popup Message
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_8_2] Verify page Payment Detail By VISA Have Outstanding balance and no credit card
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
    Verify Payment Detail Page By AMEX Channal    ${AISBosPostpaidHaveOutStandingBalanceNoCreditCard}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_9_2] Verify page Payment Detail Outstanding balance by MasterCard in case no information
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

[F2_TopupPayment_IOS_1_1_Y_10_2] Verify page Payment Detail Outstanding balance by JCB in case no information
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

[F2_TopupPayment_IOS_1_1_Y_11_2] Verify page Payment Detail Outstanding balance by AMEX in case no information
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
    ...      -สรุปรายละเอียดการชำระเงิน
    ...         - หมายเลขที่ต้องการชำระ
    ...         - ช่องทางการชำระ
    ...         - ประเภทบัตร
    ...         - จำนวนเงิน
    ...      -ปุ่ม "ตกลง"
    ...      -ปุ่ม "กลับ"
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
    Select Payment Channal    AMEX
    Confirm Payment Detail
    Verify Payment Detail Page By AMEX Channal    ${AISBosPostpaidHaveOutStandingBalanceNoCreditCard}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_Y_12_2] Verify page Payment Detail Outstanding balance by E-wallet in case no information
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

[F2_TopupPayment_IOS_1_1_Y_13_2] Verify page Payment Detail Outstanding balance by VISA
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
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}

[F2_TopupPayment_IOS_1_1_Y_14_2] Verify page Payment Detail Outstanding balance by MasterCard
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
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}

[F2_TopupPayment_IOS_1_1_Y_15_2] Verify page Payment Detail Outstanding balance by JCB
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
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}

[F2_TopupPayment_IOS_1_1_Y_16_2] Verify page Payment Outstanding balance by credit card in case select other payment channels
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
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
