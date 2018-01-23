*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/BalanceAndUsageDetail.txt

*** Test Cases ***
[F1_UsageDetail_IOS_1_1-2_Y_1_2] Verify page Usage Detail History
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    '1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.ตรวจสอบหน้า "ข้อมูลการใช้งาน"
    ...    -ข้อมูลการใช้งาน
    ...    -การโทร
    ...    -Internet / บริการเสริม
    ...    -ข้อมูลการเติมเงิน
    ...    -ข้อมูลการโอนเงิน
    ...    -ข้อมูลการโอนวัน
    ...    -ค่าธรรมเนียม
    ...    4.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Verify Usage Detail History
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F1_UsageDetail_IOS_1_1-2_Y_2_2] Verify page Identify yourself by entering one for your ID number e.g. ID card
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    '1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.เลือกเมนู "การโทร"
    ...    4.ตรวจสอบหน้า "ระบุเลขที่บัตรประจำตัว"
    ...    -หมายเลขโทรศัพท์
    ...    -ตรวจสอบรายละเอียดค่าใช้บริการได้ย้อนหลัง 3 วัน
    ...    -กรุณาระบุเลขที่บัตรประจำตัวของคุณ เช่น บัตรประชาชน บัตรข้าราชการ หรือพาสปอร์ต
    ...    -ปุ่ม "ตกลง"
    ...    5.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Verify Identify yourself by entering page
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F1_UsageDetail_IOS_1_1-2_Y_3_2] Verify page Voice CallIn case: ไม่มีรายการ การโทร
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    '1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.เลือกเมนู "การโทร"
    ...    4.กรอกเลขที่บัตรประจำตัว
    ...    5.ตรวจสอบหน้า การโทร
    ...    -หมายเลขโทรศัพท์
    ...    -การโทร
    ...    -วันที่/เวลา
    ...    -ปลายทาง
    ...    -หน่วย
    ...    -ค่าบริการ (฿)
    ...    -ไม่พบรายการที่ต้องการค้นหา
    ...    6.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    active    success    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Click SubMenu    VoiceCall
    Voice Call Transaction is not Found    ${ID_Citizen}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F1_UsageDetail_IOS_1_1-2_Y_4_2] Verify page Voice CallIn case: มีรายการ การโทร
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    '1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.เลือกเมนู "การโทร"
    ...    4.กรอกเลขที่บัตรประจำตัว
    ...    5.ตรวจสอบหน้า การโทร
    ...    -หมายเลขโทรศัพท์
    ...    -การโทร
    ...    -วันที่/เวลา
    ...    -ปลายทาง
    ...    -หน่วย
    ...    -ค่าบริการ (฿)
    ...    -รายการ (Ver ว่ามีมั้ย)
    ...    6.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Click SubMenu    VoiceCall
    Voice Call Transaction is Found
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F1_UsageDetail_IOS_1_1-2_Y_5_2] Verify page Internet/Value Added ServiceIn case: ไม่มีรายการ Internet/บริการเสริม
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    '1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.เลือกเมนู "Internet/บริการเสริม"
    ...    4.กรอกเลขที่บัตรประจำตัว
    ...    5.ตรวจสอบหน้า Internet/บริการเสริม
    ...    -หมายเลขโทรศัพท์
    ...    -Internet/บริการเสริม
    ...    -วันที่/เวลา
    ...    -ปลายทาง
    ...    -หน่วย
    ...    -ค่าบริการ (฿)
    ...    -ไม่พบรายการที่ต้องการค้นหา
    ...    6.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Click SubMenu    InternetAndValueAddedService
    InternetAndValueAddedService Transaction is not Found    ${ID_Citizen}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F1_UsageDetail_IOS_1_1-2_Y_6_2] Verify page Internet/บริการเสริมIn case: มีรายการ Internet/บริการเสริม
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    '1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.เลือกเมนู "Internet/บริการเสริม"
    ...    4.กรอกเลขที่บัตรประจำตัว
    ...    5.ตรวจสอบหน้า Internet/บริการเสริม
    ...    -หมายเลขโทรศัพท์
    ...    -Internet/บริการเสริม
    ...    -วันที่/เวลา
    ...    -ปลายทาง
    ...    -หน่วย
    ...    -ค่าบริการ (฿)
    ...    -รายการ (Ver ว่ามีมั้ย)
    ...    6.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Click SubMenu    InternetAndValueAddedService
    InternetAndValueAddedService Transaction is Found    ${ID_Citizen}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F1_UsageDetail_IOS_1_1-2_Y_7_2] Verify page Top Up Usage DetailsIn case: ไม่มีรายการ ข้อมูลการเติมเงิน
    [Documentation]    *Owner : Tong
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.เลือกเมนู "ข้อมูลการเติมเงิน"
    ...    4.กรอกเลขที่บัตรประจำตัว
    ...    5.ตรวจสอบหน้า ข้อมูลการเติมเงิน
    ...    -หมายเลขโทรศัพท์
    ...    -ข้อมูลการเติมเงิน
    ...    -วันที่/เวลา
    ...    -จำนวนเงิน (฿)
    ...    -ช่องทาง
    ...    -ไม่พบรายการที่ต้องการค้นหา
    ...    6.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Click SubMenu    TopUpUsageDetails
    TopUp Transaction is not Found    ${ID_Citizen}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F1_UsageDetail_IOS_1_1-2_Y_8_2] Verify page ข้อมูลการเติมเงินIn case: มีรายการ ข้อมูลการเติมเงิน
    [Documentation]    *Owner : Asma
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    '1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.เลือกเมนู "ข้อมูลการเติมเงิน"
    ...    4.กรอกเลขที่บัตรประจำตัว
    ...    5.ตรวจสอบหน้า ข้อมูลการเติมเงิน
    ...    -หมายเลขโทรศัพท์
    ...    -ข้อมูลการเติมเงิน
    ...    -วันที่/เวลา
    ...    -จำนวนเงิน (฿)
    ...    -ช่องทาง
    ...    -รายการ (Ver ว่ามีมั้ย)
    ...    6.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    active    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Usage Detail History
    Select Service Usage Type    TopUpUsageDetails
    Input ID Citizen    ${ID_Citizen}
    Verify Top Up Usage Details    ${Number}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F1_UsageDetail_IOS_1_1-2_Y_9_2] Verify page Balance Transfer Usage DetailsIn case: ไม่มีรายการ ข้อมูลการโอนเงิน
    [Documentation]    *Owner : Asma
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    '1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.เลือกเมนู "ข้อมูลการโอนเงิน"
    ...    4.กรอกเลขที่บัตรประจำตัว
    ...    5.ตรวจสอบหน้า ข้อมูลการโอนเงิน
    ...    -หมายเลขโทรศัพท์
    ...    -ข้อมูลการโอนเงิน
    ...    -วันที่/เวลา
    ...    -โอนไปยัง
    ...    -จำนวน(฿,วัน)
    ...    -ค่าบริการ (฿)
    ...    -ผ่านช่องทางอื่นๆ (IVR, USSD)
    ...    -ไม่พบรายการที่ต้องการค้นหา
    ...    -ผ่านบริการ Give2Gang
    ...    -ไม่พบรายการที่ต้องการค้นหา
    ...    6.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    ID_Citizen    Not_found_Balance_Transfer    active
    ...    success    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Usage Detail History
    Select Service Usage Type    BalanceTransferUsageDetails
    Input ID Citizen    ${ID_Citizen}
    Verify page No Balance Transfer Usage Details    ${Number}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F1_UsageDetail_IOS_1_1-2_Y_10_2] Verify page ข้อมูลการโอนเงินIn case: มีรายการ ข้อมูลการโอนเงิน
    [Documentation]    *Owner : Asma
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    '1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.เลือกเมนู "ข้อมูลการโอนเงิน"
    ...    4.กรอกเลขที่บัตรประจำตัว
    ...    5.ตรวจสอบหน้า ข้อมูลการโอนเงิน
    ...    -หมายเลขโทรศัพท์
    ...    -ข้อมูลการโอนเงิน
    ...    -วันที่/เวลา
    ...    -โอนไปยัง
    ...    -จำนวน(฿,วัน)
    ...    -ค่าบริการ (฿)
    ...    -รายการ (Ver ว่ามีมั้ย)
    ...    6.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    ID_Citizen    Not_found_Balance_Transfer    active
    ...    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Usage Detail History
    Select Service Usage Type    BalanceTransferUsageDetails
    Input ID Citizen    ${ID_Citizen}
    Verify page Balance Transfer Usage Details    ${Number}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F1_UsageDetail_IOS_1_1-2_Y_11_2] Verify page Validity Transfer Usage DetailsIn case: ไม่มีรายการ ข้อมูลการโอนวัน
    [Documentation]    *Owner : Asma
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    '1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.เลือกเมนู "ข้อมูลการโอนวัน"
    ...    4.กรอกเลขที่บัตรประจำตัว
    ...    5.ตรวจสอบหน้า ข้อมูลการโอนวัน
    ...    -หมายเลขโทรศัพท์
    ...    -ข้อมูลการโอนวัน
    ...    -วันที่/เวลา
    ...    -โอนไปยัง
    ...    -จำนวน(฿,วัน)
    ...    -ค่าบริการ (฿)
    ...    -ผ่านช่องทางอื่นๆ (IVR, USSD)
    ...    -ไม่พบรายการที่ต้องการค้นหา
    ...    -ผ่านบริการ Give2Gang
    ...    -ไม่พบรายการที่ต้องการค้นหา
    ...    6.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    ID_Citizen    Not_found_Validity_Transfer    active
    ...    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Usage Detail History
    Select Service Usage Type    ValidityTransferUsageDetails
    Input ID Citizen    ${ID_Citizen}
    Verify page No Validity Transfer Usage Details    ${Number}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F1_UsageDetail_IOS_1_1-2_Y_12_2] Verify page ข้อมูลการโอนวันIn case: มีรายการ ข้อมูลการโอนวัน
    [Documentation]    *Owner : Asma
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    '1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.เลือกเมนู "ข้อมูลการโอนวัน"
    ...    4.กรอกเลขที่บัตรประจำตัว
    ...    5.ตรวจสอบหน้า ข้อมูลการโอนวัน
    ...    -หมายเลขโทรศัพท์
    ...    -ข้อมูลการโอนวัน
    ...    -วันที่/เวลา
    ...    -โอนไปยัง
    ...    -จำนวน(฿,วัน)
    ...    -ค่าบริการ (฿)
    ...    -ผ่านช่องทางอื่นๆ (IVR, USSD)
    ...    -รายการ (Ver ว่ามีมั้ย)
    ...    -ผ่านบริการ Give2Gang
    ...    -รายการ (Ver ว่ามีมั้ย)
    ...    6.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    active    ID_Citizen    Not_found_Validity_Transfer
    ...    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Usage Detail History
    Select Service Usage Type    ValidityTransferUsageDetails
    Input ID Citizen    ${ID_Citizen}
    Verify page Validity Transfer Usage Details    ${Number}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F1_UsageDetail_IOS_1_1-2_Y_13_2] Verify page FeeIn case: ไม่มีรายการ ค่าธรรมเนียม
    [Documentation]    *Owner : Asma
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    '1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.เลือกเมนู "ค่าธรรมเนียม"
    ...    4.กรอกเลขที่บัตรประจำตัว
    ...    5.ตรวจสอบหน้า ค่าธรรมเนียม
    ...    -หมายเลขโทรศัพท์
    ...    -ค่าธรรมเนียม
    ...    -วันที่
    ...    -รายการ
    ...    -ค่าบริการ (฿)
    ...    -การใช้บริการเสริม และ โปรโมชั่น/แพ็กเกจ
    ...    -รายการ (Ver ว่ามีมั้ย)
    ...    -การใช้บริการเช็กยอดเงินผ่านบริการ Give2Gang
    ...    -รายการ (Ver ว่ามีมั้ย)
    ...    6.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    active    ID_Citizen    Not_found_Fee
    ...    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Usage Detail History
    Select Service Usage Type    Fee
    Input ID Citizen    ${ID_Citizen}
    Verify page No Free    ${Number}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F1_UsageDetail_IOS_1_1-2_Y_14_2] Verify page FeeIn case: มีรายการ ค่าธรรมเนียม
    [Documentation]    *Owner : Asma
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    '1.เข้าสู่ระบบ My AIS
    ...    2.เลือกเมนู "ข้อมูลการใช้งาน"
    ...    3.เลือกเมนู "ค่าธรรมเนียม"
    ...    4.กรอกเลขที่บัตรประจำตัว
    ...    5.ตรวจสอบหน้า ค่าธรรมเนียม
    ...    -หมายเลขโทรศัพท์
    ...    -ค่าธรรมเนียม
    ...    -วันที่
    ...    -รายการ
    ...    -ค่าบริการ (฿)
    ...    -การใช้บริการเสริม และ โปรโมชั่น/แพ็กเกจ
    ...    -รายการ (Ver ว่ามีมั้ย)
    ...    -การใช้บริการเช็กยอดเงินผ่านบริการ Give2Gang
    ...    -รายการ (Ver ว่ามีมั้ย)
    ...    6.จับภาพหน้าจอ
    [Tags]    TH    EN    3PE    active    ID_Citizen    Not_found_Fee
    ...    success    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Usage Detail History
    Select Service Usage Type    Fee
    Input ID Citizen    ${ID_Citizen}
    Verify page Free    ${Number}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F0_0_0_Y_0_Test] Smoke test
    [Tags]    smoke    TH    EN
    log    test smoke

F1_YourBalanceHistory_IOS_2,4_1-2_Y_1_2

F1_YourBalanceHistory_IOS_2,4_1-2_Y_1_2

F2_YourBalanceHistory_IOS_2,4_1-2_Y_1_2

F2_YourBalanceHistory_IOS_2,4_1-2_Y_2_2

F2_YourBalanceHistory_IOS_2,4_1-2_N_3_2

F2_YourBalanceHistory_IOS_2,4_1-2_N_4_2

F2_YourBalanceHistory_IOS_2,4_1-2_N_5_2

F2_YourBalanceHistory_IOS_2,4_1-2_Y_6_2

F2_YourBalanceHistory_IOS_2,4_1-2_Y_7_2

F2_YourBalanceHistory_IOS_2,4_1-2_Y_8_2

F2_YourBalanceHistory_IOS_2,4_1-2_N_9_2

F3_YourBalanceHistory_IOS_2,4_1-2_Y_1_2

F3_YourBalanceHistory_IOS_2,4_1-2_Y_2_2

F3_YourBalanceHistory_IOS_2,4_1-2_Y_3_2

F3_YourBalanceHistory_IOS_2,4_1-2_Y_4_2
