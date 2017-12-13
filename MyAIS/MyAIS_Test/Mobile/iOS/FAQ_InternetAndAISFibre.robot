*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/FAQ_InternetAndAisFibre.txt

*** Test Cases ***
[F2_Help_IOS_1,3_1-2_Y_9_2] Go to Internet & AIS FIBRE
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    [Tags]    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And AIS Fibre Submenu
    Verify FAQ Internet And AIS Fibre Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_10_2] Go to Internet & AIS FIBRE Verify Internet Problem first question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    [Tags]    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And AIS Fibre Submenu
    Verify FAQ Internet And AIS Fibre Page
    Select Internet Problem
    Verify FAQ Internet And AIS Fibre Internet Problem Page
    ${FAQ_Name}    Select Internet and AISFibre Question iOS	1
    Verify Internet Problem Answer Page    1    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_11_2] Go to Internet & AIS FIBRE Verify Internet Problem Second question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    [Tags]    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And AIS Fibre Submenu
    Verify FAQ Internet And AIS Fibre Page
    Select Internet Problem
    Verify FAQ Internet And AIS Fibre Internet Problem Page
    ${FAQ_Name}    Select Internet and AISFibre Question iOS	2
    Verify Internet Problem Answer Page    2    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_12_2] Go to Internet & AIS FIBRE Verify Internet Problem Third question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    [Tags]    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And AIS Fibre Submenu
    Verify FAQ Internet And AIS Fibre Page
    Select Internet Problem
    Verify FAQ Internet And AIS Fibre Internet Problem Page
    ${FAQ_Name}    Select Internet and AISFibre Question iOS	3
    Verify Internet Problem Answer Page    3    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_13_2] Go to Internet & AIS FIBRE Verify AIS Fibre/AIS Playbox/WiFi Issue(AIS Fibre issue) First question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    [Tags]    success    3PE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And AIS Fibre Submenu
    Verify FAQ Internet And AIS Fibre Page
    Select AIS Fibre AIS Playbox Wifi Issue
    Verify FAQ Internet And Ais Fibre AIS Fibre/AIS Playbox/Wifi Issues Page
    Select Sub menu AIS Fibre Issues
    Verify AIS Fibre Issues Question Page
    ${FAQ_Name}    Select AIS Fibre Issues Question iOS    1
    Verify AIS Issuse Answer Page    1    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_14_2] Go to Internet & AIS FIBRE Verify AIS Fibre/AIS Playbox/WiFi Issue (AIS Fibre issue) Second question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    [Tags]    success    3PE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And AIS Fibre Submenu
    Verify FAQ Internet And AIS Fibre Page
    Select AIS Fibre AIS Playbox Wifi Issue
    Verify FAQ Internet And Ais Fibre AIS Fibre/AIS Playbox/Wifi Issues Page
    Select Sub menu AIS Fibre Issues
    Verify AIS Fibre Issues Question Page
    ${FAQ_Name}    Select AIS Fibre Issues Question iOS    2
    Verify AIS Issuse Answer Page    2    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_15_2] Go to Internet & AIS FIBRE Verify AIS Fibre/AIS Playbox/WiFi Issue (AIS Fibre issue) Third question
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    [Tags]    success    3PE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And AIS Fibre Submenu
    Verify FAQ Internet And AIS Fibre Page
    Select AIS Fibre AIS Playbox Wifi Issue
    Verify FAQ Internet And Ais Fibre AIS Fibre/AIS Playbox/Wifi Issues Page
    Select Sub menu AIS Fibre Issues
    Verify AIS Fibre Issues Question Page
    ${FAQ_Name}    Select AIS Fibre Issues Question iOS    3
    Verify AIS Issuse Answer Page    3    ${FAQ_Name}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_36_2] Go to Internet & AIS FIBRE Verify AIS Fibre/AIS Playbox/WiFi Issue(AIS Playbox Issue) First question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือกเมนู "อินเทอร์เน็ต/ไฟเบอร์"
    ...    4.ตรวจสอบถามตอบหน้า "อินเทอร์เน็ต/ไฟเบอร์"
    ...       "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...       - ปัญหาอินเทอร์เน็ต
    ...       - ปัญหา Fibre / Playbox / WiFi
    ...    5.เลือก "ปัญหา Fibre / Playbox / WiFi"
    ...    6.ตรวจสอบถามตอบหน้า "อินเทอร์เน็ต/ไฟเบอร์"
    ...       "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...       - ปัญหาอินเทอร์เน็ต
    ...       - การใช้งาน เอไอเอสไฟเบอร์
    ...       - ปัญหา Fibre / Playbox / WiFi
    ...    7.เลือก "ปัญหาดูรายการ AIS Playbox"
    ...    8.ตรวจสอบหน้า "ถามตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาดูรายการ AIS Playbox" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...       - คำถามข้อที่4
    ...    9.เลือก " คำถามข้อที่1 "
    ...    10.ตรวจสอบหน้า "คำตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาดูรายการ AIS Playbox" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And Ais Fibre Submenu
    Veriify Internet And AIS Fibre Page
    Select AIS Fibre And AIS Playbox And Wifi Issues Submenu
    Verify AIS Fibre And AIS Playbox And Wifi Issues
    Select Sub Menu AIS Playbox Issues
    Verify AIS Playbox Issues Question Page
    ${QuestionText}    Select AIS Playbox Issues Question iOS    1
    Verify AIS Playbox Issues Answer Page iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_37_2] Go to Internet & AIS FIBRE Verify AIS Fibre/AIS Playbox/WiFi Issue (AIS Playbox Issue) Second question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือกเมนู "อินเทอร์เน็ต/ไฟเบอร์"
    ...    4.ตรวจสอบถามตอบหน้า "อินเทอร์เน็ต/ไฟเบอร์"
    ...       "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...       - ปัญหาอินเทอร์เน็ต
    ...       - ปัญหา Fibre / Playbox / WiFi
    ...    5.เลือก "ปัญหา Fibre / Playbox / WiFi"
    ...    6.ตรวจสอบถามตอบหน้า "อินเทอร์เน็ต/ไฟเบอร์"
    ...       "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...       - ปัญหาอินเทอร์เน็ต
    ...       - การใช้งาน เอไอเอสไฟเบอร์
    ...       - ปัญหา Fibre / Playbox / WiFi
    ...    7.เลือก "ปัญหาดูรายการ AIS Playbox"
    ...    8.ตรวจสอบหน้า "ถามตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาดูรายการ AIS Playbox" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...       - คำถามข้อที่4
    ...    9.เลือก " คำถามข้อที่2 "
    ...    10.ตรวจสอบหน้า "คำตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาดูรายการ AIS Playbox" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And Ais Fibre Submenu
    Veriify Internet And AIS Fibre Page
    Select AIS Fibre And AIS Playbox And Wifi Issues Submenu
    Verify AIS Fibre And AIS Playbox And Wifi Issues
    Select Sub Menu AIS Playbox Issues
    Verify AIS Playbox Issues Question Page
    ${QuestionText}    Select AIS Playbox Issues Question iOS    2
    Verify AIS Playbox Issues Answer Page iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_38_2] Go to Internet & AIS FIBRE Verify AIS Fibre/AIS Playbox/WiFi Issue (AIS Playbox Issue) Third question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือกเมนู "อินเทอร์เน็ต/ไฟเบอร์"
    ...    4.ตรวจสอบถามตอบหน้า "อินเทอร์เน็ต/ไฟเบอร์"
    ...       "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...       - ปัญหาอินเทอร์เน็ต
    ...       - ปัญหา Fibre / Playbox / WiFi
    ...    5.เลือก "ปัญหา Fibre / Playbox / WiFi"
    ...    6.ตรวจสอบถามตอบหน้า "อินเทอร์เน็ต/ไฟเบอร์"
    ...       "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...       - ปัญหาอินเทอร์เน็ต
    ...       - การใช้งาน เอไอเอสไฟเบอร์
    ...       - ปัญหา Fibre / Playbox / WiFi
    ...    7.เลือก "ปัญหาดูรายการ AIS Playbox"
    ...    8.ตรวจสอบหน้า "ถามตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาดูรายการ AIS Playbox" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...       - คำถามข้อที่4
    ...    9.เลือก " คำถามข้อที่3 "
    ...    10.ตรวจสอบหน้า "คำตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาดูรายการ AIS Playbox" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Help And Support Menu
    Select Internet And Ais Fibre Submenu
    Veriify Internet And AIS Fibre Page
    Select AIS Fibre And AIS Playbox And Wifi Issues Submenu
    Verify AIS Fibre And AIS Playbox And Wifi Issues
    Select Sub Menu AIS Playbox Issues
    Verify AIS Playbox Issues Question Page
    ${QuestionText}    Select AIS Playbox Issues Question iOS    3
    Verify AIS Playbox Issues Answer Page iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_39_2] Go to Internet & AIS FIBRE Verify AIS Fibre/AIS Playbox/WiFi Issue (AIS Playbox Issue) Fourth question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือกเมนู "อินเทอร์เน็ต/ไฟเบอร์"
    ...    4.ตรวจสอบถามตอบหน้า "อินเทอร์เน็ต/ไฟเบอร์"
    ...       "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...       - ปัญหาอินเทอร์เน็ต
    ...       - ปัญหา Fibre / Playbox / WiFi
    ...    5.เลือก "ปัญหา Fibre / Playbox / WiFi"
    ...    6.ตรวจสอบถามตอบหน้า "อินเทอร์เน็ต/ไฟเบอร์"
    ...       "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...       - ปัญหาอินเทอร์เน็ต
    ...       - การใช้งาน เอไอเอสไฟเบอร์
    ...       - ปัญหา Fibre / Playbox / WiFi
    ...    7.เลือก "ปัญหาดูรายการ AIS Playbox"
    ...    8.ตรวจสอบหน้า "ถามตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาดูรายการ AIS Playbox" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...       - คำถามข้อที่4
    ...    9.เลือก " คำถามข้อที่4 "
    ...    10.ตรวจสอบหน้า "คำตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาดูรายการ AIS Playbox" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And Ais Fibre Submenu
    Veriify Internet And AIS Fibre Page
    Select AIS Fibre And AIS Playbox And Wifi Issues Submenu
    Verify AIS Fibre And AIS Playbox And Wifi Issues
    Select Sub Menu AIS Playbox Issues
    Verify AIS Playbox Issues Question Page
    ${QuestionText}    Select AIS Playbox Issues Question iOS    4
    Verify AIS Playbox Issues Answer Page iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_40_2] Go to Internet & AIS FIBRE Verify AIS Fibre/AIS Playbox/WiFi Issue (Wi-Fi Issue) First question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือกเมนู "อินเทอร์เน็ต/ไฟเบอร์"
    ...    4.ตรวจสอบถามตอบหน้า "อินเทอร์เน็ต/ไฟเบอร์"
    ...       "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...       - ปัญหาอินเทอร์เน็ต
    ...       - ปัญหา Fibre / Playbox / WiFi
    ...    5.เลือก "ปัญหา Fibre / Playbox / WiFi"
    ...    6.ตรวจสอบ ปัญหา Fibre / Playbox / WiFi
    ...       "อินเทอร์เน็ต/ไฟเบอร์"(Text)
    ...       "ปัญหา Fibre / Playbox / WiFi"(Text)
    ...          ปัญหา Fibre
    ...          ปัญหา  Playbox
    ...          ปัญหา WiFi
    ...    7.เลือก "ปัญหาสัญญาณ WI-FI"
    ...    8.ตรวจสอบหน้า "ถามตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาสัญญาณ WI-FI" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่2
    ...    9.เลือก " คำถามข้อที่1 "
    ...    10.ตรวจสอบหน้า "คำตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาสัญญาณ WI-FI" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And Ais Fibre Submenu
    Veriify Internet And AIS Fibre Page
    Select AIS Fibre And AIS Playbox And Wifi Issues Submenu
    Verify AIS Fibre And AIS Playbox And Wifi Issues
    Select Wifi Issues Submenu
    Verify Wifi Issues Question Page
    ${QuestionText}    Select Wifi Issues Question iOS    1
    Verify Wifi Issues Answer Page iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_41_2] Go to Internet & AIS FIBRE Verify AIS Fibre/AIS Playbox/WiFi Issue (Wi-Fi Issue) Second question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือกเมนู "อินเทอร์เน็ต/ไฟเบอร์"
    ...    4.ตรวจสอบถามตอบหน้า "อินเทอร์เน็ต/ไฟเบอร์"
    ...       "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...       - ปัญหาอินเทอร์เน็ต
    ...       - ปัญหา Fibre / Playbox / WiFi
    ...    5.เลือก "ปัญหา Fibre / Playbox / WiFi"
    ...    6.ตรวจสอบ ปัญหา Fibre / Playbox / WiFi
    ...       "อินเทอร์เน็ต/ไฟเบอร์"(Text)
    ...       "ปัญหา Fibre / Playbox / WiFi"(Text)
    ...          ปัญหา Fibre
    ...          ปัญหา  Playbox
    ...          ปัญหา WiFi
    ...    7.เลือก "ปัญหาสัญญาณ WI-FI"
    ...    8.ตรวจสอบหน้า "ถามตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาสัญญาณ WI-FI" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...    9.เลือก " คำถามข้อที่2 "
    ...    10.ตรวจสอบหน้า "คำตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาสัญญาณ WI-FI" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And Ais Fibre Submenu
    Veriify Internet And AIS Fibre Page
    Select AIS Fibre And AIS Playbox And Wifi Issues Submenu
    Verify AIS Fibre And AIS Playbox And Wifi Issues
    Select Wifi Issues Submenu
    Verify Wifi Issues Question Page
    ${QuestionText}    Select Wifi Issues Question iOS    2
    Verify Wifi Issues Answer Page iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_47_2] Go to Internet & AIS FIBRE Verify AIS Fibre Usage First question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือกเมนู "อินเทอร์เน็ต/ไฟเบอร์"
    ...    4.ตรวจสอบถามตอบหน้า "อินเทอร์เน็ต/ไฟเบอร์"
    ...       "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...       - ปัญหาอินเทอร์เน็ต
    ...       - การใช้งาน เอไอเอสไฟเบอร์
    ...       - ปัญหา Fibre / Playbox / WiFi
    ...    5.เลือก "การใช้งาน เอไอเอสไฟเบอร์"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาอินเทอร์เน็ต" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...    7.เลือก " คำถามข้อที่1 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "การใช้งาน เอไอเอสไฟเบอร์" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And Ais Fibre Submenu
    Veriify Internet And AIS Fibre Page
    Select AIS Fibre Usage
    Verify AIS Fibre Usage Page
    ${QuestionText}    Select AIS Usage Question iOS    1
    Verify AIS Fibre Answer Page iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_48_2] Go to Internet & AIS FIBRE Verify AIS Fibre Usage Second question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือกเมนู "อินเทอร์เน็ต/ไฟเบอร์"
    ...    4.ตรวจสอบถามตอบหน้า "อินเทอร์เน็ต/ไฟเบอร์"
    ...       "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...       - ปัญหาอินเทอร์เน็ต
    ...       - การใช้งาน เอไอเอสไฟเบอร์
    ...       - ปัญหา Fibre / Playbox / WiFi
    ...    5.เลือก "การใช้งาน เอไอเอสไฟเบอร์"
    ...    6.ตรวจสอบหน้า "ถามตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาอินเทอร์เน็ต" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...    7.เลือก " คำถามข้อที่2 "
    ...    8.ตรวจสอบหน้า "คำตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "การใช้งาน เอไอเอสไฟเบอร์" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And Ais Fibre Submenu
    Veriify Internet And AIS Fibre Page
    Select AIS Fibre Usage
    Verify AIS Fibre Usage Page
    ${QuestionText}    Select AIS Usage Question iOS    2
    Verify AIS Fibre Answer Page iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_49_2] Go to Internet & AIS FIBRE Verify AIS Fibre/AIS Playbox/WiFi Issue (Wi-Fi Issue) Third question
    [Documentation]    ***Owner : Lek***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือกเมนู "อินเทอร์เน็ต/ไฟเบอร์"
    ...    4.ตรวจสอบถามตอบหน้า "อินเทอร์เน็ต/ไฟเบอร์"
    ...       "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...       - ปัญหาอินเทอร์เน็ต
    ...       - การใช้งาน เอไอเอสไฟเบอร์
    ...       - ปัญหา Fibre / Playbox / WiFi
    ...    5.เลือก "ปัญหา Fibre / Playbox / WiFi"
    ...    6.เลือก "ปัญหากล่อง AIS Fibre" #Choose "Wifi Issues"
    ...    7.ตรวจสอบหน้า "ถามตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาสัญญาน WI-FI" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...    8.เลือก " คำถามข้อที่3 "
    ...    9.ตรวจสอบหน้า "คำตอบ"
    ...         "อินเทอร์เน็ต/ไฟเบอร์" (Text)
    ...         "ปัญหาสัญญาน WI-FI" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select Internet And Ais Fibre Submenu
    Veriify Internet And AIS Fibre Page
    Select AIS Fibre And AIS Playbox And Wifi Issues Submenu
    Verify AIS Fibre And AIS Playbox And Wifi Issues
    Select Wifi Issues Submenu
    Verify Wifi Issues Question Page
    ${QuestionText}    Select Wifi Issues Question iOS    3
    Verify Wifi Issues Answer Page iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
