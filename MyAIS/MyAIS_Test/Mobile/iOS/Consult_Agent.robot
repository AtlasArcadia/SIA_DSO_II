*** Settings ***
Resource          ../Resource/PageKeywords/ConsultAgent.txt
Resource          ../../../../Config/LocalConfig.txt

*** Test Cases ***
[F1__Help_IOS_1-4_1-2_Y_1_2] Go to Ask Aunjai menu
    [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.ตรวจสอบเมนู "ช่วยเหลือ"
   ...    - ผู้ช่วย
   ...        • ถาม อุ่นใจ
   ...    - ถามตอบ
   ...        •  แพ็กเกจหลัก/แพ็กเกจเสริม
   ...        • อินเทอร์เน็ต/ไฟเบอร์
   ...        • ตรวจสอบใบแจ้งและยอดเงิน
   ...        • การใช้งานต่างประเทศ
   ...        • การยกเลิก SMS โฆษณา
   ...    - วิธีใช้งาน application
   ...        • วิธีใช้งาน
    ...    4.กด เมนู "ถาม อุ่นใจ"
    ...    5.ตรวจสอบหน้าผู้ช่วย "ถาม อุ่นใจ"
    ...    "ถามอุ่นใจ"
    ...    6. จับภาพหน้าจอ
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Verify Menu Help And Support
    Select Ask Aunjai Submenu
    Verify AskAunjai Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F1__Help_IOS_1-4_1-2_Y_2_2] Verify Help&Support page
   [Documentation]    ***Owner : Tong***
    ...    Ntype : 3PE
    ...    Status : Active
    ...
    ...    Test Step
    ...    1. Login เข้าสู่ระบบ My AIS
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.ตรวจสอบเมนู "ช่วยเหลือ"
   ...    - ผู้ช่วย
   ...        • ถาม อุ่นใจ
   ...    - ถามตอบ
   ...        • แพ็กเกจหลัก/แพ็กเกจเสริม
   ...        • อินเทอร์เน็ต/ไฟเบอร์
   ...        • ตรวจสอบใบแจ้งและยอดเงิน
   ...        • การใช้งานต่างประเทศ
   ...       • การยกเลิก SMS โฆษณา
   ...       • แคมเปญและสิทธิพิเศษ
   ...    - วิธีใช้งาน application
   ...        • วิธีใช้งาน
   ...    4. จับภาพหน้าจอ
    [Tags]    success    TH    EN    3PE    3BE    3PO    3BE    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Verify Menu Help And Support
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
