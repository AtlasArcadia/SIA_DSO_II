*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/FAQ_YourBalanceAndStatement.txt

*** Test Cases ***
[F2__Help_IOS_1-4_1-2_Y_16_2] Go to Your Balance & Statement
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "ตรวจสอบใบแจ้งและยอดเงิน"
    ...    4.ตรวจสอบหน้าถามตอบ "ตรวจสอบใบแจ้งและยอดเงิน"
    ...        "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...        - ใบแจ้งค่าใช้บริการรายเดือน
    ...        - ตรวจสอบยอดเงินวัน-ทุ-คอล!
    ...        - ใบแจ้งค่าใช้บริการไฟเบอร์
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Your Balance And Statement Submenu
    Verify FAQ Your Balance And Statement Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2__Help_IOS_1-4_1-2_Y_17_2] Go to Your Balance & Statement Verify AIS Monthly Statement first question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "ตรวจสอบใบแจ้งและยอดเงิน"
    ...    4.ตรวจสอบหน้าถามตอบ "ตรวจสอบใบแจ้งและยอดเงิน"
    ...        "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...        - ใบแจ้งค่าใช้บริการรายเดือน
    ...        - ตรวจสอบยอดเงินวัน-ทุ-คอล!
    ...        - ใบแจ้งค่าใช้บริการไฟเบอร์
    ...    5.เลือก "ใบแจ้งค่าใช้บริการรายเดือน"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...          "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...          "ใบแจ้งค่าใช้บริการรายเดือน" (Text)
    ...        - คำถามข้อที่1
    ...        - คำถามข้อที่2
    ...         - คำถามข้อที่3
    ...    7.เลือก " คำถามข้อที่1 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...          "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...          "ใบแจ้งค่าใช้บริการรายเดือน" (Text)
    ...        - Other text (Use Regular expression = ".*")
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Your Balance And Statement Submenu
    Verify FAQ Your Balance And Statement Page
    Select AIS Monthly Statement
    Verify AIS Monthly Statement Question
    ${FAQ_Name}    Select AIS Monthly Statement Question iOS    1
    Verify AIS Monthly Statement Answer    1    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2__Help_IOS_1-4_1-2_Y_18_2] Go to Your Balance & Statement Verify AIS Monthly Statement Second question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...        1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "ตรวจสอบใบแจ้งและยอดเงิน"
    ...    4.ตรวจสอบหน้าถามตอบ "ตรวจสอบใบแจ้งและยอดเงิน"
    ...        "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...        - ใบแจ้งค่าใช้บริการรายเดือน
    ...        - ตรวจสอบยอดเงินวัน-ทุ-คอล!
    ...        - ใบแจ้งค่าใช้บริการไฟเบอร์
    ...    5.เลือก "ใบแจ้งค่าใช้บริการรายเดือน"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...          "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...          "ใบแจ้งค่าใช้บริการรายเดือน" (Text)
    ...        - คำถามข้อที่1
    ...        - คำถามข้อที่2
    ...        - คำถามข้อที่3
    ...    7.เลือก " คำถามข้อที่2 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...          "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...          "ใบแจ้งค่าใช้บริการรายเดือน" (Text)
    ...        - Other text (Use Regular expression = ".*")
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Your Balance And Statement Submenu
    Verify FAQ Your Balance And Statement Page
    Select AIS Monthly Statement
    Verify AIS Monthly Statement Question
    ${FAQ_Name}    Select AIS Monthly Statement Question iOS    2
    Verify AIS Monthly Statement Answer    2    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2__Help_IOS_1-4_1-2_Y_19_2] Go to Your Balance & Statement Verify AIS 1-2-Call Credit Balance first question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...        1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "ตรวจสอบใบแจ้งและยอดเงิน"
    ...    4.ตรวจสอบหน้าถามตอบ "ตรวจสอบใบแจ้งและยอดเงิน"
    ...        "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...        - ใบแจ้งค่าใช้บริการรายเดือน
    ...        - ตรวจสอบยอดเงินวัน-ทุ-คอล!
    ...        - ใบแจ้งค่าใช้บริการไฟเบอร์
    ...    5.เลือก "ตรวจสอบยอดเงินวัน-ทู-คอล!"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...          "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...          "เช็กยอดเงินวัน-ทู-คอล!" (Text)
    ...        - คำถามข้อที่1
    ...        - คำถามข้อที่2
    ...        - คำถามข้อที่3
    ...        - คำถามข้อที่ 4
    ...        - คำถามข้อที่ 5
    ...    7.เลือก " คำถามข้อที่1 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...          "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...          "เช็กยอดเงินวัน-ทู-คอล!" (Text)
    ...        - Other text (Use Regular expression = ".*")
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Your Balance And Statement Submenu
    Verify FAQ Your Balance And Statement Page
    Select AIS One-2-Call Credit Balance
    Verify AIS 1-2-Call Credit Balance Question
    ${FAQ_Name}    Select AIS 1-2-Call Credit Balance Question iOS    1    #Select Second Question
    Verify AIS 1-2-Call Credit Balance Answer    1    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2__Help_IOS_1-4_1-2_Y_20_2] Go to Your Balance & Statement Verify AIS 1-2-Call Credit Balance Second question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...     1.ล๊อคอิน My AIS Application
    ...     2.กดเข้าเมนู "ช่วยเหลือ"
    ...     3.เลือก เมนู "ตรวจสอบใบแจ้งและยอดเงิน"
    ...     4.ตรวจสอบหน้าถามตอบ "ตรวจสอบใบแจ้งและยอดเงิน"
    ...      "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...      - ใบแจ้งค่าใช้บริการรายเดือน
    ...      - ตรวจสอบยอดเงินวัน-ทุ-คอล!
    ...      - ใบแจ้งค่าใช้บริการไฟเบอร์
    ...     5.เลือก "ตรวจสอบยอดเงินวัน-ทู-คอล!"
    ...     6.ตรวจสอบหน้า "ถามตอบ"
    ...      "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...      "เช็กยอดเงินวัน-ทู-คอล!" (Text)
    ...      - คำถามข้อที่1
    ...      - คำถามข้อที่2
    ...      - คำถามข้อที่3
    ...      - คำถามข้อที่ 4
    ...      - คำถามข้อที่ 5
    ...     7.เลือก " คำถามข้อที่2 "
    ...     8.ตรวจสอบหน้า "คำตอบ"
    ...      "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...      "เช็กยอดเงินวัน-ทู-คอล!" (Text)
    ...      - Other text (Use Regular expression = ".*")none
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Your Balance And Statement Submenu
    Verify FAQ Your Balance And Statement Page
    Select AIS One-2-Call Credit Balance
    Verify AIS 1-2-Call Credit Balance Question
    ${FAQ_Name}    Select AIS 1-2-Call Credit Balance Question iOS    2    #Select Second Question
    Verify AIS 1-2-Call Credit Balance Answer    2    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2__Help_IOS_1-4_1-2_Y_21_2] Go to Your Balance & Statement Verify AIS 1-2-Call Credit Balance Third question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...     1.ล๊อคอิน My AIS Application
    ...     2.กดเข้าเมนู "ช่วยเหลือ"
    ...     3.เลือก เมนู "ตรวจสอบใบแจ้งและยอดเงิน"
    ...     4.ตรวจสอบหน้าถามตอบ "ตรวจสอบใบแจ้งและยอดเงิน"
    ...      "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...      - ใบแจ้งค่าใช้บริการรายเดือน
    ...      - ตรวจสอบยอดเงินวัน-ทุ-คอล!
    ...      - ใบแจ้งค่าใช้บริการไฟเบอร์
    ...     5.เลือก "ตรวจสอบยอดเงินวัน-ทู-คอล!"
    ...     6.ตรวจสอบหน้า "ถามตอบ"
    ...      "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...      "เช็กยอดเงินวัน-ทู-คอล!" (Text)
    ...      - คำถามข้อที่1
    ...      - คำถามข้อที่2
    ...      - คำถามข้อที่3
    ...      - คำถามข้อที่ 4
    ...      - คำถามข้อที่ 5
    ...     7.เลือก " คำถามข้อที่3 "
    ...     8.ตรวจสอบหน้า "คำตอบ"
    ...      "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...      "เช็กยอดเงินวัน-ทู-คอล!" (Text)
    ...      - Other text (Use Regular expression = ".*")none
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Your Balance And Statement Submenu
    Comment    Verify FAQ Your Balance And Statement Page
    Select AIS One-2-Call Credit Balance
    Verify AIS 1-2-Call Credit Balance Question
    ${FAQ_Name}    Select AIS 1-2-Call Credit Balance Question iOS    3    #Select Thrid Question
    Verify AIS 1-2-Call Credit Balance Answer    3    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2__Help_IOS_1-4_1-2_Y_22_2] Go to Your Balance & Statement Verify AIS 1-2-Call Credit Balance Fourth question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...     1.ล๊อคอิน My AIS Application
    ...     2.กดเข้าเมนู "ช่วยเหลือ"
    ...     3.เลือก เมนู "ตรวจสอบใบแจ้งและยอดเงิน"
    ...     4.ตรวจสอบหน้าถามตอบ "ตรวจสอบใบแจ้งและยอดเงิน"
    ...      "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...      - ใบแจ้งค่าใช้บริการรายเดือน
    ...      - ตรวจสอบยอดเงินวัน-ทุ-คอล!
    ...      - ใบแจ้งค่าใช้บริการไฟเบอร์
    ...     5.เลือก "ตรวจสอบยอดเงินวัน-ทู-คอล!"
    ...     6.ตรวจสอบหน้า "ถามตอบ"
    ...      "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...      "เช็กยอดเงินวัน-ทู-คอล!" (Text)
    ...      - คำถามข้อที่1
    ...      - คำถามข้อที่2
    ...      - คำถามข้อที่3
    ...      - คำถามข้อที่ 4
    ...      - คำถามข้อที่ 5
    ...     7.เลือก " คำถามข้อที่ 4 "
    ...     8.ตรวจสอบหน้า "คำตอบ"
    ...      "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...      "เช็กยอดเงินวัน-ทู-คอล!" (Text)
    ...      - Other text (Use Regular expression = ".*")none
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Your Balance And Statement Submenu
    Comment    Verify FAQ Your Balance And Statement Page
    Select AIS One-2-Call Credit Balance
    Verify AIS 1-2-Call Credit Balance Question
    ${FAQ_Name}    Select AIS 1-2-Call Credit Balance Question iOS    4    #Select Fourth Question
    Verify AIS 1-2-Call Credit Balance Answer    4    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2__Help_IOS_1-4_1-2_Y_23_2] Go to Your Balance & Statement Verify AIS 1-2-Call Credit Balance Fifth question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...     1.ล๊อคอิน My AIS Application
    ...     2.กดเข้าเมนู "ช่วยเหลือ"
    ...     3.เลือก เมนู "ตรวจสอบใบแจ้งและยอดเงิน"
    ...     4.ตรวจสอบหน้าถามตอบ "ตรวจสอบใบแจ้งและยอดเงิน"
    ...      "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...      - ใบแจ้งค่าใช้บริการรายเดือน
    ...      - ตรวจสอบยอดเงินวัน-ทุ-คอล!
    ...      - ใบแจ้งค่าใช้บริการไฟเบอร์
    ...     5.เลือก "ตรวจสอบยอดเงินวัน-ทู-คอล!"
    ...     6.ตรวจสอบหน้า "ถามตอบ"
    ...      "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...      "เช็กยอดเงินวัน-ทู-คอล!" (Text)
    ...      - คำถามข้อที่1
    ...      - คำถามข้อที่2
    ...      - คำถามข้อที่3
    ...      - คำถามข้อที่ 4
    ...      - คำถามข้อที่ 5
    ...     7.เลือก " คำถามข้อที่ 5 "
    ...     8.ตรวจสอบหน้า "คำตอบ"
    ...      "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...      "เช็กยอดเงินวัน-ทู-คอล!" (Text)
    ...      - Other text (Use Regular expression = ".*")none
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Your Balance And Statement Submenu
    Comment    Verify FAQ Your Balance And Statement Page
    Select AIS One-2-Call Credit Balance
    Verify AIS 1-2-Call Credit Balance Question
    ${FAQ_Name}    Select AIS 1-2-Call Credit Balance Question iOS    5    #Select Fifth Question
    Verify AIS 1-2-Call Credit Balance Answer    5    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2__Help_IOS_1-4_1-2_Y_24_2] Go to Your Balance & Statement Verify Invoice/Bill AIS Fiber Fist question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "ตรวจสอบใบแจ้งและยอดเงิน"
    ...    4.ตรวจสอบหน้าถามตอบ "ตรวจสอบใบแจ้งและยอดเงิน"
    ...     "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...     - ใบแจ้งค่าใช้บริการรายเดือน
    ...     - ตรวจสอบยอดเงินวัน-ทุ-คอล!
    ...     - ใบแจ้งค่าใช้บริการไฟเบอร์
    ...    5.เลือก "ใบแจ้งค่าใช้บริการไฟเบอร์"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...     "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...     "ใบแจ้งค่าใช้บริการไฟเบอร์" (Text)
    ...     - คำถามข้อที่1
    ...     - คำถามข้อที่2
    ...    7.เลือก " คำถามข้อที่1 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...     "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...     "ใบแจ้งค่าใช้บริการไฟเบอร์" (Text)
    ...     - Other text (Use Regular expression = ".*")none
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Your Balance And Statement Submenu
    Comment    Verify FAQ Your Balance And Statement Page
    Select Invoice Or Bill AIS Fiber
    Verify Invoice/Bill AIS Fiber Question
    ${FAQ_Name}    Select Invoice/Bill AIS Fiber Question    1    #Select First Question
    Verify Invoice/Bill AIS Fiber Answer    1    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2__Help_IOS_1-4_1-2_Y_25_2] Go to Your Balance & Statement Verify Invoice/Bill AIS Fiber Second question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "ตรวจสอบใบแจ้งและยอดเงิน"
    ...    4.ตรวจสอบหน้าถามตอบ "ตรวจสอบใบแจ้งและยอดเงิน"
    ...     "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...     - ใบแจ้งค่าใช้บริการรายเดือน
    ...     - ตรวจสอบยอดเงินวัน-ทุ-คอล!
    ...     - ใบแจ้งค่าใช้บริการไฟเบอร์
    ...    5.เลือก "ใบแจ้งค่าใช้บริการไฟเบอร์"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...     "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...     "ใบแจ้งค่าใช้บริการไฟเบอร์" (Text)
    ...     - คำถามข้อที่1
    ...     - คำถามข้อที่2
    ...    7.เลือก " คำถามข้อที่2 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...     "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...     "ใบแจ้งค่าใช้บริการไฟเบอร์" (Text)
    ...     - Other text (Use Regular expression = ".*")none
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Your Balance And Statement Submenu
    Comment    Verify FAQ Your Balance And Statement Page
    Select Invoice Or Bill AIS Fiber
    Verify Invoice/Bill AIS Fiber Question
    ${FAQ_Name}    Select Invoice/Bill AIS Fiber Question    2    #Select Second Question
    Verify Invoice/Bill AIS Fiber Answer    2     ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2__Help_IOS_1-4_1-2_Y_50_2] Go to Your Balance & Statement Verify AIS Monthly Statement Third question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3BE, 3PO, 3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "ตรวจสอบใบแจ้งและยอดเงิน"
    ...    4.ตรวจสอบหน้าถามตอบ "ตรวจสอบใบแจ้งและยอดเงิน"
    ...       "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...       - ใบแจ้งค่าใช้บริการรายเดือน
    ...       - ตรวจสอบยอดเงินวัน-ทู-คอล!
    ...       - ใบแจ้งค่าใช้บริการไฟเบอร์
    ...    5.เลือก "ใบแจ้งค่าใช้บริการรายเดือน"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...         "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...         "ใบแจ้งค่าใช้บริการรายเดือน" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...    7.เลือก " คำถามข้อที่3 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...         "ตรวจสอบใบแจ้งและยอดเงิน" (Text)
    ...         "ใบแจ้งค่าใช้บริการรายเดือน" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Your Balance And Statement Submenu
    Verify FAQ Your Balance And Statement Page
    Select AIS Monthly Statement
    Verify AIS Monthly Statement Question
    ${FAQ_Name}    Select AIS Monthly Statement Question iOS    3
    Verify AIS Monthly Statement Answer iOS    3    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
