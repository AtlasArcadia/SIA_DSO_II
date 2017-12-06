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
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
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
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
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
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
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
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_51_2] Go to International Roaming - International Roaming Verify First question
    [Documentation]    **Owner: **
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_52_2] Go to International Roaming - International Roaming Verify Second question
    [Documentation]    **Owner: **
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_53_2] Go to International Roaming - International Roaming Verify Third question
    [Documentation]    **Owner: **
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_54_2] Go to International Roaming - International Roaming Verify Fourth question
    [Documentation]    **Owner: **
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...
    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1,3_1-2_Y_55_2] Go to International Roaming - International Roaming Verify Fifth question
    [Documentation]    **Owner: **
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE
    ...    Status : Active
    ...

    [Tags]    TH    EN    active    success    3PE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
