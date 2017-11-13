*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/RoamingPackage_CurrentPackageAndRemaining_Prepaid.txt

*** Test Cases ***
[F7_Package_IOS_1,3_1-2_Y_1_2] Check current package In case : Have Remaining usage
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "แพ็กเกจปัจจุบัน/ยอดคงเหลือ"
    ...    4. ตรวจสอบหน้า "แพ็กเกจปัจจุบัน/ยอดคงเหลือ"
    ...    - หมายเลขโทรศัพท์
    ...    - รายการแพ็กเกจที่มี (Check object visible)
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    ...    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}_RoamingPack
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    CurrentPackageAndRemaining
    Verify Current Package Have Remaining Usage    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F7_Package_IOS_1,3_1-2_Y_2_2] Check current package In case : Don’t have Remaining usage
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...    Test Step
    ...    1. เข้าสู่ระบบ My AIS
    ...    2. กดเมนู "แพ็กเกจ"
    ...    3. กดเมนู "แพ็กเกจปัจจุบัน/ยอดคงเหลือ"
    ...    4. ตรวจสอบหน้า "แพ็กเกจปัจจุบัน/ยอดคงเหลือ"
    ...    - หมายเลขโทรศัพท์
    ...    - "คุณไม่มีแพ็กเกจดาต้าโรมมิ่ง"
    ...    5. จับภาพหน้าจอ
    [Tags]    TH    EN    active    success    3PE    3BE
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu    Package
    Select Sub Menu    CurrentPackageAndRemaining
    Verify Current Package And Remaining Have No Data Roaming Package    ${Number}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}
