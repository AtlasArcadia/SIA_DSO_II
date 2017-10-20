*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/TopUpAndPayment.txt

*** Test Cases ***
[F1_TopupPayment_IOS_1_1-2_Y_11_2] Verify page Top Up other channel
    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Select "Other"
    ...    5.Verify page "Top Up"
    ...    -Mobile no
    ...    -Enter destination number you wish to top up
    ...    -Mobile no (Textbox)
    ...    -Please select top up channels (Ver ว่ามีบัตรมั้ย)
    ...    -Credit Card/Debit Card
    ...    -Manage
    ...    - VISA (1234 56** **** 1234)
    ...    - MasterCard (1234 56** **** 1234)
    ...    - Other
    ...    - VISA
    ...    - MasterCard
    ...    - JCB
    ...    - AMEX
    ...    - E-Wallet
    ...    - Refill Card
    ...    -Select top up amount
    ...    -10,20,30,40,50,100,200,300,400,500,600,700,800,1000,15000
    ...    -Please verify your top up information and click Next to confirm transaction.
    ...    -"Next" button
    ...    -Terms & Conditions
    ...    6.Capture Screen -
    [Tags]    active    success    regression    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify TopUp Page has CreditCard iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_12_2] Verify page Your Credit/Debit Card
    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Select "Manage"
    ...    5.Verify page "Your Credit/Debit Card"
    ...    -Mobile no
    ...    -Credit/Debit Card detail
    ...    -Your credit/debit card information for payment and top up via my AIS.
    ...    -Ver ว่ามีบัตรมั้ย
    ...    6.Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Your Credit/Debit Card iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_13_2] Verify pop up msg Would you like to remove this card?
    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Select "Manage"
    ...    5.Click x (กากบาท)
    ...    6.Verify popup msg "Would you like to remove this card ?"
    ...    -VISA (1234 56** **** 1234)
    ...    -"Confirm" button
    ...    -"Cancel" button
    ...    7.Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify Manage CreditCard iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_14_2] Select E-wallet
    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Select top up channels (E-Wallet)
    ...    5.Select top up amount
    ...    6.Click "Next"
    ...    7.Verify page "Top Up Summary"
    ...    -Mobile no
    ...    -Summary of top up
    ...    - Top up channel
    ...    - Top up to number
    ...    - Amount
    ...    -"OK" button
    ...    -"Back" button
    ...    8.Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify TopUp by EWallet
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1_TopupPayment_IOS_1_1-2_Y_15_2] Select Refill Card
    [Documentation]    **Owner:Nat**
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login My AIS
    ...    2.Click menu "Top Up/ Payment"
    ...    3.Click menu "Top Up"
    ...    4.Select top up channels (Refill Card)
    ...    5.Verify page "Refill Card"
    ...    -Mobile no
    ...    -Enter destination number you wish to top up
    ...    -Mobile no (Textbox)
    ...    -Please select top up channels
    ...    -Credit Card/Debit Card
    ...    -E-Wallet
    ...    -Refill Card
    ...    -Enter 16 digits PIN code. (Textbox)
    ...    -Please verify your top up information and click Next to confirm transaction.
    ...    -"Next" button
    ...    -Terms & Conditions
    ...    6.Enter 16 digits PIN code
    ...    7.Click "Next"
    ...    8.Verify page "Summary of top up"
    ...    -Mobile no
    ...    -Summary of top up
    ...    -Top up channel
    ...    -Top up to number
    ...    -With pin
    ...    -"OK" button
    ...    -"Back" button
    ...    9.Capture Screen -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Verify TopUP by RefillCard iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_17_2] Verify popup msg by VISA in case no information and Input amount 0 Baht
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.กรอกยอดที่ต้องการชำระ = 0 Baht
    ...    7.เลือกช่องทางการชำระ (VISA)
    ...    8.กดปุ่ม "ต่อไป"
    ...    9.ตรวจสอบ popup msg: กรุณากรอกยอดที่ต้องการชำระ
    ...    10.จับภาพหน้าจอ -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_NoCreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_NoCreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up msg VISA in case amount 0 Baht
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_18_2] Verify popup msg by MasterCard in case no information and Input amount 0 Baht
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.กรอกยอดที่ต้องการชำระ = 0 Baht
    ...    7.เลือกช่องทางการชำระ (MasterCard)
    ...    8.กดปุ่ม "ต่อไป"
    ...    9.ตรวจสอบ popup msg: กรุณากรอกยอดที่ต้องการชำระ
    ...    10.จับภาพหน้าจอ -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_NoCreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_NoCreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up msg MasterCard in case amount 0 Baht
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_19_2] Verify popup msg by JCB in case no Credit Card and Input amount 0 Baht
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.กรอกยอดที่ต้องการชำระ = 0 Baht
    ...    7.เลือกช่องทางการชำระ (JCB)
    ...    8.กดปุ่ม "ต่อไป"
    ...    9.ตรวจสอบ popup msg: กรุณากรอกยอดที่ต้องการชำระ
    ...    10.จับภาพหน้าจอ -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_NoCreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_NoCreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up msg JCB in case amount 0 Baht No Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_20_2] Verify popup msg by AMEX in case no Credit Card and Input amount 0 Baht
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.กรอกยอดที่ต้องการชำระ = 0 Baht
    ...    7.เลือกช่องทางการชำระ (AMEX)
    ...    8.กดปุ่ม "ต่อไป"
    ...    9.ตรวจสอบ popup msg: กรุณากรอกยอดที่ต้องการชำระ
    ...    10.จับภาพหน้าจอ -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_NoCreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_NoCreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up msg AMEX in case amount 0 Baht No Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_21_2] Verify popup msg by E-Wallet in case Input amount 0 Baht
    [Documentation]    *** \ Owner: Nat ***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.กรอกยอดที่ต้องการชำระ = 0 Baht
    ...    7.เลือกช่องทางการชำระ (E-Wallet)
    ...    8.กดปุ่ม "ต่อไป"
    ...    9.ตรวจสอบ popup msg: กรุณากรอกยอดที่ต้องการชำระ
    ...    10.จับภาพหน้าจอ -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Popup msg E-Wallet in case amount 0 Baht
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_22_2] Verify popup msg by VISA in case have Credit Card and Input amount 0 Baht
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.กรอกยอดที่ต้องการชำระ = 0 Baht
    ...    7.เลือกช่องทางการชำระ (VISA)
    ...    8.กดปุ่ม "ต่อไป"
    ...    9.ตรวจสอบ popup msg: กรุณากรอกยอดที่ต้องการชำระ
    ...    10.จับภาพหน้าจอ -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up msg VISA in case amount 0 Baht have Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_23_2] Verify popup msg by MasterCard in case have Credit Card and Input amount 0 Baht
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.กรอกยอดที่ต้องการชำระ = 0 Baht
    ...    7.เลือกช่องทางการชำระ (MasterCard)
    ...    8.กดปุ่ม "ต่อไป"
    ...    9.ตรวจสอบ popup msg: กรุณากรอกยอดที่ต้องการชำระ
    ...    10.จับภาพหน้าจอ -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up msg MasterCard in case amount 0 Baht have Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_24_2] Verify popup msg by JCB in case have Credit Card and Input amount 0 Baht
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.กรอกยอดที่ต้องการชำระ = 0 Baht
    ...    7.เลือกช่องทางการชำระ (JCB)
    ...    8.กดปุ่ม "ต่อไป"
    ...    9.ตรวจสอบ popup msg: กรุณากรอกยอดที่ต้องการชำระ
    ...    10.จับภาพหน้าจอ -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up msg JCB in case amount 0 Baht have Credit Card
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_25_2] Verify popup msg in case no Credit Card and not select payment channels
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.ไม่เลือกช่องทางการชำระ
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาเลือกช่องทางการชำระ
    ...    9.จับภาพหน้าจอ -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_NoCreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_NoCreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up not select channel
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_26_2] Verify popup msg in case have Credit Card and not select payment channels
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.ไม่เลือกช่องทางการชำระ
    ...    7.กดปุ่ม "ต่อไป"
    ...    8.ตรวจสอบ popup msg: กรุณาเลือกช่องทางการชำระ
    ...    9.จับภาพหน้าจอ -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_CreditCard=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_CreditCard
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up not select channel
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_27_2] Verify popup msg in case not input mobile number
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.ไม่กรอกหมายเลขโทรศัพท์
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือกช่องทางการชำระ(E-Wallet)
    ...    7.ตรวจสอบ popup msg: หมายเลขโทรศัพท์ไม่ถูกต้อง กรุณาตรวจสอบและระบุใหม่อีกครั้ง
    ...    8.จับภาพหน้าจอ -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up Not input mobile number
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_28_2] Verify popup msg in case input mobile number less than 10 digits
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ครบ 10 หลัก
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือกช่องทางการชำระ(E-Wallet)
    ...    7.ตรวจสอบ popup msg: หมายเลขโทรศัพท์ไม่ถูกต้อง กรุณาตรวจสอบและระบุใหม่อีกครั้ง -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up input mobile number not 10 digit
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_29_2] Verify popup msg in case input mobile number invalid
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์ไม่ถูกต้อง(eg.66xxxxxxxx)
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือกช่องทางการชำระ(E-Wallet)
    ...    7.ตรวจสอบ popup msg: หมายเลขโทรศัพท์ไม่ถูกต้อง กรุณาตรวจสอบและระบุใหม่อีกครั้ง -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up input mobile number invalid format
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_30_2] Verify popup msg in case input mobile number not AIS
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์ต่างเครือข่าย
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือกช่องทางการชำระ(E-Wallet)
    ...    7.ตรวจสอบ popup msg: กรุณาระบุหมายเลขโทรศัพท์ในเครือข่ายเอไอเอส
    ...    8.จับภาพหน้าจอ \ -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up input mobile number not AIS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_TopupPayment_IOS_1_1_N_31_2] Verify popup msg in case input mobile number AIS prepaid
    [Documentation]    *** Owner: Nat***
    ...    Source Number : 3PE
    ...    Status : Active
    ...    1.Login เข้าสู่ระบบ My AIS
    ...    2.กดเมนู "เติมเงิน/ จ่ายบิล"
    ...    3.กดเมนู "ชำระค่าบริการ"
    ...    4.กรอกหมายเลขโทรศัพท์ AIS prepaid(eg.0927095991)
    ...    5.กดปุ่ม "ต่อไป"
    ...    6.เลือกช่องทางการชำระ(E-Wallet)
    ...    7.ตรวจสอบ popup msg: หมายเลขที่คุณระบุเป็นหมายเลขในระบบเติมเงิน
    ...    กรุณาตรวจสอบและระบุใหม่อีกครั้ง
    ...    8.จับภาพหน้าจอ -
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select menuTopUpAndPayment
    Select Sub Menu    Payment
    Verify Pop up input mobile number AIS Prepaid
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
