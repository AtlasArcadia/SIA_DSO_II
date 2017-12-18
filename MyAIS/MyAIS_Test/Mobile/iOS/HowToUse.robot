*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/HowToUse.txt

*** Test Cases ***
[F3_Help_IOS_1,3_1-2_Y_1_2] Go to How to use
    [Documentation]    **Pre-requisite**
    ...    Source Number : 3PE,3BE, FBB
    ...    Status : Active
    ...
    ...    Owner : Asma
    ...
    ...    **Test Step** ---EN---
    ...
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "How to use"
    ...    4.Verify FAQ "How to use" Page
    ...    "How to use application"
    ...    - What is my AIS?
    ...    - How to subscribe my AIS?
    ...    - Can i created for my AIS more than one account per one
    ...    ID Card?
    ...    - How to use my AIS?
    ...    - Forgot Password to login to my AIS service?
    ...    - Can i change the master number of my AIS?
    ...    - Can i use my AIS to go abroad?none
    ...
    ...    *** Test Sep *** ---TH---
    ...
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "วิธีใช้งาน"
    ...    4.ตรวจสอบหน้าถามตอบ "วิธีการใช้งาน"
    ...    "วิธีการใช้งาน APPLICATION"
    ...    - บริการ my AIS คืออะไร?
    ...    - สมัครบริการ my AIS อย่างไร??
    ...    - สามารถสมัครบริการ my AIS ได้มากกว่า 1 Account/1 ID Card ได้หรือไม่?
    ...    - วิธีเข้าใช้งาน my AIS
    ...    - ลืมรหัสผ่านสำหรับเข้าใช้ my AIS?
    ...    - เปลี่ยนหมายเลขหลักของ my AIS ได้หรือไม้?
    ...    - สามารถใช้งาน my AIS ในต่างประเทศได้หรือไม่?none
    [Tags]    success    debug    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select How To Use Submenu
    Verify How To Use Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Help_IOS_1,3_1-2_Y_2_2] Go to How to use Verify First question
    [Documentation]    **Pre-requisite**
    ...    Source Number : 3PE,3BE,FBB
    ...    Status : Active
    ...
    ...    Owner : Asma
    ...
    ...    **Test Step**---EN---
    ...
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "How to use"
    ...    4.Verify FAQ "How to use" Page
    ...    "How to use application"
    ...    - What is my AIS? ( First question)
    ...    - How to subscribe my AIS?( Second question)
    ...    - Can i created for my AIS more than one account per one ID Card?( Third question)
    ...    - How to use my AIS?( Fourth question)
    ...    - Forgot Password to login to my AIS service?( Fifth question)
    ...    - Can i change the master number of my AIS?( Sixth question)
    ...    - Can i use my AIS to go abroad?( Seventh question)
    ...    5.Click " First question "
    ...    6.Verify "Answer"none
    ...
    ...    *** Test Sep *** ---TH---
    ...
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "วิธีใช้งาน"
    ...    4.ตรวจสอบหน้าถามตอบ "วิธีการใช้งาน"
    ...    "วิธีการใช้งาน APPLICATION"
    ...    - บริการ my AIS คืออะไร? ( คำถามข้อที่1)
    ...    - สมัครบริการ my AIS อย่างไร? (คำถามข้อที่2)
    ...    - สามารถสมัครบริการ my AIS ได้มากกว่า 1 Account/1 ID Card ได้หรือไม่? ( คำถามข้อที่3)
    ...    - วิธีเข้าใช้งาน my AIS ( คำถามข้อที่4 )
    ...    - ลืมรหัสผ่านสำหรับเข้าใช้ my AIS? (คำถามข้อที่5)
    ...    - เปลี่ยนหมายเลขหลักของ my AIS ได้หรือไม้? (คำถามข้อที่6)
    ...    - สามารถใช้งาน my AIS ในต่างประเทศได้หรือไม่? ( คำถามข้อที่7)
    ...    5.เลือก " คำถามข้อที่1 "
    ...    6.ตรวจสอบ "คำตอบ"none
    [Tags]    success    debug    active    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select How To Use Submenu
    Verify How To Use Page
    Select Question    FirstQuestion
    Verify Answer How To Use Application Page    1
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Help_IOS_1,3_1-2_Y_3_2] Go to How to use Verify Second question
    [Documentation]    **Pre-requisite**
    ...    Source Number : 3PE,3BE,FBB
    ...    Status : Active
    ...
    ...    Owner : Asma
    ...    **Test Step ***---EN---
    ...
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "How to use"
    ...    4.Verify FAQ "How to use" Page
    ...    "How to use application"
    ...    - What is my AIS? ( First question)
    ...    - How to subscribe my AIS?( Second question)
    ...    - Can i created for my AIS more than one account per one ID Card?( Third question)
    ...    - How to use my AIS?( Fourth question)
    ...    - Forgot Password to login to my AIS service?( Fifth question)
    ...    - Can i change the master number of my AIS?( Sixth question)
    ...    - Can i use my AIS to go abroad?( Seventh question)
    ...    5.Click " Second question "
    ...    6.Verify "Answer"none
    ...
    ...    *** Test Sep *** ---TH---
    ...
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "วิธีใช้งาน"
    ...    4.ตรวจสอบหน้าถามตอบ "วิธีการใช้งาน"
    ...     "วิธีการใช้งาน APPLICATION"
    ...     - บริการ my AIS คืออะไร? ( คำถามข้อที่1)
    ...     - สมัครบริการ my AIS อย่างไร? (คำถามข้อที่2)
    ...     - สามารถสมัครบริการ my AIS ได้มากกว่า 1 Account/1 ID Card ได้หรือไม่? ( คำถามข้อที่3)
    ...     - วิธีเข้าใช้งาน my AIS ( คำถามข้อที่4 )
    ...     - ลืมรหัสผ่านสำหรับเข้าใช้ my AIS? (คำถามข้อที่5)
    ...     - เปลี่ยนหมายเลขหลักของ my AIS ได้หรือไม้? (คำถามข้อที่6)
    ...     - สามารถใช้งาน my AIS ในต่างประเทศได้หรือไม่? ( คำถามข้อที่7)
    ...    5.เลือก " คำถามข้อที่2 "
    ...    6.ตรวจสอบ "คำตอบ"none
    [Tags]    success    debug    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select How To Use Submenu
    Verify How To Use Page
    Select Question    SecondQuestion
    Verify Answer How To Use Application Page     2
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Help_IOS_1,3_1-2_Y_4_2] Go to How to use Verify Third question
    [Documentation]    **Pre-requisite**
    ...    Source Number : 3PE,3BE,FBB
    ...    Status : Active
    ...
    ...    Owner : Asma
    ...    **Test Step*** ---EN---
    ...
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "How to use"
    ...    4.Verify FAQ "How to use" Page
    ...    "How to use application"
    ...    - What is my AIS? ( First question)
    ...    - How to subscribe my AIS?( Second question)
    ...    - Can i created for my AIS more than one account per one ID Card?( Third question)
    ...    - How to use my AIS?( Fourth question)
    ...    - Forgot Password to login to my AIS service?( Fifth question)
    ...    - Can i change the master number of my AIS?( Sixth question)
    ...    - Can i use my AIS to go abroad?( Seventh question)
    ...    5.Click " Third question "
    ...    6.Verify "Answer"none
    ...
    ...    *** Test Sep *** ---TH---
    ...
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.ตรวจสอบเมนู "ช่วยเหลือ"
    ...    - ผู้ช่วย
    ...    • ถาม อุ่นใจ
    ...    - ถามตอบ
    ...    • แพ็กเกจหลัก/แพ็กเกจเสริม
    ...    • อินเทอร์เน็ต/ไฟเบอร์
    ...    • ตรวจสอบใบแจ้งและยอดเงิน
    ...    • การใช้งานต่างประเทศ
    ...    • การยกเลิก SMS โฆษณา
    ...    - วิธีใช้งาน application
    ...    • วิธีใช้งาน
    ...    4.เลือก เมนู "วิธีใช้งาน"
    ...    5.ตรวจสอบหน้าถามตอบ "วิธีการใช้งาน"
    ...    "วิธีการใช้งาน APPLICATION"
    ...    - บริการ my AIS คืออะไร? ( คำถามข้อที่1)
    ...    - สมัครบริการ my AIS อย่างไร? (คำถามข้อที่2)
    ...    - สามารถสมัครบริการ my AIS ได้มากกว่า 1 Account/1 ID Card ได้หรือไม่? ( คำถามข้อที่3)
    ...    - วิธีเข้าใช้งาน my AIS ( คำถามข้อที่4 )
    ...    - ลืมรหัสผ่านสำหรับเข้าใช้ my AIS? (คำถามข้อที่5)
    ...    - เปลี่ยนหมายเลขหลักของ my AIS ได้หรือไม้? (คำถามข้อที่6)
    ...    - สามารถใช้งาน my AIS ในต่างประเทศได้หรือไม่? ( คำถามข้อที่7)
    ...    6.เลือก " คำถามข้อที่3 "
    ...    7.ตรวจสอบ "คำตอบ"none
    [Tags]    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select How To Use Submenu
    Verify How To Use Page
    Select Question    ThirdQuestion
    Verify Answer How To Use Application Page    3
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Help_IOS_1,3_1-2_Y_5_2] Go to How to use Verify Fourth question
    [Documentation]    **Pre-requisite**
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...
    ...    Owner : Asma
    ...    **Test Step*** ---EN---
    ...
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "How to use"
    ...    4.Verify FAQ "How to use" Page
    ...    "How to use application"
    ...    - What is my AIS? ( First question)
    ...    - How to subscribe my AIS?( Second question)
    ...    - Can i created for my AIS more than one account per one ID Card?( Third question)
    ...    - How to use my AIS?( Fourth question)
    ...    - Forgot Password to login to my AIS service?( Fifth question)
    ...    - Can i change the master number of my AIS?( Sixth question)
    ...    - Can i use my AIS to go abroad?( Seventh question)
    ...    5.Click " Fourth question "
    ...    6.Verify "Answer"none
    ...
    ...    *** Test Sep *** ---TH---
    ...
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "วิธีใช้งาน"
    ...    4.ตรวจสอบหน้าถามตอบ "วิธีการใช้งาน"
    ...    "วิธีการใช้งาน APPLICATION"
    ...    - บริการ my AIS คืออะไร? ( คำถามข้อที่1)
    ...    - สมัครบริการ my AIS อย่างไร? (คำถามข้อที่2)
    ...    - สามารถสมัครบริการ my AIS ได้มากกว่า 1 Account/1 ID Card ได้หรือไม่? ( คำถามข้อที่3)
    ...    - วิธีเข้าใช้งาน my AIS ( คำถามข้อที่4 )
    ...    - ลืมรหัสผ่านสำหรับเข้าใช้ my AIS? (คำถามข้อที่5)
    ...    - เปลี่ยนหมายเลขหลักของ my AIS ได้หรือไม้? (คำถามข้อที่6)
    ...    - สามารถใช้งาน my AIS ในต่างประเทศได้หรือไม่? ( คำถามข้อที่7)
    ...    5.เลือก " คำถามข้อที่4 "
    ...    6.ตรวจสอบ "คำตอบ"non
    [Tags]    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select How To Use Submenu
    Verify How To Use Page
    Select Question    FourthQuestion
    Verify Answer How To Use Application Page    4
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Help_IOS_1,3_1-2_Y_6_2] Go to How to use Verify Fifth question
    [Documentation]    **Pre-requisite**
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...
    ...    Owner : Asma
    ...    **Test Step*** ---EN---
    ...
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "How to use"
    ...    4.Verify FAQ "How to use" Page
    ...    "How to use application"
    ...    - What is my AIS? ( First question)
    ...    - How to subscribe my AIS?( Second question)
    ...    - Can i created for my AIS more than one account per one ID Card?( Third question)
    ...    - How to use my AIS?( Fourth question)
    ...    - Forgot Password to login to my AIS service?( Fifth question)
    ...    - Can i change the master number of my AIS?( Sixth question)
    ...    - Can i use my AIS to go abroad?( Seventh question)
    ...    5.Click " Fifth question "
    ...    6.Verify "Answer"none
    ...
    ...    *** Test Sep *** ---TH---
    ...
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "วิธีใช้งาน"
    ...    4.ตรวจสอบหน้าถามตอบ "วิธีการใช้งาน"
    ...    "วิธีการใช้งาน APPLICATION"
    ...    - บริการ my AIS คืออะไร? ( คำถามข้อที่1)
    ...    - สมัครบริการ my AIS อย่างไร? (คำถามข้อที่2)
    ...    - สามารถสมัครบริการ my AIS ได้มากกว่า 1 Account/1 ID Card ได้หรือไม่? ( คำถามข้อที่3)
    ...    - วิธีเข้าใช้งาน my AIS ( คำถามข้อที่4 )
    ...    - ลืมรหัสผ่านสำหรับเข้าใช้ my AIS? (คำถามข้อที่5)
    ...    - เปลี่ยนหมายเลขหลักของ my AIS ได้หรือไม้? (คำถามข้อที่6)
    ...    - สามารถใช้งาน my AIS ในต่างประเทศได้หรือไม่? ( คำถามข้อที่7)
    ...    5.เลือก " คำถามข้อที่5 "
    ...    6.ตรวจสอบ "คำตอบ"none
    [Tags]    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select How To Use Submenu
    Verify How To Use Page
    Select Question    FifthQuestion
    Verify Answer How To Use Application Page    5
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Help_IOS_1,3_1-2_Y_7_2] Go to How to use Verify Sixth question
    [Documentation]    **Pre-requisite**
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...
    ...    Owner : Asma
    ...    *** Test Step *** ---EN---
    ...
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "How to use"
    ...    4.Verify FAQ "How to use" Page
    ...    "How to use application"
    ...    - What is my AIS? ( First question)
    ...    - How to subscribe my AIS?( Second question)
    ...    - Can i created for my AIS more than one account per one ID Card?( Third question)
    ...    - How to use my AIS?( Fourth question)
    ...    - Forgot Password to login to my AIS service?( Fifth question)
    ...    - Can i change the master number of my AIS?( Sixth question)
    ...    - Can i use my AIS to go abroad?( Seventh question)
    ...    5.Click " Sixth question "
    ...    6.Verify "Answer"none
    ...
    ...    *** Test Sep *** ---TH---
    ...
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "วิธีใช้งาน"
    ...    4.ตรวจสอบหน้าถามตอบ "วิธีการใช้งาน"
    ...    "วิธีการใช้งาน APPLICATION"
    ...    - บริการ my AIS คืออะไร? ( คำถามข้อที่1)
    ...    - สมัครบริการ my AIS อย่างไร? (คำถามข้อที่2)
    ...    - สามารถสมัครบริการ my AIS ได้มากกว่า 1 Account/1 ID Card ได้หรือไม่? ( คำถามข้อที่3)
    ...    - วิธีเข้าใช้งาน my AIS ( คำถามข้อที่4 )
    ...    - ลืมรหัสผ่านสำหรับเข้าใช้ my AIS? (คำถามข้อที่5)
    ...    - เปลี่ยนหมายเลขหลักของ my AIS ได้หรือไม้? (คำถามข้อที่6)
    ...    - สามารถใช้งาน my AIS ในต่างประเทศได้หรือไม่? ( คำถามข้อที่7)
    ...    5.เลือก " คำถามข้อที่6 "
    ...    6.ตรวจสอบ "คำตอบ"none
    [Tags]    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select How To Use Submenu
    Verify How To Use Page
    Select Question    SixthQuestion
    Verify Answer How To Use Application Page    6
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Help_IOS_1,3_1-2_Y_8_2] Go to How to use Verify Seventh question
    [Documentation]    **Pre-requisite**
    ...    Source Number : 3PE,3BE
    ...    Status : Active
    ...
    ...    Owner : Asma
    ...    *** Test Step *** ---EN---
    ...    1.Login to My AIS Application
    ...    2.Click Menu "Help&Support"
    ...    3.Click menu "How to use"
    ...    4.Verify FAQ "How to use" Page
    ...    "How to use application"
    ...    - What is my AIS? ( First question) - How to subscribe my AIS?( Second question)
    ...    - Can i created for my AIS more than one account per one ID Card?( Third question)
    ...    - How to use my AIS?( Fourth question)
    ...    - Forgot Password to login to my AIS service?( Fifth question)
    ...    - Can i change the master number of my AIS?( Sixth question)
    ...    - Can i use my AIS to go abroad?( Seventh question)
    ...    5.Click " Seventh question "
    ...    8.Verify "Answer"none
    ...
    ...    *** Test Sep *** ---TH---
    ...
    ...    1.ล๊อคอิน My AIS Application
    ...    2.กดเข้าเมนู "ช่วยเหลือ"
    ...    3.เลือก เมนู "วิธีใช้งาน"
    ...    4.ตรวจสอบหน้าถามตอบ "วิธีการใช้งาน"
    ...    "วิธีการใช้งาน APPLICATION"
    ...    - บริการ my AIS คืออะไร? ( คำถามข้อที่1)
    ...    - สมัครบริการ my AIS อย่างไร? (คำถามข้อที่2)
    ...    - สามารถสมัครบริการ my AIS ได้มากกว่า 1 Account/1 ID Card ได้หรือไม่? ( คำถามข้อที่3)
    ...    - วิธีเข้าใช้งาน my AIS ( คำถามข้อที่4 )
    ...    - ลืมรหัสผ่านสำหรับเข้าใช้ my AIS? (คำถามข้อที่5)
    ...    - เปลี่ยนหมายเลขหลักของ my AIS ได้หรือไม้? (คำถามข้อที่6)
    ...    - สามารถใช้งาน my AIS ในต่างประเทศได้หรือไม่? ( คำถามข้อที่7)
    ...    5.เลือก " คำถามข้อที่7 "
    ...    6.ตรวจสอบ "คำตอบ"none
    [Tags]    success    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Help And Support Menu
    Select How To Use Submenu
    Select Question    SeventhQuestion
    Verify Answer How To Use Application Page    7
    [Teardown]    Keywords For Teardown    ${#dict_device_name}