*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/FAQ_InternationalRoaming.txt

*** Test Cases ***
[F2_Help_IOS_1,3_1-2_Y_26_2] Go to International Roaming
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    TH
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การใช้งานในต่างประเทศ"
    ...    4.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...       -การใช้งานในต่างประเทศ (Text)
    ...       -แพ็กเกจและค่าบริการที่ต่างประเทศ
    [Tags]    TH    EN    active    success    3PE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select International Roaming Submenu
    Verify International Roaming Menu Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_27_2] Go to International Roaming - Roaming Package & Roaming Service Rates Verify First question
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การใช้งานต่างประเทศ"
    ...    4.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...      - การใช้งานในต่างประเทศ
    ...      - แพ็กเกจและค่าบริการที่ต่างประเทศ
    ...    5.เลือก เมนู "แพ็กเกจและค่าบริการที่ต่างประเทศ"
    ...    6.ตรวจสอบหน้าถามตอบ "แพ็กเกจและค่าบริการที่ต่างประเทศ"
    ...       "แพ็กเกจและค่าบริการที่ต่างประเทศ" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...    7.เลือก "คำถามข้อที่1"
    ...    8.ตรวจสอบหน้าคำตอบ
    ...         "การใช้งานในต่างประเทศ" (Text)
    ...         "แพ็กเกจและค่าบริการที่ต่างประเทศ" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select International Roaming Submenu
    Verify International Roaming Menu Page
    Select Roaming Package & Roaming Services Rate
    Verify Roaming Package & Roaming Service Rates Page
    ${QuestionText}    Select Roaming Package & Roaming Service Rates Question iOS    1
    Verify Roaming Package & Roaming Service Rates Answer Page iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_28_2] Go to International Roaming - Roaming Package & Roaming Service Rates Verify Second question
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การใช้งานต่างประเทศ"
    ...    4.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...      - การใช้งานในต่างประเทศ
    ...      - แพ็กเกจและค่าบริการที่ต่างประเทศ
    ...    5.เลือก เมนู "แพ็กเกจและค่าบริการที่ต่างประเทศ"
    ...    6.ตรวจสอบหน้าถามตอบ "แพ็กเกจและค่าบริการที่ต่างประเทศ"
    ...       "แพ็กเกจและค่าบริการที่ต่างประเทศ" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...    7.เลือก "คำถามข้อที่2"
    ...    8.ตรวจสอบหน้าคำตอบ
    ...         "การใช้งานในต่างประเทศ" (Text)
    ...         "แพ็กเกจและค่าบริการที่ต่างประเทศ" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select International Roaming Submenu
    Verify International Roaming Menu Page
    Select Roaming Package & Roaming Services Rate
    Verify Roaming Package & Roaming Service Rates Page
    ${QuestionText}    Select Roaming Package & Roaming Service Rates Question iOS    2
    Verify Roaming Package & Roaming Service Rates Answer Page iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_29_2] Go to International Roaming - Roaming Package & Roaming Service Rates Verify Third question
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    TH
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การใช้งานต่างประเทศ"
    ...    4.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...      - การใช้งานในต่างประเทศ
    ...      - แพ็กเกจและค่าบริการที่ต่างประเทศ
    ...    5.เลือก เมนู "แพ็กเกจและค่าบริการที่ต่างประเทศ"
    ...    6.ตรวจสอบหน้าถามตอบ "แพ็กเกจและค่าบริการที่ต่างประเทศ"
    ...       "แพ็กเกจและค่าบริการที่ต่างประเทศ" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...    7.เลือก "คำถามข้อที่3"
    ...    8.ตรวจสอบหน้าคำตอบ
    ...         "การใช้งานในต่างประเทศ" (Text)
    ...         "แพ็กเกจและค่าบริการที่ต่างประเทศ" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select International Roaming Submenu
    Verify International Roaming Menu Page
    Select Roaming Package & Roaming Services Rate
    Verify Roaming Package & Roaming Service Rates Page
    ${QuestionText}    Select Roaming Package & Roaming Service Rates Question iOS    3
    Verify Roaming Package & Roaming Service Rates Answer Page iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_51_2] Go to International Roaming - International Roaming Verify First question
    [Documentation]    **Owner: *Asma*
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การใช้งานต่างประเทศ"
    ...    4.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...    - การใช้งานในต่างประเทศ
    ...    - แพ็กเกจและค่าบริการที่ต่างประเทศ
    ...    5.เลือก เมนู "การใช้งานในต่างประเทศ"
    ...    6.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    - คำถามข้อที่1
    ...    - คำถามข้อที่2
    ...    - คำถามข้อที่3
    ...    - คำถามข้อที่4
    ...    - คำถามข้อที่5
    ...    7.เลือก "คำถามข้อที่1"
    ...    8.ตรวจสอบหน้าคำตอบ
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...     - Other text (Use Regular expression = ".*")none
    ...
    ...    EN
    ...
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "International Roaming"
    ...    4.Verify FAQ "International Roaming" Page
    ...    "International Roaming" (Text)
    ...    - International Roaming
    ...    - Roaming Package & Roaming Service Rates
    ...    5.Click "International Roaming"
    ...    6.Verify "FAQ" page "International Roaming" (Text)
    ...    "International Roaming" (Text) - First question
    ...    - Second question
    ...    - Third question
    ...    - Fourth question
    ...    - Fifth question
    ...    7.Click "First question"
    ...    8.Verify "Answer" Page "International Roaming" (Text) "International Roaming" (Text) - Other text (Use Regular expression = ".*")none
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select International Roaming Submenu
    Verify International Roaming Menu Page
    Select into International Roaming
    Verify International Roaming Question Page
    Select International Roaming Question    1
    Verify International Roaming Asnwer Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_52_2] Go to International Roaming - International Roaming Verify Second question
    [Documentation]    **Owner: *Asma*
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การใช้งานต่างประเทศ"
    ...    4.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...    - การใช้งานในต่างประเทศ
    ...    - แพ็กเกจและค่าบริการที่ต่างประเทศ
    ...    5.เลือก เมนู "การใช้งานในต่างประเทศ"
    ...    6.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    - คำถามข้อที่1
    ...    - คำถามข้อที่2
    ...    - คำถามข้อที่3
    ...    - คำถามข้อที่4
    ...    - คำถามข้อที่5
    ...    7.เลือก "คำถามข้อที่2"
    ...    8.ตรวจสอบหน้าคำตอบ
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    ...
    ...    EN
    ...
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "International Roaming"
    ...    4.Verify FAQ "International Roaming" Page
    ...    "International Roaming" (Text)
    ...    - International Roaming
    ...    - Roaming Package & Roaming Service Rates
    ...    5.Click "International Roaming"6.Verify "FAQ" page "International Roaming" (Text) "International Roaming" (Text)
    ...    - First question
    ...    - Second question
    ...    - Third question
    ...    - Fourth question
    ...    - Fifth question
    ...    7.Click "Second question"
    ...    8.Verify "Answer" Page "International Roaming" (Text) "International Roaming" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select International Roaming Submenu
    Verify International Roaming Menu Page
    Select into International Roaming
    Verify International Roaming Question Page
    Select International Roaming Question    2
    Verify International Roaming Asnwer Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_53_2] Go to International Roaming - International Roaming Verify Third question
    [Documentation]    **Owner: *Asma*
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การใช้งานต่างประเทศ"
    ...    4.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...    - การใช้งานในต่างประเทศ
    ...    - แพ็กเกจและค่าบริการที่ต่างประเทศ
    ...    5.เลือก เมนู "การใช้งานในต่างประเทศ"
    ...    6.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    - คำถามข้อที่1
    ...    - คำถามข้อที่2
    ...    - คำถามข้อที่3
    ...    - คำถามข้อที่4
    ...    - คำถามข้อที่5
    ...    7.เลือก "คำถามข้อที่3"
    ...    8.ตรวจสอบหน้าคำตอบ
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    ...
    ...    EN
    ...
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "International Roaming"
    ...    4.Verify FAQ "International Roaming" Page
    ...    "International Roaming" (Text)
    ...    - International Roaming
    ...    - Roaming Package & Roaming Service Rates
    ...    5.Click "International Roaming"6.Verify "FAQ" page "International Roaming" (Text) "International Roaming" (Text)
    ...    - First question
    ...    - Second question
    ...    - Third question
    ...    - Fourth question
    ...    - Fifth question
    ...    7.Click "Third question"
    ...    8.Verify "Answer" Page "International Roaming" (Text) "International Roaming" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select International Roaming Submenu
    Verify International Roaming Menu Page
    Select into International Roaming
    Verify International Roaming Question Page
    Select International Roaming Question    3
    Verify International Roaming Asnwer Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_54_2] Go to International Roaming - International Roaming Verify Fourth question
    [Documentation]    **Owner: *Asma*
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การใช้งานต่างประเทศ"
    ...    4.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...    - การใช้งานในต่างประเทศ
    ...    - แพ็กเกจและค่าบริการที่ต่างประเทศ
    ...    5.เลือก เมนู "การใช้งานในต่างประเทศ"
    ...    6.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    - คำถามข้อที่1
    ...    - คำถามข้อที่2
    ...    - คำถามข้อที่3
    ...    - คำถามข้อที่4
    ...    - คำถามข้อที่5
    ...    7.เลือก "คำถามข้อที่4"
    ...    8.ตรวจสอบหน้าคำตอบ
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    ...
    ...    EN
    ...
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "International Roaming"
    ...    4.Verify FAQ "International Roaming" Page
    ...    "International Roaming" (Text)
    ...    - International Roaming
    ...    - Roaming Package & Roaming Service Rates
    ...    5.Click "International Roaming"6.Verify "FAQ" page "International Roaming" (Text)
    ...    "International Roaming" (Text)
    ...    - First question
    ...    - Second question
    ...    - Third question
    ...    - Fourth question
    ...    - Fifth question
    ...    7.Click "Fourth question"
    ...    8.Verify "Answer" Page "International Roaming" (Text) "International Roaming" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select International Roaming Submenu
    Verify International Roaming Menu Page
    Select into International Roaming
    Verify International Roaming Question Page
    Select International Roaming Question    4
    Verify International Roaming Asnwer Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_55_2] Go to International Roaming - International Roaming Verify Fifth question
    [Documentation]    **Owner: *Asma*
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การใช้งานต่างประเทศ"
    ...    4.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...    - การใช้งานในต่างประเทศ
    ...    - แพ็กเกจและค่าบริการที่ต่างประเทศ
    ...    5.เลือก เมนู "การใช้งานในต่างประเทศ"
    ...    6.ตรวจสอบหน้าถามตอบ "การใช้งานในต่างประเทศ"
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    - คำถามข้อที่1
    ...    - คำถามข้อที่2
    ...    - คำถามข้อที่3
    ...    - คำถามข้อที่4
    ...    - คำถามข้อที่5
    ...    7.เลือก "คำถามข้อที่5"
    ...    8.ตรวจสอบหน้าคำตอบ
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    "การใช้งานในต่างประเทศ" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    ...
    ...    EN
    ...
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "International Roaming"
    ...    4.Verify FAQ "International Roaming" Page
    ...    "International Roaming" (Text)
    ...    - International Roaming
    ...    - Roaming Package & Roaming Service Rates
    ...    5.Click "International Roaming"6.Verify "FAQ" page "International Roaming" (Text) "International Roaming" (Text)
    ...    - First question
    ...    - Second question
    ...    - Third question
    ...    - Fourth question
    ...    - Fifth question
    ...    7.Click "Fourth question"
    ...    8.Verify "Answer"
    ...    Page "International Roaming" (Text)
    ...    "International Roaming" (Text)
    ...    - Other text (Use Regular expression = ".*")none
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select International Roaming Submenu
    Verify International Roaming Menu Page
    Select into International Roaming
    Verify International Roaming Question Page
    Select International Roaming Question    5
    Verify International Roaming Asnwer Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
