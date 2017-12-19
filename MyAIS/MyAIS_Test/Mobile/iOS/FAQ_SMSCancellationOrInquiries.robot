*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/FAQ_SMSCancellationOrInquiries.txt

*** Test Cases ***
[F2_Help_IOS_1-4_1-2_Y_30_2] Go to SMS Cancellation/Inquiries
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    TH
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การยกเลิก SMS โฆษณา"
    ...    4.ตรวจสอบหน้าถามตอบ "การยกเลิก SMS โฆษณา"
    ...       "การยกเลิก SMS โฆษณา" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...       - คำถามข้อที่ 4
    ...       - คำถามข้อที่ 5
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select SMS Cancellation Inquiries Submenu
    Verify SMS Cancellation/Inquiries Question Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_31_2] Go to SMS Cancellation/Inquiries Verify First question
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    TH
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การยกเลิก SMS โฆษณา"
    ...    4.ตรวจสอบหน้าถามตอบ "การยกเลิก SMS โฆษณา"
    ...       "การยกเลิก SMS โฆษณา" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...       - คำถามข้อที่ 4
    ...       - คำถามข้อที่ 5
    ...    5.เลือก " คำถามข้อที่1 "
    ...    6.ตรวจสอบหน้าคำตอบ
    ...         "การยกเลิก SMS โฆษณา" (Text)
    ...         "การยกเลิก SMS โฆษณา" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select SMS Cancellation Inquiries Submenu
    Verify SMS Cancellation/Inquiries Question Page
    ${QuestionText}    Select SMS Cancellation/Inquiries Question iOS    1
    Verify SMS Cancellation/Inquiries First Answer iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_32_2] Go to SMS Cancellation/Inquiries Verify Second question
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    TH
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การยกเลิก SMS โฆษณา"
    ...    4.ตรวจสอบหน้าถามตอบ "การยกเลิก SMS โฆษณา"
    ...        "การยกเลิก SMS โฆษณา" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...       - คำถามข้อที่ 4
    ...       - คำถามข้อที่ 5
    ...    5.เลือก " คำถามข้อที่2 "
    ...    6.ตรวจสอบหน้าคำตอบ
    ...         "การยกเลิก SMS โฆษณา" (Text)
    ...         "การยกเลิก SMS โฆษณา" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select SMS Cancellation Inquiries Submenu
    Verify SMS Cancellation/Inquiries Question Page
    ${QuestionText}    Select SMS Cancellation/Inquiries Question iOS    2
    Verify SMS Cancellation/Inquiries Second Answer iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_33_2] Go to SMS Cancellation/Inquiries Verify Third question
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    TH
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การยกเลิก SMS โฆษณา"
    ...    4.ตรวจสอบหน้าถามตอบ "การยกเลิก SMS โฆษณา"
    ...        "การยกเลิก SMS โฆษณา" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...       - คำถามข้อที่ 4
    ...       - คำถามข้อที่ 5
    ...    5.เลือก " คำถามข้อที่3 "
    ...    6.ตรวจสอบหน้าคำตอบ
    ...         "การยกเลิก SMS โฆษณา" (Text)
    ...         "การยกเลิก SMS โฆษณา" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select SMS Cancellation Inquiries Submenu
    Verify SMS Cancellation/Inquiries Question Page
    ${QuestionText}    Select SMS Cancellation/Inquiries Question iOS    3
    Verify SMS Cancellation/Inquiries Answer iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_34_2] Go to SMS Cancellation/Inquiries Verify Fourth question
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    TH
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การยกเลิก SMS โฆษณา"
    ...    4.ตรวจสอบหน้าถามตอบ "การยกเลิก SMS โฆษณา"
    ...      "การยกเลิก SMS โฆษณา" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...       - คำถามข้อที่ 4
    ...       - คำถามข้อที่ 5
    ...    5.เลือก " คำถามข้อที่4 "
    ...    6.ตรวจสอบหน้าคำตอบ
    ...         "การยกเลิก SMS โฆษณา" (Text)
    ...         "การยกเลิก SMS โฆษณา" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select SMS Cancellation Inquiries Submenu
    Verify SMS Cancellation/Inquiries Question Page
    ${QuestionText}    Select SMS Cancellation/Inquiries Question iOS    4
    Verify SMS Cancellation/Inquiries Fourth Answer iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F2_Help_IOS_1-4_1-2_Y_35_2] Go to SMS Cancellation/Inquiries Verify Fifth question
    [Documentation]    **Owner: Lek**
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3BE ,3PO ,3BO
    ...    Status : Active
    ...
    ...    TH
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "การยกเลิก SMS โฆษณา"
    ...    4.ตรวจสอบหน้าถามตอบ "การยกเลิก SMS โฆษณา"
    ...       "การยกเลิก SMS โฆษณา" (Text)
    ...       - คำถามข้อที่1
    ...       - คำถามข้อที่2
    ...       - คำถามข้อที่3
    ...       - คำถามข้อที่ 4
    ...       - คำถามข้อที่ 5
    ...    5.เลือก " คำถามข้อที่5 "
    ...    6.ตรวจสอบหน้าคำตอบ
    ...         "การยกเลิก SMS โฆษณา" (Text)
    ...         "การยกเลิก SMS โฆษณา" (Text)
    ...       - Other text (Use Regular expression = ".*")
    [Tags]    TH    EN    active    success    3PE    3BE    3PO    3BO    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select SMS Cancellation Inquiries Submenu
    Verify SMS Cancellation/Inquiries Question Page
    ${QuestionText}    Select SMS Cancellation/Inquiries Question iOS    5
    Verify SMS Cancellation/Inquiries Answer iOS    ${QuestionText}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}
