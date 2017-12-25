*** Settings ***
Resource          ../Resource/PageKeywords/FAQ_MainPackageAndOnTopPackage.txt
Resource          ../../../../Config/LocalConfig.txt

*** Test Cases ***
[F2_Help_IOS_1-4_1-2_Y_1_2] Go to Promotion & Package Go to Main Package & On Top Package
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...        1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.กด เมนู "แพ็กเกจหลัก/แพ็กเกจเสริม"
    ...    4.ตรวจสอบหน้าผู้ช่วย "แพ็กเกจหลัก/แพ็กเกจเสริม"
    ...       " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...        - สำหรับลูกค้ารายเดือน
    ...        - สำหรับลูกค้าวัน-ทู-คอล!
    ...        - สำหรับลูกค้าไฟเบอร์
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Main Package And On Top Package Submenu
    Verify Main Package And On Top Package FAQ Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_2_2] Go to Promotion & Package Go Verify AIS Prepaid first question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...        1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.กด เมนู "แพ็กเกจหลัก/แพ็กเกจเสริม"
    ...    4.ตรวจสอบหน้าผู้ช่วย "แพ็กเกจหลัก/แพ็กเกจเสริม"
    ...       " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...        - สำหรับลูกค้ารายเดือน
    ...        - สำหรับลูกค้าวัน-ทู-คอล!
    ...        - สำหรับลูกค้าไฟเบอร์
    ...    5.เลือก "สำหรับลูกค้ารายเดือน"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...         " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...          "สำหรับลูกค้ารายเดือน" (Text)
    ...        - คำถามข้อที่1
    ...        - คำถามข้อที่2
    ...        - คำถามข้อที่3
    ...    7.เลือก " คำถามข้อที่1 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...         " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...          "สำหรับลูกค้ารายเดือน" (Text)
    ...        - Other text (Use Regular expression = ".*")
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Main Package And On Top Package Submenu
    Verify Main Package And On Top Package FAQ Page
    Select FAQ Promotion And Package    AISPostpaid
    Verify AIS Postpaid FAQ Page
    ${FAQ_Name}    Select Promotion and Package Question iOS   1
    Verify AIS Postpaid Answer    1    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_3_2] Go to Promotion & Package Go Verify AIS Prepaid Second question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...        1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.กด เมนู "แพ็กเกจหลัก/แพ็กเกจเสริม"
    ...    4.ตรวจสอบหน้าผู้ช่วย "แพ็กเกจหลัก/แพ็กเกจเสริม"
    ...       " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...        - สำหรับลูกค้ารายเดือน
    ...        - สำหรับลูกค้าวัน-ทู-คอล!
    ...        - สำหรับลูกค้าไฟเบอร์
    ...    5.เลือก "สำหรับลูกค้ารายเดือน"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...         " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...          "สำหรับลูกค้ารายเดือน" (Text)
    ...        - คำถามข้อที่1
    ...        - คำถามข้อที่2
    ...        - คำถามข้อที่3
    ...    7.เลือก " คำถามข้อที่2 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...         " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...          "สำหรับลูกค้ารายเดือน" (Text)
    ...        - Other text (Use Regular expression = ".*")
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BO    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Main Package And On Top Package Submenu
    Verify Main Package And On Top Package FAQ Page
    Select FAQ Promotion And Package    AISPostpaid
    Verify AIS Postpaid FAQ Page
    ${FAQ_Name}    Select Promotion and Package Question iOS   2
    Verify AIS Postpaid Answer    2    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_4_2] Go to Promotion & Package Go Verify AIS Prepaid Third question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...        1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.กด เมนู "แพ็กเกจหลัก/แพ็กเกจเสริม"
    ...    4.ตรวจสอบหน้าผู้ช่วย "แพ็กเกจหลัก/แพ็กเกจเสริม"
    ...       " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...        - สำหรับลูกค้ารายเดือน
    ...        - สำหรับลูกค้าวัน-ทู-คอล!
    ...        - สำหรับลูกค้าไฟเบอร์
    ...    5.เลือก "สำหรับลูกค้ารายเดือน"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...         " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...          "สำหรับลูกค้ารายเดือน" (Text)
    ...        ...        - คำถามข้อที่1
    ...        - คำถามข้อที่2
    ...        - คำถามข้อที่3
    ...    7.เลือก " คำถามข้อที่3 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...         " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...          "สำหรับลูกค้ารายเดือน" (Text)
    ...        - Other text (Use Regular expression = ".*")
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Main Package And On Top Package Submenu
    Verify Main Package And On Top Package FAQ Page
    Select FAQ Promotion And Package    AISPostpaid
    Verify AIS Postpaid FAQ Page
    ${FAQ_Name}    Select Promotion and Package Question iOS   3
    Verify AIS Postpaid Answer    3    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_5_2] Go to Promotion & Package Go to Main Package & On Top PackageVerify AIS 1-2-Call! (Call and Internet) first question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...        1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.กด เมนู "แพ็กเกจหลัก/แพ็กเกจเสริม "
    ...    4.ตรวจสอบหน้า "แพ็กเกจหลัก/แพ็กเกจเสริม "
    ...       "แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...        - สำหรับลูกค้ารายเดือน
    ...        - สำหรับลูกค้าวัน-ทู-คอล!
    ...        - สำหรับลูกค้าไฟเบอร์
    ...    5.เลือก "สำหรับลูกค้าวัน-ทู-คอล!"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...        - แพ็กเกจหลัก/แพ็กเกจเสริม
    ...        - สำหรับลูกค้าวัน-ทู-คอล!
    ...           - เช็กแพ็กเกจและการใช้งาน
    ...           - เหมาเหมา
    ...    7.เลือก "เช็กแพ็กเกจและการใช้งาน"
    ...    8.ตรวจสอบหน้า "ถามตอบ"
    ...         "แพ็กเกจหลัก/แพ็กเกจเสริม" (Text)
    ...          "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
    ...        - คำถามข้อที่1
    ...        - คำถามข้อที่2
    ...        - คำถามข้อที่3
    ...    9.เลือก " คำถามข้อที่1 "
    ...    10.ตรวจสอบหน้า "คำตอบ"
    ...         "แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...          "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
    ...        - Other text (Use Regular expression = ".*")
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Main Package And On Top Package Submenu
    Verify Main Package And On Top Package FAQ Page
    Select FAQ Promotion And Package    AIS12Call
    Verify FAQ Promotion And Package AIS 12Call Page
    Select Promotion And Package AIS 12Call Question    1
    Verify Promotion And Package AIS 12Call Question Page
    ${FAQ_Name}    Select Sub AIS 12Call Question iOS   1
    Verify Promotion And Package AIS 12Call Answer     1    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_6_2] Go to Promotion & Package Go Verify AIS 1-2-Call! (Call and Internet) Second question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...        1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.กด เมนู "แพ็กเกจหลัก/แพ็กเกจเสริม "
    ...    4.ตรวจสอบหน้า "แพ็กเกจหลัก/แพ็กเกจเสริม "
    ...       "แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...        - สำหรับลูกค้ารายเดือน
    ...        - สำหรับลูกค้าวัน-ทู-คอล!
    ...        - สำหรับลูกค้าไฟเบอร์
    ...    5.เลือก "สำหรับลูกค้าวัน-ทู-คอล!"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...        - แพ็กเกจหลัก/แพ็กเกจเสริม
    ...        - สำหรับลูกค้าวัน-ทู-คอล!
    ...           - เช็กแพ็กเกจและการใช้งาน
    ...           - เหมาเหมา
    ...    7.เลือก "เช็กแพ็กเกจและการใช้งาน"
    ...    8.ตรวจสอบหน้า "ถามตอบ"
    ...         "แพ็กเกจหลัก/แพ็กเกจเสริม" (Text)
    ...          "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
    ...        - คำถามข้อที่1
    ...        - คำถามข้อที่2
    ...        - คำถามข้อที่3
    ...    9.เลือก " คำถามข้อที่2 "
    ...    10.ตรวจสอบหน้า "คำตอบ"
    ...         "แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...          "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
    ...        - Other text (Use Regular expression = ".*")
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Main Package And On Top Package Submenu
    Verify Main Package And On Top Package FAQ Page
    Select FAQ Promotion And Package    AIS12Call
    Verify FAQ Promotion And Package AIS 12Call Page
    Select Promotion And Package AIS 12Call Question    1
    Verify Promotion And Package AIS 12Call Question Page
    ${FAQ_Name}    Select Sub AIS 12Call Question iOS   2
    Verify Promotion And Package AIS 12Call Answer     2    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_7_2] Go to Promotion & Package Go to Main Package & On Top PackageVerify AIS Fibre first question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...        1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.กด เมนู "แพ็กเกจหลัก/แพ็กเกจเสริม"
    ...    4.ตรวจสอบหน้า "แพ็กเกจหลัก/แพ็กเกจเสริม"
    ...       "แพ็กเกจหลัก/แพ็กเกจเสริม" (Text)
    ...        - สำหรับลูกค้ารายเดือน
    ...        - สำหรับลูกค้าวัน-ทู-คอล!
    ...        - สำหรับลูกค้าไฟเบอร์
    ...    5.เลือก "- สำหรับลูกค้าไฟเบอร์"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...         "แพ็กเกจหลัก/แพ็กเกจเสริม" (Text)
    ...          "สำหรับลูกค้าไฟเบอร์" (Text)
    ...        - คำถามข้อที่1
    ...        - คำถามข้อที่2
    ...        - คำถามข้อที่3
    ...    7.เลือก " คำถามข้อที่1 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...         "แพ็กเกจหลัก/แพ็กเกจเสริม" (Text)
    ...          "- สำหรับลูกค้าไฟเบอร์" (Text)
    ...        - Other text (Use Regular expression = ".*")
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Main Package And On Top Package Submenu
    Verify Main Package And On Top Package FAQ Page
    Select FAQ Promotion And Package    AISFibre
    Verify FAQ Promotion And Package AIS Fibre Page
    ${FAQ_Name}    Select Promotion And Package AIS Fibre Question iOS   1
    Verify Promotion And Package AIS Fibre Answer    1    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_8_2] Go to Promotion & Package Go Verify AIS Fibre Second question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...        1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.กด เมนู "แพ็กเกจหลัก/แพ็กเกจเสริม"
    ...    4.ตรวจสอบหน้า "แพ็กเกจหลัก/แพ็กเกจเสริม"
    ...       "แพ็กเกจหลัก/แพ็กเกจเสริม" (Text)
    ...        - สำหรับลูกค้ารายเดือน
    ...        - สำหรับลูกค้าวัน-ทู-คอล!
    ...        - สำหรับลูกค้าไฟเบอร์
    ...    5.เลือก "- สำหรับลูกค้าไฟเบอร์"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...         "แพ็กเกจหลัก/แพ็กเกจเสริม" (Text)
    ...          "- สำหรับลูกค้าไฟเบอร์" (Text)
    ...        - คำถามข้อที่1
    ...        - คำถามข้อที่2
    ...        - คำถามข้อที่3
    ...    7.เลือก " คำถามข้อที่2 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...         "แพ็กเกจหลัก/แพ็กเกจเสริม" (Text)
    ...          "- สำหรับลูกค้าไฟเบอร์" (Text)
    ...        - Other text (Use Regular expression = ".*")
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BO
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Main Package And On Top Package Submenu
    Verify Main Package And On Top Package FAQ Page
    Select FAQ Promotion And Package    AISFibre
    Verify FAQ Promotion And Package AIS Fibre Page
    ${FAQ_Name}    Select Promotion And Package AIS Fibre Question iOS   2
    Verify Promotion And Package AIS Fibre Answer    2    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_42_2] Go to Main Package & On Top Package Verify AIS 1-2-Call! (Call and Internet) - Third question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.กด เมนู "ถาม อุ่นใจ"
    ...    4.ตรวจสอบหน้าผู้ช่วย "ถาม อุ่นใจ"
    ...      " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...       - สำหรับลูกค้ารายเดือน
    ...       - สำหรับลูกค้าวัน-ทู-คอล!
    ...       - สำหรับลูกค้าไฟเบอร์
    ...    5.เลือก "สำหรับลูกค้าวัน-ทู-คอล!"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...        " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...         "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
    ...       - ถามตอบข้อที่1
    ...       - ถามตอบข้อที่2
    ...    7.เลือก " ถามตอบข้อที่1 "
    ...    8.ตรวจสอบหน้า "ถามตอบ"
    ...        " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...         "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...    9.เลือก " คำถามข้อที่3 "
    ...    10.ตรวจสอบหน้า "คำตอบ"
    ...       - " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...       - "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
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
    Select Main Package And On Top Package Submenu
    Verify Main Package And On Top Package FAQ Page
    Select FAQ Promotion And Package    AIS12Call
    Verify FAQ Promotion And Package AIS 12Call Page
    Select Promotion And Package AIS 12Call Question    1
    Verify Promotion And Package AIS 12Call Question Page
    ${FAQ_Name}    Select Sub AIS 12Call Question iOS   3
    Verify Promotion And Package AIS 12Call Answer     3    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_43_2] Go to Main Package & On Top Package Verify AIS 1-2-Call! ( Mao mao) - First question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.กด เมนู "ถาม อุ่นใจ"
    ...    4.ตรวจสอบหน้าผู้ช่วย "ถาม อุ่นใจ"
    ...      " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...       - สำหรับลูกค้ารายเดือน
    ...       - สำหรับลูกค้าวัน-ทู-คอล!
    ...       - สำหรับลูกค้าไฟเบอร์
    ...    5.เลือก "สำหรับลูกค้าวัน-ทู-คอล!"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...        " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...         "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
    ...       - ถามตอบข้อที่1
    ...       - ถามตอบข้อที่2
    ...    7.เลือก " ถามตอบข้อที่2 "
    ...    8.ตรวจสอบหน้า "ถามตอบ"
    ...        " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...         "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...    9.เลือก " คำถามข้อที่1 "
    ...    10.ตรวจสอบหน้า "คำตอบ"
    ...       - " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...       - "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
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
    Select Main Package And On Top Package Submenu
    Verify Main Package And On Top Package FAQ Page
    Select FAQ Promotion And Package    AIS12Call
    Verify FAQ Promotion And Package AIS 12Call Page
    Select Promotion And Package AIS 12Call Question    2
    Verify Promotion And Package AIS 12Call Question Page
    ${FAQ_Name}    Select Sub AIS 12Call Question iOS   1
    Verify Promotion And Package AIS 12Call Answer     1    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_44_2] Go to Main Package & On Top Package Verify AIS 1-2-Call! ( Mao mao) -Second question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.กด เมนู "ถาม อุ่นใจ"
    ...    4.ตรวจสอบหน้าผู้ช่วย "ถาม อุ่นใจ"
    ...      " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...       - สำหรับลูกค้ารายเดือน
    ...       - สำหรับลูกค้าวัน-ทู-คอล!
    ...       - สำหรับลูกค้าไฟเบอร์
    ...    5.เลือก "สำหรับลูกค้าวัน-ทู-คอล!"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...        " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...         "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
    ...       - ถามตอบข้อที่1
    ...       - ถามตอบข้อที่2
    ...    7.เลือก " ถามตอบข้อที่2 "
    ...    8.ตรวจสอบหน้า "ถามตอบ"
    ...        " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...         "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...    9.เลือก " คำถามข้อที่2 "
    ...    10.ตรวจสอบหน้า "คำตอบ"
    ...       - " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...       - "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
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
    Select Main Package And On Top Package Submenu
    Verify Main Package And On Top Package FAQ Page
    Select FAQ Promotion And Package    AIS12Call
    Verify FAQ Promotion And Package AIS 12Call Page
    Select Promotion And Package AIS 12Call Question    2
    Verify Promotion And Package AIS 12Call Question Page
    ${FAQ_Name}    Select Sub AIS 12Call Question iOS   2
    Verify Promotion And Package AIS 12Call Answer     2    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_45_2] Go to Main Package & On Top Package Verify AIS 1-2-Call! ( Mao mao) -Third question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.กด เมนู "ถาม อุ่นใจ"
    ...    4.ตรวจสอบหน้าผู้ช่วย "ถาม อุ่นใจ"
    ...      " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...       - สำหรับลูกค้ารายเดือน
    ...       - สำหรับลูกค้าวัน-ทู-คอล!
    ...       - สำหรับลูกค้าไฟเบอร์
    ...    5.เลือก "สำหรับลูกค้าวัน-ทู-คอล!"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...        " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...         "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
    ...       - ถามตอบข้อที่1
    ...       - ถามตอบข้อที่2
    ...    7.เลือก " ถามตอบข้อที่2 "
    ...    8.ตรวจสอบหน้า "ถามตอบ"
    ...        " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...         "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...    9.เลือก " คำถามข้อที่3 "
    ...    10.ตรวจสอบหน้า "คำตอบ"
    ...       - " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...       - "สำหรับลูกค้าวัน-ทู-คอล!" (Text)
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
    Select Main Package And On Top Package Submenu
    Verify Main Package And On Top Package FAQ Page
    Select FAQ Promotion And Package    AIS12Call
    Verify FAQ Promotion And Package AIS 12Call Page
    Select Promotion And Package AIS 12Call Question    2
    Verify Promotion And Package AIS 12Call Question Page
    ${FAQ_Name}    Select Sub AIS 12Call Question iOS   3
    Verify Promotion And Package AIS 12Call Answer     3    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_46_2] Go to Main Package & On Top Package Verify AIS Fibre Third question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.กด เมนู " แพ็กเกจหลัก/แพ็กเกจเสริม "
    ...    4.ตรวจสอบหน้า " แพ็กเกจหลัก/แพ็กเกจเสริม "
    ...      " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...       - สำหรับลูกค้ารายเดือน
    ...       - สำหรับลูกค้าวัน-ทู-คอล!
    ...       - สำหรับลูกค้าไฟเบอร์
    ...    5.เลือก "- สำหรับลูกค้าไฟเบอร์"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...        " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...         "- สำหรับลูกค้าไฟเบอร์" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...    7.เลือก " คำถามข้อที่3 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...        " แพ็กเกจหลัก/แพ็กเกจเสริม " (Text)
    ...         "- สำหรับลูกค้าไฟเบอร์" (Text)
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
    Select Main Package And On Top Package Submenu
    Verify Main Package And On Top Package FAQ Page
    Select FAQ Promotion And Package    AISFibre
    Verify FAQ Promotion And Package AIS Fibre Page
    ${FAQ_Name}    Select Promotion And Package AIS Fibre Question iOS   3
    Verify Promotion And Package AIS Fibre Answer    3    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
