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
    [Tags]    TH    EN    3PE    active    success    demo
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

[F1_YourBalanceHistory_IOS_2,4_1-2_Y_1_2] Your Current Charge(Unbilled) : No current charge
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "เช็กยอดค่าโทร"
    ...    3. เลือก "ค่าใช้บริการระหว่างรอบบิล"
    ...    4. ตรวจสอบหัวข้อ "ค่าใช้บริการระหว่างรอบบิล"
    ...    5. ตรวจสอบ "ขออภัย ระบบไม่สามารถให้บริการได้ในขณะนี้ กรุณาเข้าใช้บริการใหม่อีกครั้ง"
    [Tags]    demotin
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Your Current Charge
    Input ID Citizen    ${ID_Citizen}
    Verify Dialog Message You have no unbilled charges currently
    [Teardown]    Keyword For Teardown    ${#dict_device_name}


[F1_YourBalanceHistory_IOS_2,4_1-2_Y_2_2] Your Current Charge(Unbilled) : Have current charge
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    "1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""เช็กยอดค่าโทร""
    ...    3. เลือก ""ค่าใช้บริการระหว่างรอบบิล""
    ...    4. ตรวจสอบหัวข้อ ""ค่าใช้บริการระหว่างรอบบิล""
    ...    5. ตรวจสอบ
    ...    - รายละเอียดค่าใช้บริการรอบบิลปัจจุบัน
    ...    - จากวันที่
    ...    - ถึงวันที่
    ...    - รายละเอียดการใช้งาน
    ...    - หน่วยที่ใช้
    ...    - ค่าบริการ (฿)
    ...    - รวมค่าใช้บริการภายในประเทศ
    ...    - รวมค่าใช้บริการ
    ...    - รวมค่าใช้บริการทั้งสิ้น (รวม vat 7%)
    ...    - รวมค่าใช้บริการทั้งสิ้น"
    #[Tags]    tin
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}_HaveCurrentCharge=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveCurrentCharge
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Your Current Charge
    Input ID Citizen    ${ID_Citizen}
    Verify Between Bill
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F2_YourBalanceHistory_IOS_2,4_1-2_Y_1_2] Voice Call : No transaction
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    "1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""เช็กยอดค่าโทร""
    ...    3. เลือก ""รายละเอียดค่าใช้บริการ""
    ...    4. ใส่หมายเลขบัตรประชาชน
    ...    5. ตรวจสอบหัวข้อ ""รายละเอียดค่าใช้บริการ""
    ...    6. เลือก ""การโทร""
    ...    7. ตรวจสอบ ""วันที่/เวลา""
    ...    8. ตรวจสอบ ""ปลายทาง""
    ...    9. ตรวจสอบ ""หน่วย""
    ...    10. ตรวจสอบ ""ค่าบริการ (฿)""
    ...    11. ตรวจสอบ ""ไม่พบรายการที่ต้องการค้นหา"""
    [Tags]    demotin
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Usage Detail History
    Input ID Citizen    ${ID_Citizen}
    Verify Title And Billing Cycle Usage Detail History    ${Number}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F2_YourBalanceHistory_IOS_2,4_1-2_Y_2_2] Internet/Value Added Service : No transaction
    [Documentation]    *Owner : TiNn*
    ...
    ...    *Test Step*
    ...
    ...    "1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู ""เช็กยอดค่าโทร""
    ...    3. เลือก ""รายละเอียดค่าใช้บริการ""
    ...    4. ใส่หมายเลขบัตรประชาชน
    ...    5. ตรวจสอบหัวข้อ ""รายละเอียดค่าใช้บริการ""
    ...    6. เลือก ""Internet/บริการเสริม""
    ...    7. ตรวจสอบ ""วันที่/เวลา""
    ...    8. ตรวจสอบ ""ปลายทาง""
    ...    9. ตรวจสอบ ""หน่วย""
    ...    10. ตรวจสอบ ""ค่าบริการ(฿)""
    ...    11. ตรวจสอบ ""ไม่พบรายการที่ต้องการค้นหา"""
    [Tags]    demotin
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Usage Detail History
    Input ID Citizen    ${ID_Citizen}
    Verify Title And Billing Cycle Usage Detail History    ${Number}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F2_YourBalanceHistory_IOS_2,4_1-2_N_3_2]Invalid ID number
    [Documentation]    *Owner : Asma
     ...    Source Number : 3PO, 3BO
     ...    Status : Active
     ...
     ...    TH
     ...    ID No.38012612478681. เข้าสู่ระบบ My AIS
     ...    2. เลือกเมนู "เช็กยอดค่าโทร"
     ...    3. เลือก "รายละเอียดค่าใช้บริการ"
     ...    4. ใส่หมายเลขบัตรประชาชนไม่ถูกต้อง "3801261247868"
     ...    5. เลือก "ตกลง"
     ...    6. ตรวจสอบข้อความ "กรุณาระบุหมายเลขประจำตัวให้ถูกต้อง"none
     ...
     ...    EN
     ...    ID No.38012612478681. Login My AIS
     ...    2. Click menu "Balance & Usage Detail"
     ...    3. Click "Usage Detail History"
     ...    4. Enter Invalid ID number "3801261247868"
     ...    5. Click "OK"
     ...    6. Verify message "Please enter Crad Number."none
    [Tags]    TH    EN    3PO    3BO    fail     demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Service Usage Type    UsageDetailHistory_Postpaid
    Input ID Citizen    3801261247868
    Verify PopUp Invalid ID number
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F2_YourBalanceHistory_IOS_2,4_1-2_N_4_2]Incomplete 13 digits
    [Documentation]    *Owner : Asma
    ...    Source Number : 3PO, 3BO
    ...    Status : Active
    ...
    ...    TH
    ...    ID No.17209001. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "เช็กยอดค่าโทร"
    ...    3. เลือก "รายละเอียดค่าใช้บริการ"
    ...    4. ใส่หมายเลขบัตรประชาชนไม่ครบ 13 หลัก "1720900"
    ...    5. เลือก "ตกลง"
    ...    6. ตรวจสอบข้อความ "หมายเลขบัตรประจำตัวที่คุณระบุ ไม่ตรงกับข้อมูลที่เคยให้ไว้กับบริษัท กรุณาระบบใหม่อีกครั้ง"none
    ...
    ...    EN
    ...    ID No.17209001. Login My AIS
    ...     2. Click menu "Balance & Usage Detail"
    ...     3. Click "Usage Detail History"
    ...     4. Enter Incomplete 13 digits "1720900"
    ...     5. Click "OK"
    ...     6. Verify message "The national ID Card number you have entered is not the same as the one you previously provided. Please enter again."none
    [Tags]    TH    EN    3PO    3BO    fail
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Service Usage Type    UsageDetailHistory_Postpaid
    Input ID Citizen    1720900
    Verify PopUp Incomplete 13 digits
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F2_YourBalanceHistory_IOS_2,4_1-2_N_5_2]Enter invalid ID number over 3 times
    [Documentation]    *Owner : Asma
    ...    Source Number : 3PO, 3BO
    ...     Status : Active
    ...
    ...     TH
    ...     ID No.12121212121211. เข้าสู่ระบบ My AIS
    ...     2. เลือกเมนู "เช็กยอดค่าโทร"
    ...     3. เลือก "รายละเอียดค่าใช้บริการ"
    ...     4. ใส่หมายเลขบัตรประชาชน "1212121212121" เกิน 3 ครั้ง
    ...     5. เลือก "ตกลง"
    ...     6. ตรวจสอบข้อความ "คุณระบุเลขที่บัตรประจำตัวไม่ถูกต้อง ครบ 3ครั้งกรุณาเข้ามาใช้บริการใหม่ภายหลัง"none
    ...
    ...     EN
    ...     ID No.12121212121211. Login My AIS
    ...     2. Click menu "Balance & Usage Detail"
    ...     3. Click "Usage Detail History"
    ...     4. Enter ID Number "1212121212121" over 3 times
    ...     5. Click "OK"
    ...     6. Verify message "You have entered incorrect national ID card number three times.Please sign out and try again later."none
    [Tags]    TH    EN    3PO    3BO    fail
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Service Usage Type    UsageDetailHistory_Postpaid
    Input Invalid ID Citizen N Round    1212121212121    3
    Verify PopUp Invalid ID number over 3 times
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F2_YourBalanceHistory_IOS_2,4_1-2_Y_6_2]Internet/Value Added Service: Have transaction
    [Documentation]    *Owner : Asma
    ...    Source Number : 3PO, 3BO
    ...    Status : Active
    ...
    ...    No. 0937019815
    ...    ID No.3801262532458
    ...    TH
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "เช็กยอดค่าโทร"
    ...    3. เลือก "รายละเอียดค่าใช้บริการ"
    ...    4. ใส่หมายเลขบัตรประชาชน
    ...    5. ตรวจสอบหัวข้อ "รายละเอียดค่าใช้บริการ"
    ...    6. เลือก "Internet/บริการเสริม"
    ...    7. ตรวจสอบ "วันที่/เวลา"
    ...    8. ตรวจสอบ "ปลายทาง"
    ...    9. ตรวจสอบ "หน่วย"
    ...    10. ตรวจสอบ "ค่าบริการ (฿)"
    ...    11. ตรวจสอบแถบการโทร เช่น บริการรับส่งข้อความ SMS (ครั้ง)
    ...    12. ตรวจสอบข้อมูลการโทรแถบแรก โดยไม่สนใจข้อมูลด้านในnone
    ...
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Balance & Usage Detail"
    ...    3. Click "Usage Detail History"
    ...    4. Enter ID number
    ...    5. Verify title "Usage Detail History"
    ...    6. Click "Voice Call"
    ...    7. Verify "Date/Time"
    ...    8. Verify "Destination"
    ...    9. Verify "Unit"
    ...    10. Verify "Fee (฿)"
    ...    11. Verify tab ex. Internet
    ...    12. Verify data first rownone
    [Tags]    TH    EN    3PO    3BO    success     demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Service Usage Type    UsageDetailHistory_Postpaid
    Input ID Citizen    ${ID_Citizen}
    Verify Title And Billing Cycle Usage Detail History    ${Number}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F2_YourBalanceHistory_IOS_2,4_1-2_Y_7_2] Voice Call Have transaction
    [Documentation]    *Owner : Lek
    ...    Source Number : 3PO, 3BO
    ...    Status : Active
    ...    No. 0937019815
    ...    ID No.3801262532458
    ...    TH
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "เช็กยอดค่าโทร"
    ...    3. เลือก "รายละเอียดค่าใช้บริการ"
    ...    4. ใส่หมายเลขบัตรประชาชน
    ...    5. ตรวจสอบหัวข้อ "รายละเอียดค่าใช้บริการ"
    ...    6. เลือก "การโทร"
    ...    7. ตรวจสอบ "วันที่/เวลา"
    ...    8. ตรวจสอบ "ปลายทาง"
    ...    9. ตรวจสอบ "หน่วย"
    ...    10. ตรวจสอบ "ค่าบริการ (฿)"
    ...    11. ตรวจสอบแถบการโทร เช่น โทรพื้นที่เดียวกัน
    ...    12. ตรวจสอบข้อมูลการโทรแถบแรก โดยไม่สนใจข้อมูลด้านใน
    ...
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Balance & Usage Detail"
    ...    3. Click "Usage Detail History"
    ...    4. Enter ID number
    ...    5. Verify title "Usage Detail History"
    ...    6. Click "Voice Call"
    ...    7. Verify "Date/Time"
    ...    8. Verify "Destination"
    ...    9. Verify "Unit"
    ...    10. Verify "Fee (฿)"
    ...    11. Verify tab ex. Local call
    ...    12. Verify data first row
    [Tags]    active     TH    EN    3PO    3BO    success    ID_Citizen
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveTransaction
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}_HaveTransaction
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Usage Detail History
    Input ID Citizen    ${ID_Citizen}
    Verify Title And Billing Cycle Usage Detail History   ${Number}
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F2_YourBalanceHistory_IOS_2,4_1-2_N_8_2] No enter ID number
    [Documentation]    *Owner : Lek
    ...    Source Number : 3PO, 3BO
    ...    Status : Active
    ...    TH
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "เช็กยอดค่าโทร"
    ...    3. เลือก "รายละเอียดค่าใช้บริการ"
    ...    4. ตรวจสอบหัวข้อ "รายละเอียดค่าใช้บริการ"
    ...    5. เลือก "ตกลง"
    ...    6. ตรวจสอบข้อความ "กรุณาระบุหมายเลขประจำตัวให้ถูกต้อง"
    ...
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Balance & Usage Detail"
    ...    3. Click "Usage Detail History"
    ...    4. Verify title "Usage Detail History"
    ...    5. Click "OK"
    ...    6. Verify message "Please enter Card Number."
    [Tags]    active     TH    EN    3PO    3BO    fail
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveTransaction
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Usage Detail History
    ConfirmID_Citizen
    Verify Dialog Message Please enter Card Number
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F2_YourBalanceHistory_IOS_2,4_1-2_N_9_2] Invalid ID number In case card of other people
    [Documentation]    *Owner : Lek
    ...    Source Number : 3PO, 3BO
    ...    Status : Active
    ...    ID No.1212121212121
    ...    TH
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "เช็กยอดค่าโทร"
    ...    3. เลือก "รายละเอียดค่าใช้บริการ"
    ...    4. ใส่หมายเลขบัตรประชาชนไม่ถูกต้อง "1212121212121"
    ...    5. เลือก "ตกลง"
    ...    6. ตรวจสอบข้อความ "หมายเลขบัตรประจำตัวที่คุณระบุ ไม่ตรงกับข้อมูลที่เคยให้ไว้กับบริษัท กรุณาระบบใหม่อีกครั้ง"
    ...
    ...    EN
    ...    1. Login My AIS
    ...    2. Click menu "Balance & Usage Detail"
    ...    3. Click "Usage Detail History"
    ...    4. Enter Invalid ID number "1212121212121"
    ...    5. Click "OK"
    ...    6. Verify message "The national ID Card number you have entered is not the same as the one you previously provided. Please enter again."
    [Tags]    active     TH    EN    3PO    3BO    fail
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_HaveTransaction
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Usage Detail History
    Input ID Citizen    1212121212121
    Verify Dialog Message Invalid Id Number
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F3_YourBalanceHistory_IOS_2,4_1-2_Y_1_2] Activate phone number for 1 month.
    [Documentation]    ***Owner : Tong***
    ...    Source Number : 3PO, 3BO
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "เช็กยอดค่าโทร"
    ...    3. เลือก "ค่าใช้บริการย้อนหลัง"
    ...    4. กรอก "เลขบัตรประชาชน"
    ...    5. กด "ตกลง"
    ...    6. ตรวจสอบหัวข้อ "ค่าใช้บริการย้อนหลัง"
    ...    7. ตรวจสอบ
    ...    - รอบบิล
    ...    - ค่าบริการ
    ...    - ใบแจ้งค่าบริการ
    ...    - รายการรอบบิลย้อนหลัง 1 เดือน (เช็คว่ามีครบ 1 รายการ)
    ...    - คลิก เพื่อดูรายละเอียดใขแจ้งค่าใช้บริการ
    ...    - คุณสามารถดูใบแจ้งค่าใช้บริการหลังสิ้นสุดรอบบิลแล้ว 8 วัน
    ...    - ปุ่ม"ชำระค่าบริการ"
    ...    8. จับภาพหน้าจอ
    [Tags]    TH    EN    3PO    3BO    active    ID_Citizen
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}     ${ar_NType}_3Month
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}_3Month
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Your Balance History
    Input ID Citizen    ${ID_Citizen}
    Verify Balance History 1Month
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F3_YourBalanceHistory_IOS_2,4_1-2_Y_2_2] Activate phone number for 3 month.
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PO, 3BO
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "เช็กยอดค่าโทร"
    ...    3. เลือก "ค่าใช้บริการย้อนหลัง"
    ...    4. กรอก "เลขบัตรประชาชน"
    ...    5. กด "ตกลง"
    ...    6. ตรวจสอบหัวข้อ "ค่าใช้บริการย้อนหลัง"
    ...    7. ตรวจสอบ
    ...    - รอบบิล
    ...    - ค่าบริการ
    ...    - ใบแจ้งค่าบริการ
    ...    - รายการรอบบิลย้อนหลัง 3 เดือน (เช็คว่ามีครบ 3 รายการ)
    ...    - คลิก เพื่อดูรายละเอียดใขแจ้งค่าใช้บริการ
    ...    - คุณสามารถดูใบแจ้งค่าใช้บริการหลังสิ้นสุดรอบบิลแล้ว 8 วัน
    ...    - ปุ่ม"ชำระค่าบริการ"
    ...    8. จับภาพหน้าจอ
    [Tags]    TH    EN    3PO    3BO    active    ID_Citizen
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_3Month
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}_3Month
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Your Balance History
    Input ID Citizen    ${ID_Citizen}
    Verify Balance History 3Month
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F3_YourBalanceHistory_IOS_2,4_1-2_Y_3_2] Show Detail BillingCycle
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PO, 3BO
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "เช็กยอดค่าโทร"
    ...    3. เลือก "ค่าใช้บริการย้อนหลัง"
    ...    4. กรอก "เลขบัตรประชาชน"
    ...    5. กด "ตกลง"
    ...    6. ตรวจสอบหัวข้อ "ค่าใช้บริการย้อนหลัง"
    ...    7. คลิก แว่นขยาย
    ...    8. ตรวจสอบ "ใบแจ้งค่าใช้บริการ"
    ...    - ใบแจ้งค่าใช้บริการ (STATEMENT)
    ...    - Logo AIS
    ...    9. จับภาพหน้าจอ
    [Tags]    TH    EN    3PO    3BO    active    ID_Citizen
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_3Month
    ${ID_Citizen}    Get From Dictionary    ${virtual_device_1_ID_Citizen}    ${ar_NType}_3Month
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Select Your Balance History
    Input ID Citizen    ${ID_Citizen}
    View Detail BillingCycle
    [Teardown]    Keyword For Teardown    ${#dict_device_name}

[F3_YourBalanceHistory_IOS_2,4_1-2_Y_4_2] Verify Balance & Usage Detail Page
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PO, 3BO
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. เลือกเมนู "เช็กยอดค่าโทร"
    ...    3. ตรวจสอบหน้า "เช็คยอดค่าโทร"
    ...    - เช็คยอดค่าโทร
    ...    - ค่าใช้บริการระหว่างรอบบิล
    ...    - ค่าใช้บริการย้อนหลัง
    ...    - รายละเอียดค่าใช้บริการ
    ...    4. จับภาพหน้าจอ
    [Tags]    TH    EN    3PO    3BO    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    BalanceAndUsageDetail
    Verify Balance and Usage Detail Page
    [Teardown]    Keyword For Teardown    ${#dict_device_name}
