*** Settings ***
Resource          ../../../../Config/LocalConfig.txt
Resource          ../Resource/PageKeywords/PointsAndPrivileges.txt

*** Test Cases ***
[F1_Priv_IOS_1-3_1-2_Y_1_2] MyAIS Go to Points & Privileges menu
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    '1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์&สิทธิพิเศษ'
    ...    3. ตรวจสอบข้อมูลProfile เบอร์
    ...    - ชื่อ-สกุล
    ...    - เบอร์โทรศัพท์
    ...    - MA SEGMENT
    ...    - จำนวน Points
    ...    4.ตรวจสอบหน้า "พอยท์&สิทธิพิเศษ"
    ...    - ปุ่มค้นหา
    ...    - เมนู MY LISTS
    ...    - เมนู RECENT
    ...    5.ตรวจสอบ Campaign ของ Privilege
    ...    6.ตรวจสอบ Campaign ของ Points
    ...    7.ตรวจสอบ Campaign ของ NEARBY
    ...    8.Capture screen
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Verify Profile number
    ...    - Name
    ...    - Number
    ...    4.Verify page"Points & Privileges"
    ...    - Search
    ...    - Menu "MY LISTS"
    ...    - Menu "RECENT"
    ...    5.Verify Privilege Campaign
    ...    6.Verify Points Campaign
    ...    7.Verify NEARBY Campaign
    ...    8.Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Verify Point And Privileges Page iOS
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F3_Priv_IOS_1-3_1-2_Y_1_2] Search Feature Verify Search page
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม 'ค้นหา'
    ...    4. ระบุข้อความที่ต้องการค้นหา ""ทดสอบ""
    ...    5. กด ค้นหา
    ...    6. ตรวจสอบหน้า 'ค้นหา'
    ...    - ข้อความที่ระบุให้ค้นหา (อยู่ในช่องค้นหา)
    ...    - แถบทั้งหมด
    ...    - แถบสิทธิพิเศษ
    ...    - แถบพอยท์
    ...    7. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "Search" bar
    ...    4. Input text "Donut"
    ...    5. Click "Search" button
    ...    6. Verify 'Search' page
    ...    - Text in Search bar
    ...    - "All" \ Tab
    ...    - "Privileges" \ Tab
    ...    - "Points" \ Tab
    ...    7. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Points and privileges search keyword iOS    ${Test}
    Verify Search Menu iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Priv_IOS_1-3_1-2_Y_2_2] Search Feature_Not found data
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม 'ค้นหา'
    ...    4. ระบุข้อความที่ต้องการค้นหา ""กกก""
    ...    5. กด ค้นหา
    ...    6. ตรวจสอบหน้า 'ค้นหา'
    ...    - ข้อความที่ระบุให้ค้นหา (อยู่ในช่องค้นหา)
    ...    - แถบทั้งหมด
    ...    - แถบสิทธิพิเศษ
    ...    - แถบพอยท์
    ...    - 0 Results Found (Text)
    ...    7. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "Search" bar
    ...    4. Input text "aaa"
    ...    5. Click "Search" button
    ...    6. Verify 'Search' page
    ...    - 0 Results Found (Text)
    ...    7. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Points and privileges search keyword iOS    ${NotFound}
    Verify Search Menu Not Found Result iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Priv_IOS_1-3_1-2_Y_3_2] Search Feature Search_Tab ALL
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม 'ค้นหา'
    ...    4. ระบุข้อความที่ต้องการค้นหา ""โดนัท""
    ...    5. กด ค้นหา
    ...    6. กดเลือกแถบ ""ทั้งหมด""
    ...    7. ตรวจสอบหน้า 'ค้นหา'
    ...    - ข้อความที่ระบุให้ค้นหา (อยู่ในช่องค้นหา)
    ...    - แถบทั้งหมด
    ...    - แถบสิทธิพิเศษ
    ...    - แถบพอยท์
    ...    - Result Found ( Result Found>0)
    ...    8. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "Search" bar
    ...    4. Input text "Donut"
    ...    5. Click "Search" button
    ...    6. Click "All" Tab
    ...    7. Verify 'Search' page
    ...    - Result Found ( Result Found>0)
    ...    8. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Points and privileges search keyword iOS    ${SearchNotFound}
    Verify Search Menu All Tab iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Priv_IOS_1-3_1-2_Y_4_2] Search Feature Search_Tab Privileges
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม 'ค้นหา'
    ...    4. ระบุข้อความที่ต้องการค้นหา ""โดนัท""
    ...    5. กด ค้นหา
    ...    6. กดเลือกแถบ ""สิทธิพิเศษ""
    ...    7. ตรวจสอบหน้า 'ค้นหา'
    ...    - ข้อความที่ระบุให้ค้นหา (อยู่ในช่องค้นหา)
    ...    - แถบทั้งหมด
    ...    - แถบสิทธิพิเศษ
    ...    - แถบพอยท์
    ...    - Result Found ( Result Found>0)
    ...    8. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "Search" bar
    ...    4. Input text "Donut"
    ...    5. Click "Search" button
    ...    6. Click "Privileges" Tab
    ...    7. Verify 'Search' page
    ...    - Result Found ( Result Found>0)
    ...    8. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Points and privileges search keyword iOS    ${SearchNotFound}
    Verify Search Menu Privileges Tab iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F3_Priv_IOS_1-3_1-2_Y_5_2] Search Feature Search_Tab Points
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม 'ค้นหา'
    ...    4. ระบุข้อความที่ต้องการค้นหา ""โดนัท""
    ...    5. กด ค้นหา
    ...    6. กดเลือกแถบ ""พอยท์""
    ...    7. ตรวจสอบหน้า 'ค้นหา'
    ...    - ข้อความที่ระบุให้ค้นหา (อยู่ในช่องค้นหา)
    ...    - แถบทั้งหมด
    ...    - แถบสิทธิพิเศษ
    ...    - แถบพอยท์
    ...    - Result Found ( Result Found>0)
    ...    8. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "Search" bar
    ...    4. Input text "Donut"
    ...    5. Click "Search" button
    ...    6. Click "Points" Tab
    ...    7. Verify 'Search' page
    ...    - Result Found ( Result Found>0)
    ...    8. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Points and privileges search keyword iOS    ${SearchNotFound}
    Verify Search Menu Points Tab iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F4_Priv_IOS_1-3_1-2_Y_1_2] My Lists Feature Verify My Lists page
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดเข้า My Lists (รูปหัวใจ)
    ...    4. ตรวจสอบหน้า ""My Lists""
    ...    - My Lists (Label)
    ...    - แถบ ""สิทธพิเศษ""
    ...    - แถบ ""พอยท์""
    ...    5. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "My Lists"
    ...    4. Verify 'My Lists' page
    ...    - My Lists (Label)
    ...    - "Privileges" \ Tab
    ...    - "Points" \ Tab
    ...    5. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To MyLists iOS
    Verify MyLists Page iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F4_Priv_IOS_1-3_1-2_Y_2_2] FavoritePrivileges Campaign
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. เลือก 'Campaign สิทธิพิเศษ' (เลือก Campaign แรก
    ...    eg. เคเอฟซี)
    ...    4. กด รูปหัวใจ
    ...    5. Capture screen
    ...    6. กดเข้า My Lists (รูปหัวใจ)
    ...    7. กดแถบ ""สิทธิพิเศษ""
    ...    8. ตรวจสอบหน้า ""My Lists""
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    9. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Select Privileges Campaign (First Campaign eg.KFC)
    ...    4. Click \ "Heart" icon
    ...    5. Capture screen
    ...    6. Click My Lists
    ...    7. Click "Privileges" Tab
    ...    8. Verify 'My Lists' page
    ...    - Campaign (Check Campaign name)
    ...    9. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Fevorite Privileges Campaign And Verify iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F4_Priv_IOS_1-3_1-2_Y_3_2] UnfavoritePrivileges Campaign
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. เลือก 'Campaign สิทธิพิเศษ' ที่ Favorite ไว้ (eg. เคเอฟซี)
    ...    4. กด รูปหัวใจ สีแดง
    ...    5. Capture screen
    ...    6. กดเข้า My Lists (รูปหัวใจ)
    ...    7. กดแถบ ""สิทธิพิเศษ""
    ...    8. ตรวจสอบหน้า ""My Lists""
    ...    - Campaign (Campaign ที่ Unfavorite ต้องหายไป )
    ...    9. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Select Privileges Campaign (First Campaign eg.KFC)
    ...    4. Click \ "Heart" icon (Red Heart)
    ...    5. Capture screen
    ...    6. Click My Lists
    ...    7. Click "Privileges" Tab
    ...    8. Verify 'My Lists' page
    ...    - Campaign (Unfavorite Campaign should be disappear)
    ...    9. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    CancelFevorite Privileges Campaign And Verify iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F4_Priv_IOS_1-3_1-2_Y_4_2] FavoritePoints Campaign
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. เลือก 'Campaign พอยท์' (เลือก Campaign แรก
    ...    eg. ไอเบอรี่)
    ...    4. กด รูปหัวใจ
    ...    5. Capture screen
    ...    6. กดเข้า My Lists (รูปหัวใจ)
    ...    7. กดแถบ ""พอยท์""
    ...    8. ตรวจสอบหน้า ""My Lists""
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    9. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Select Points Campaign (First Campaign eg.iberry)
    ...    4. Click \ "Heart" icon
    ...    5. Capture screen
    ...    6. Click My Lists
    ...    7. Click "Points" Tab
    ...    8. Verify 'My Lists' page
    ...    - Campaign (Check Campaign name)
    ...    9. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Fevorite Point Campaign And Verify iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F4_Priv_IOS_1-3_1-2_Y_5_2] UnfavoritePoints Campaign
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. เลือก 'Campaign พอยท์' ที่ Favorite ไว้ (eg. ไอเบอรี่)
    ...    4. กด รูปหัวใจ สีแดง
    ...    5. Capture screen
    ...    6. กดเข้า My Lists (รูปหัวใจ)
    ...    7. กดแถบ ""พอยท์""
    ...    8. ตรวจสอบหน้า ""My Lists""
    ...    - Campaign (Campaign ที่ Unfavorite ต้องหายไป )
    ...    9. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Select Points Campaign (First Campaign eg.iberry)
    ...    4. Click \ "Heart" icon (Red Heart)
    ...    5. Capture screen
    ...    6. Click My Lists
    ...    7. Click "Points" Tab
    ...    8. Verify 'My Lists' page
    ...    - Campaign (Unfavorite Campaign should be disappear)
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    CancelFevorite Point Campaign And Verify iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F4_Priv_IOS_1-3_1-2_Y_6_2] My Lists FeatureGo to My Lists_after close application
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. เลือก 'Campaign สิทธิพิเศษ' (เลือก Campaign แรก
    ...    eg. เคเอฟซี)
    ...    4. กด รูปหัวใจ
    ...    5. Capture screen
    ...    6. กดเข้า My Lists (รูปหัวใจ)
    ...    7. กดแถบ ""สิทธิพิเศษ""
    ...    8. ตรวจสอบหน้า ""My Lists""
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    9. Capture screen
    ...    10. ปิด MyAIS Application
    ...    11. เข้าสู่ระบบ MyAIS.
    ...    12. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    13. กดเข้า My Lists (รูปหัวใจ)
    ...    14. กดแถบ ""สิทธิพิเศษ""
    ...    15. ตรวจสอบหน้า ""My Lists""
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกันอยู่)
    ...    16. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Select Privileges Campaign (First Campaign eg.KFC)
    ...    4. Click \ "Heart" icon
    ...    5. Capture screen
    ...    6. Click My Lists
    ...    7. Click "Privileges" Tab
    ...    8. Verify 'My Lists' page
    ...    - Campaign (Check Campaign name)
    ...    9. Capture screen
    ...    10. Close "My AIS" application
    ...    11. Login \ MyAIS.
    ...    12.Click Menu "Points & Privileges"
    ...    13. Click My Lists
    ...    14. Click "Privileges" Tab
    ...    15. Verify 'My Lists' page
    ...    - Campaign (Check Campaign name)
    ...    16. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    ${Campaign}    Fevorite Privileges Campaign Verify And Return Campaign Name iOS
    Close Application
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Verify Fevorite Privileges Campaign iOS    ${Campaign}
    Unfevorite Privileges iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F5_Priv_IOS_1-3_1-2_Y_1_2] Recents FeatureVerify Recents page
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดเข้า Recents (รูปนาฬิกา)
    ...    4. ตรวจสอบหน้า ""Recents""
    ...    - Recents (Label)
    ...    - แถบ ""สิทธพิเศษ""
    ...    - แถบ ""พอยท์""
    ...    5. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "Recents"
    ...    4. Verify 'Recents' page
    ...    - Recents (Label)
    ...    - "Privileges" \ Tab
    ...    - "Points" \ Tab
    ...    5. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Recents Menu iOS
    Verify Recents Menu iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F5_Priv_IOS_1-3_1-2_Y_2_2] Recents FeatureCheck Recents History_Privileges
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. เลือก 'Campaign สิทธิพิเศษ' (เลือก Campaign แรก
    ...    eg. เคเอฟซี)
    ...    4. Capture screen
    ...    5. กดเข้า Recents (รูปนาฬิกา)
    ...    6. กดแถบ ""สิทธิพิเศษ""
    ...    7. ตรวจสอบหน้า ""Recents""
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Select Privileges Campaign (First Campaign eg.KFC)
    ...    4. Capture screen
    ...    5. Click "Recents"
    ...    6. Click "Privileges" Tab
    ...    7. Verify 'Recents' page
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Select First Privileges Campaign And Verify Campaign Name iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F5_Priv_IOS_1-3_1-2_Y_3_2] Recents FeatureCheck Recents History_Points
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH"1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. เลือก 'Campaign พอยท์' (เลือก Campaign แรก
    ...    eg. ไอเบอรี่)
    ...    4. Capture screen
    ...    5. กดเข้า Recents (รูปนาฬิกา)
    ...    6. กดแถบ ""พอยท์""
    ...    7. ตรวจสอบหน้า ""Recents""
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Select Points Campaign (First Campaign eg.iberry)
    ...    4. Capture screen
    ...    5. Click "Recents"
    ...    6. Click "Points" Tab
    ...    7. Verify 'Recents' page
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Select Frist Points Campaign And Verify Campaign Name iOS
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F5_Priv_IOS_1-3_1-2_Y_4_2] Recents FeatureGo to Recents_after close application
    [Documentation]    Owner : Tong
    ...
    ...    *Pre-requisite*
    ...    Source Number : 3PE,3PO,3BE
    ...    Status : Active
    ...    Test Step TH
    ...    "1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. เลือก 'Campaign สิทธิพิเศษ' (เลือก Campaign แรก
    ...    eg. เคเอฟซี)
    ...    4. Capture screen
    ...    5. กดเข้า Recents (รูปนาฬิกา)
    ...    6. กดแถบ ""สิทธิพิเศษ""
    ...    7. ตรวจสอบหน้า ""Recents""
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...    9. ปิด MyAIS Application
    ...    10. เข้าสู่ระบบ MyAIS.
    ...    11. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    12. กดเข้า Recents (รูปนาฬิกา)
    ...    13. กดแถบ ""สิทธิพิเศษ""
    ...    14. ตรวจสอบหน้า ""Recents""
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    15. Capture screen"
    ...
    ...    Test Step EN
    ...    '1. Login \ MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Select Privileges Campaign (First Campaign eg.KFC)
    ...    4. Capture screen
    ...    5. Click "Recents"
    ...    6. Click "Privileges" Tab
    ...    7. Verify 'Recents' page
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    ...    9. Close "My AIS" application
    ...    10. Login \ MyAIS.
    ...    11.Click Menu "Points & Privileges"
    ...    12. Click "Recents"
    ...    13. Click "Privileges" Tab
    ...    14. Verify \ "Recents" page
    ...    - Campaign (Check Campaign name)
    ...    15. Capture screen
    [Tags]    TH    EN    active    success
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    ${recentCampaign}    Select First Privileges Campaign And Verify Campaign Name iOS
    Close Application
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Comment    Select Menu Points And Privileges iOS
    Verify Recent Privileges Campaign iOS    ${recentCampaign}
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Priv_IOS_1-3_1-2_Y_1_2] Privileges feature verify Privileges page
    [Documentation]    Owner : Mac Rukpong, Asma
    ...
    ...    N-Type Number : 3PE,3PO,3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "สิทธิพิเศษ"
    ...    4. ตรวจสอบหน้า "สิทธิพิเศษ"
    ...    - สิทธิพิเศษ (Label)
    ...    - Nearby (category)
    ...    - กินดื่ม (category)
    ...    - ช๊อปปิ้ง (category)
    ...    - บันเทิง (category)
    ...    - ท่องเที่ยวและเดินทาง (category)
    ...    - ไลฟ์สไตล์ (category)
    ...    - เซเรเนด (category)
    ...    5. Capture screen
    ...    -----------------------
    ...    EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Privileges" Campaign
    ...    4. Verify "Privileges" page
    ...    - Privileges (Label)
    ...    - Nearby (category)
    ...    - Food (category)
    ...    - Shopping (category)
    ...    - Entertainment (category)
    ...    - Traveling (category)
    ...    - Lifestyle (category)
    ...    - Serenade (category)
    ...    5. Capture screen
    [Tags]    point_and_privileges_IOS    success    regression    active    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtualdevice_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Privileges
    Verify Privileges
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Priv_IOS_1-3_1-2_Y_2_2] Privileges feature select campaign from Nearby category
    [Documentation]    Owner : Mac Rukpong, Asma
    ...
    ...    N-Type Number : 3PE,3PO,3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "สิทธิพิเศษ"
    ...    4. เลือก Category "Nearby"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg. BLACK CANYON)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก Nearby)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...    -----------------------
    ...
    ...    EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Privileges" Campaign
    ...    4. Select "Nearby" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg. BLACK CANYON)
    ...    7. Verify Campaign page( From Nearby Category)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    point_and_privileges_IOS    success    regression    active    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Privileges
    Go To Privileges Nearby And Verify
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Priv_IOS_1-3_1-2_Y_3_2] Privileges feature select campaign from Food category
    [Documentation]    Owner : Mac Rukpong, Asma
    ...
    ...    N-Type Number : 3PE,3PO,3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "สิทธิพิเศษ"
    ...    4. เลือก Category "กินดื่ม"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg. เคเอฟซี)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก กินดื่ม)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...    -----------------------
    ...
    ...    EN
    ...    '1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Privileges" Campaign
    ...    4. Select "Food" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg. KFC)
    ...    7. Verify Campaign page( From Food Category)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    point_and_privileges_IOS    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Privileges
    Go To Privileges Food And Verify
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Priv_IOS_1-3_1-2_Y_4_2] Privileges feature select campaign from Shopping category
    [Documentation]    Owner : Mac Rukpong, Asma
    ...
    ...    N-Type Number : 3PE, 3PO,3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "สิทธิพิเศษ"
    ...    4. เลือก Category "ช้อปปิ้ง"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg. ช้อปปิ้)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก ช้อปปิ้ง)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...    -----------------------
    ...
    ...    EN
    ...    '1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Privileges" Campaign
    ...    4. Select "Shopping" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg. บีทูเอส)
    ...    7. Verify Campaign page( From Shopping Category)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    point_and_privileges_IOS    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Privileges
    Go To Privileges Shopping And Verify
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Priv_IOS_1-3_1-2_Y_5_2] Privileges feature select campaign from Entertainment category
    [Documentation]    Owner : Mac Rukpong, Asma
    ...
    ...    N-Type Number : 3PE, 3PO,3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "สิทธิพิเศษ"
    ...    4. เลือก Category "บันเทิง"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg. สวนน้ำโพโรโระ)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก บันเทิง)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...    -----------------------
    ...
    ...    EN
    ...    '1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Privileges" Campaign
    ...    4. Select "Entertainment" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg. ไดโนฟาร์ม)
    ...    7. Verify Campaign page( From Entertainment Category)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    point_and_privileges_IOS    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Privileges
    Go To Privileges Entertainment And Verify
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Priv_IOS_1-3_1-2_Y_6_2] Privileges feature select campaign from Traveling category
    [Documentation]    Owner : Mac Rukpong, Asma
    ...
    ...    N-Type Number : 3PE, 3PO,3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "สิทธิพิเศษ"
    ...    4. เลือก Category "ท่องเที่ยวและเดินทาง"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg. เดอะ คอรัล)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก ท่องเที่ยวและเดินทาง)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...    -----------------------
    ...
    ...    EN
    ...    '1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Privileges" Campaign
    ...    4. Select "Traveling" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg. ออโต้ สปา)
    ...    7. Verify Campaign page( From Traveling Category)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    point_and_privileges_IOS    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Privileges
    Go To Privileges Travel And Verify
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Priv_IOS_1-3_1-2_Y_7_2] Privileges feature select campaign from Lifestyle category
    [Documentation]    Owner : Asma
    ...
    ...    N-Type Number : 3PE,3PO,3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "สิทธิพิเศษ"
    ...    4. เลือก Category "ไลฟ์สไตล์"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg. จัมป์ สเปซ ขอนแก่น)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก ไลฟ์สไตล์)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...    -----------------------
    ...
    ...    EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Privileges" Campaign
    ...    4. Select "Lifestyle" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg. จัมป์ สเปซ ขอนแก่น)
    ...    7. Verify Campaign page( From Lifestyle Category)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    point_and_privileges_IOS    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Privileges
    Go To Privileges Life Style And Verify
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Priv_IOS_1-3_1-2_Y_8_2] Privileges feature select campaign from Serenade category
    [Documentation]    Owner : Mac Rukpong, Asma
    ...
    ...    N-Type Number : 3PE, 3PO,3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "สิทธิพิเศษ"
    ...    4. เลือก Category "เซเรเนด"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg. xxx)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก เซเรเนด)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...    -----------------------
    ...
    ...    EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Privileges" Campaign
    ...    4. Select "Serenade" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg. xxx)
    ...    7. Verify Campaign page( From Serenade Category)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    point_and_privileges_IOS    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Privileges
    Go To Privileges Serenade And Verify
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Priv_IOS_1_1-2_Y_9_2] Privileges feature verify Call button
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม 'ค้นหา'
    ...    4. ระบุข้อความที่ต้องการค้นหา "กิวโนะยะ"
    ...    5. กด ค้นหา
    ...    6. กดเลือกแถบ "สิทธิพิเศษ"
    ...    7. Capture screen
    ...    8. กดเลือก Campaign
    ...    10.Capture screen
    ...    11. กดปุ่ม "โทร"
    ...    12. ตรวจสอบเบอร์โทร (ตรวจสอบว่าเปิด Phone ขึ้นมา)
    ...    13. Capture screen
    ...    -----------------------
    ...
    ...    EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "Search" bar
    ...    4. Input text "xxx"
    ...    5. Click "Search" button
    ...    6. Click "Privileges" Tab
    ...    7. Capture screen
    ...    8. Select Campaign
    ...    10.Capture screen (First Campaign eg. xxx)
    ...    11. Verify "Call" button (Visible)
    ...    12. Capture screen
    [Tags]    3PE    point_and_privileges_IOS    success    regression    active    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Points and privileges search keyword    ${CampaignCallPriv}    ${virtual_device_1_SN}
    # Verify Priv Call Feature
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Priv_IOS_1_1-2_Y_10_2] Privileges feature verify Navigation button
    [Documentation]    Owner : Mac Rukpong
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม 'ค้นหา'
    ...    4. ระบุข้อความที่ต้องการค้นหา "กิวโนะยะ"
    ...    5. กด ค้นหา
    ...    6. กดเลือกแถบ "สิทธิพิเศษ"
    ...    7. Capture screen
    ...    8. กดเลือก Campaign
    ...    10.Capture screen
    ...    11. กดปุ่ม "นำทาง"
    ...    12. ตรวจสอบเส้นทาง (ตรวจสอบว่าเปิด map ขึ้นมา)
    ...    13. Capture screen
    ...    -----------------------
    ...
    ...    EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "Search" bar
    ...    4. Input text "xxx"
    ...    5. Click "Search" button
    ...    6. Click "Privileges" Tab
    ...    7. Capture screen
    ...    8. Select Campaign
    ...    10.Capture screen (First Campaign eg. xxx)
    ...    11. Verify "Navigation" button (Visible)
    ...    12. Capture screen
    [Tags]    3PE    point_and_privileges_IOS    success    regression    active    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Points and privileges search keyword    ${CampaignCallPriv}    ${virtual_device_1_SN}
    # Verify Priv Map Feature
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F6_Priv_IOS_1-3_1-2_Y_11_2] Privileges feature verify banner on Privileges page
    [Documentation]    Owner : Mac Rukpong, Asma
    ...
    ...    N-Type Number : 3PE,3PO,3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3.เลือก สิทธิพิเศษ
    ...    4. คลิก "เพิ่มเติม"
    ...    5.เลือก Banner ไปซ้าย-ขวา
    ...    6.ระบบสามารถเลือก Banner ได้
    ...    -----------------------
    ...    Expected Result
    ...    หน้าจอ 'สิทธิพิเศษ'
    ...    คลิก "เพิ่มเติม"
    ...    - ระบบสามารถเลือก Banner ไปซ้าย-ขวา ได้
    ...
    ...    EN
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3.เลือก สิทธิพิเศษ
    ...    4. คลิก "เพิ่มเติม"
    ...    5.เลือก Banner ไปซ้าย-ขวา
    ...    6.ระบบสามารถเลือก Banner ได้
    ...    หน้าจอ 'สิทธิพิเศษ'
    ...    คลิก "เพิ่มเติม"
    ...    - ระบบสามารถเลือก Banner ไปซ้าย-ขวา ได้
    ...    กดปุ่ม กลับ
    [Tags]    point_and_privileges_IOS    success    regression    active    onhold
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Privileges
    Verify Swipe Banner
    Click Mobile Element    ${lblPlivilegesBanner}
    Verify Select Banner And Redirect
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F7_Priv_IOS_1-3_1-2_Y_1_2] Points Feature Verify Points page
    [Documentation]    *Owner Tinpan*
    ...
    ...    Status : Active
    ...    Test Step TH
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "พอยท์"
    ...    4. ตรวจสอบหน้า "พอยท์"
    ...    - สิทธิพิเศษ (Label)
    ...    - Nearby (category)
    ...    - แลกอาหาร เครื่องดื่ม (category)
    ...    - แลกค่าโทร ค่าเน็ตฟรี (category)
    ...    - แลกช๊อปฟรีสะใจ (category)
    ...    - แลกส่วนลดมือถือ (category)
    ...    - แลกตั๋วหนัง (category)
    ...    - แลกอุ่นใจคอลเลคชั่น (category)
    ...    - ของรางวัลสุดฮ็อต (category)
    ...    - แลกเปลี่ยนคะแนน (category)
    ...    5. Capture screen
    ...
    ...    Test Step EN
    ...    1. Login MyAIS.
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Points" Campaign
    ...    4. Verify "Points" page
    ...    - Points (Label)
    ...    - Nearby (category)
    ...    - Food & Drink (category)
    ...    - Voice Call & Internet (category)
    ...    - Shopping (category)
    ...    - Device Discount (category)
    ...    - Movie Tickets (category)
    ...    - Aunjai Collections (category)
    ...    - Hot Rewards (category)
    ...    - Convert Points (category)
    ...    5. Capture screen
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Select More    Point    #Select More Detail of Point
    Verify Points
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F7_Priv_IOS_1-3_1-2_Y_2_2] Points Feature Select Campaign from Nearby Category
    [Documentation]    *Owner Tinpan*
    ...
    ...    Status : Active
    ...    Test Step TH
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "พอยท์"
    ...    4. เลือก Category "Nearby"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg.WUTTISAK CLINIC)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก Nearby)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...
    ...    Test Step EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Points" Campaign
    ...    4. Select "Nearby" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg.WUTTISAK CLINIC)
    ...    7. Verify Campaign page( From Nearby)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Select More    Point    #Select More Detail of Point
    Select Point Menu    Nearby    #Select Promotion category
    ${CampaingName}=    Select First Campaign    #return campaing name for Verify
    Verify First Campaign in Nearby Page    ${CampaingName}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F7_Priv_IOS_1-3_1-2_Y_3_2] Points Feature Select Campaign from Food and Drink Category
    [Documentation]    *Owner Tinpan*
    ...
    ...    Status : Active
    ...    Test Step TH
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "พอยท์"
    ...    4. เลือก Category " แลกอาหาร เครื่องดื่ม"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg.ร้านรสนิยม)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก แลกอาหาร เครื่องดื่ม)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...
    ...    Test Step EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Points" Campaign
    ...    4. Select "Food & Drink" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg.ร้านรสนิยม)
    ...    7. Verify Campaign page( From Food & Drink)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Select More    Point    #Select More Detail of Point
    Select Point Menu    FoodAndDrink    #Select Promotion category
    ${CampaingName}=    Select First Campaign    #return campaing name for Verify
    Verify First Campaign in Food And Drink Page    ${CampaingName}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F7_Priv_IOS_1-3_1-2_Y_4_2] Points Feature Select Campaign from Voice Call and Internet Category
    [Documentation]    *Owner Tinpan*
    ...
    ...    Status : Active
    ...    -----------------------
    ...    Test Step TH
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "พอยท์"
    ...    4. เลือก Category "แลกค่าโทร ค่าเน็ตฟรี"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg.xxx)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก แลกค่าโทร ค่าเน็ตฟรี)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...
    ...    Test Step EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Points" Campaign
    ...    4. Select "Voice Call & Internet" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg.xxx)
    ...    7. Verify Campaign page( From Voice Call & Internet)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Select More    Point    #Select More Detail of Point
    Select Point Menu    FreeCallAndFreeNet    #Select Promotion category
    ${CampaingName}=    Select First Campaign    #return campaing name for Verify
    Verify First Campaign in Voice Call And Internet Page    ${CampaingName}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F7_Priv_IOS_1-3_1-2_Y_5_2] Points Feature Select Campaign from Shopping Category
    [Documentation]    *Owner Tinpan*
    ...
    ...    Status : Active
    ...    -----------------------
    ...    Test Step TH
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "พอยท์"
    ...    4. เลือก Category "แลกช้อปฟรีสะใจ"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg.วุฒิ-ศักดิ์ คลีนิก)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก แลกช้อปฟรีสะใจ)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...
    ...    Test Step EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Points" Campaign
    ...    4. Select "Shopping" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg.วุฒิ-ศักดิ์ คลีนิก)
    ...    7. Verify Campaign page( From Shopping)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Select More    Point    #Select More Detail of Point
    Select Point Menu    FreeShopping    #Select Promotion category
    ${CampaingName}=    Select First Campaign    #return campaing name for Verify
    Verify First Campaign in Shopping Page    ${CampaingName}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F7_Priv_IOS_1-3_1-2_Y_6_2] Points Feature Select Campaign from Device Discount Category
    [Documentation]    *Owner Tinpan*
    ...
    ...    Status : Active
    ...    -----------------------
    ...    Test Step TH
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "พอยท์"
    ...    4. เลือก Category "แลกส่วนลดมือถือ"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg.xxx)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก แลกส่วนลดมือถือ)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...
    ...    Test Step EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Points" Campaign
    ...    4. Select "Device Discount" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg.xxx)
    ...    7. Verify Campaign page( From Device Discount)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Select More    Point    #Select More Detail of Point
    Select Point Menu    DiscountPhone    #Select Promotion category
    ${CampaingName}=    Select First Campaign    #return promotion name for Verify
    Verify First Campaign in Devices Discount Page    ${CampaingName}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F7_Priv_IOS_1-3_1-2_Y_7_2] Points Feature Select Campaign from Movie Tickets Category
    [Documentation]    *Owner Tinpan*
    ...
    ...    Status : Active
    ...    -----------------------
    ...    Test Step TH
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "พอยท์"
    ...    4. เลือก Category "แลกตั๋วหนัง"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg.เอส เอฟ ซีเนม่า)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก แลกตั๋วหนัง)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...
    ...    Test Step EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Points" Campaign
    ...    4. Select "Movie Tickets" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg.เอส เอฟ ซีเนม่า)
    ...    7. Verify Campaign page( From Movie Tickets)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Select More    Point    #Select More Detail of Point
    Select Point Menu    Ticket    #Select Promotion menu
    ${CampaingName}=    Select First Campaign    #return promotion name for Verify
    Verify First Campaign in Movie Tickets Page    ${CampaingName}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F7_Priv_IOS_1-3_1-2_Y_8_2] Points Feature Select Campaign from Aunjai Collections Category
    [Documentation]    *Owner Tinpan*
    ...
    ...    Status : Active
    ...    -----------------------
    ...    Test Step TH
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "พอยท์"
    ...    4. เลือก Category "แลกอุ่นใจคอลเลกชั่น"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg.xxx)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก แลกอุ่นใจคอลเลกชั่น)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...
    ...    Test Step EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Points" Campaign
    ...    4. Select "Aunjai Collections" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg.xxx)
    ...    7. Verify Campaign page( From Aunjai Collections)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Select More    Point    #Select More Detail of Point
    Select Point Menu    AunJaiCollections    #Select Promotion menu
    ${CampaingName}=    Select First Campaign    #return promotion name for Verify
    Verify First Campaign in Aunjai Collections Page    ${CampaingName}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F7_Priv_IOS_1-3_1-2_Y_9_2] Points Feature Select Campaign from Hot Rewards Category
    [Documentation]    *Owner Tinpan*
    ...
    ...    Status : Active
    ...    -----------------------
    ...    Test Step TH
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "พอยท์"
    ...    4. เลือก Category "แลกของรางวัลสุดฮ็อต"
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg.สโนว์ แอนด์ ไอซ์ แพลนเน็ต)
    ...    7. ตรวจสอบหน้า Campaign (ที่เข้ามาจาก แลกของรางวัลสุดฮ็อต)
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...
    ...    Test Step EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Points" Campaign
    ...    4. Select "Hot Rewards" Category
    ...    5. Capture screen
    ...    6. Select Campaign(First Campaign eg.สโนว์ แอนด์ ไอซ์ แพลนเน็ต)
    ...    7. Verify Campaign page( From Hot Rewards)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Select More    Point    #Select More Detail of Point
    Select Point Menu    HotRewards    #Select Promotion menu
    ${CampaingName}=    Select First Campaign    #return promotion name for Verify
    Verify First Campaign In Hot Rewards Page    ${CampaingName}
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F7_Priv_IOS_1-3_1-2_Y_10_2] Points Feature Select Campaign from Convert Points Category
    [Documentation]    *Owner Tinpan*
    ...
    ...    Status : Active
    ...    -----------------------
    ...    Test Step TH
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "พอยท์"
    ...    4. เลือก Category "แลกเปลี่ยนคะแนน"
    ...    5. redirect ไปหน้า แลกเปลี่ยนคะแนน
    ...    6. ตรวจสอบหน้า แลกเปลี่ยนคะแนน
    ...    7. Capture screen
    ...
    ...    Test Step EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Points" Campaign
    ...    4. Select "Convert Points" Category
    ...    5. Redirect to Convert Points
    ...    6. Verify Convert Points page
    ...    7. Capture screen
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Select More    Point    #Select More Detail of Point
    Select Point Menu    ConvertPoint    #Select Promotion menu
    Verify Convert Point Page
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F7_Priv_IOS_1-3_1-2_Y_11_2] Points Feature Verify Call button
    [Documentation]    *Owner Tinpan*
    ...
    ...    Status : Active
    ...    -----------------------
    ...    Test Step TH
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม 'ค้นหา'
    ...    4. ระบุข้อความที่ต้องการค้นหา "อานตี้ แอนส์"
    ...    5. กด ค้นหา
    ...    6. กดเลือกแถบ "พอยท์"
    ...    7. Capture screen
    ...    8. กดเลือก Campaign
    ...    10.Capture screen
    ...    11. กดปุ่ม "โทร"
    ...    12. ตรวจสอบเบอร์โทร (ตรวจสอบว่าเปิด Phone ขึ้นมา)
    ...    13. Capture screen
    ...
    ...    Test Step EN
    ...    1. Login MyAIS.
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "Search" bar
    ...    4. Input text "xxx"
    ...    5. Click "Search" button
    ...    6. Click "Points" Tab
    ...    7. Capture screen
    ...    8. Select Campaign (First Campaign eg. xxx)
    ...    10.Capture screen
    ...    11. Verify "Call" button (Visible)
    ...    12. Capture screen
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Select More    Point    #Select More Detail of Point
    Comment    seach xxx
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F7_Priv_IOS_1-3_1-2_Y_12_2] Points Feature Verify Navigation button
    [Documentation]    *Owner Tinpan*
    ...
    ...    Status : Active
    ...    -----------------------
    ...    Test Step TH
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม 'ค้นหา'
    ...    4. ระบุข้อความที่ต้องการค้นหา "อานตี้ แอนส์"
    ...    5. กด ค้นหา
    ...    6. กดเลือกแถบ "พอยท์"
    ...    7. Capture screen
    ...    8. กดเลือก Campaign
    ...    10.Capture screen
    ...    11. กดปุ่ม "นำทาง"
    ...    12. ตรวจสอบเส้นทาง (ตรวจสอบว่าเปิด map ขึ้นมา)
    ...    13. Capture screen
    ...
    ...    Test Step EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "Search" bar
    ...    4. Input text "xxx"
    ...    5. Click "Search" button
    ...    6. Click "Points" Tab
    ...    7. Capture screen
    ...    8. Select Campaign (First Campaign eg. xxx)
    ...    10.Capture screen
    ...    11. Verify "Navigation" button (Visible)
    ...    12. Capture screen
    [Tags]    active    success    regression
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_NETWORK}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}
    Select Menu Points And Privileges
    Select More    Point    #Select More Detail of Point
    Comment    seach xxx
    [Teardown]    Keywords For TearDown    ${#dict_device_name}

[F7_Priv_IOS_1-3_1-2_Y_13_2] Points Feature Select Banner in Points Page
    [Documentation]    Owner : Tinpan
    ...
    ...    N-Type Number : 3PE
    ...    -----------------------
    ...    Test Step TH
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3.เลือก พอยท์
    ...    4. คลิก "เพิ่มเติม"
    ...    5. ระบบแสดงจำนวนคงเหลือของ พอยท์ / Exp
    ...    6.เลือก Banner
    ...    7.ระบบสามารถเลือก Banner ไปซ้าย-ขวา ได้
    ...
    ...    Test Step EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Points" Campaign
    ...    4. Show Points/ Exp
    ...    6. Select Banner
    ...    7.Can slide Banner left-right
    [Tags]    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Select More    Point    #Select More Detail of Point
    Verify Current Points And Expire
    Check Swipe Point Banner
    #Click Mobile Element    ${btnSecondBanner}
    #Click Mobile Element    ${btnFirstBanner}
    Comment    *messagesClick Mobile Element    ${imgPointFirstBanner}
    Comment    *messagesVerify Select Banner And Redirect iOS
    #Sleep    15
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F8_Priv_IOS_1-3_1-2_Y_1_2] Verify Nearby page
    [Documentation]    Owner : Mac Rukpong, Asma
    ...
    ...    N-Type Number : 3PE, 3PO, 3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "Nearby" (*Check button 'maps')
    ...    4. ตรวจสอบหน้า Nearby
    ...    - Nearby (Label)
    ...    5. Capture screen
    ...    -----------------------
    ...    EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "Maps" at "Nearby" Campaign
    ...    4. Verify "Nearby" page
    ...    - Nearby (Label)
    [Tags]    point_and_privileges_IOS    success    regression    active
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Nearby
    Verify Nearby
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F8_Priv_IOS_1-3_1-2_Y_2_2] Select campaign from Nearby page
    [Documentation]    Owner : Mac Rukpong, Asma
    ...
    ...    N-Type Number : 3PE, 3PO, 3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "Nearby"
    ...    4. เลือกประเภทการแสดงเป็นแบบ "แผนที่" (ปุ่มขวาบน) (*ปุ่มขวาบนเป็นปุ่ม taggle ระหว่าง list กับ map)
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg.INTHANIN COFFEE)
    ...    7.ตรวจสอบหน้า Campaign (ที่เข้ามาจาก "Nearby")
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...    -----------------------
    ...    EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "Maps" at "Nearby" Campaign
    ...    4. Change to "Map view" (Top Right map icon)
    ...    5. Capture screen
    ...    6. Select Campaign (First Campaign eg.INTHANIN COFFEE)
    ...    7.Verify Campaign page( From Nearby)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    point_and_privileges_IOS    success    regression    active    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Nearby
    Verify Nearby Map Page
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F8_Priv_IOS_1-3_1-2_Y_3_2] Select campaign from Nearby page (listmenu)
    [Documentation]    Owner : Mac Rukpong, Asma
    ...
    ...    N-Type Number : 3PE, 3PO, 3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. กดปุ่ม "เพิ่มเติม" ที่ Campaign "Nearby"
    ...    4. เลือกประเภทการแสดงเป็นแบบ "ลิสรายการ" (ปุ่มขวาบน จะเป็นรูปแฮมเบอเกอร์เมนู) (*ปุ่มขวาบนเป็นปุ่ม taggle ระหว่าง list กับ map)
    ...    5. Capture screen
    ...    6. กดเลือก Campaign(เลือก Campaign แรก eg.INTHANIN COFFEE)
    ...    7.ตรวจสอบหน้า Campaign (ที่เข้ามาจาก "Nearby")
    ...    - Campaign (ตรวจสอบชื่อว่าตรงกัน)
    ...    8. Capture screen
    ...    -----------------------
    ...    EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "Maps" at "Nearby" Campaign
    ...    4. Change to "List view" (Top Right hamburger icon)
    ...    5. Capture screen
    ...    6. Select Campaign (First Campaign eg.INTHANIN COFFEE)
    ...    7.Verify Campaign page( From Nearby)
    ...    - Campaign (Check Campaign name)
    ...    8. Capture screen
    [Tags]    point_and_privileges_IOS    success    regression    active    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Nearby
    Go To Nearby List And Verify
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F9_Priv_IOS_1-3_1-2_Y_1_2] Select Privileges and verify Privileges page
    [Documentation]    Owner : Mac Rukpong, Asma
    ...
    ...    N-Type Number : 3PE, 3PO, 3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. เลือก สิทธิพิเศษ
    ...    4. แสดงรายละเอียด Campaign ต่างๆ เมนู สิทธิพิเศษ
    ...    -----------------------
    ...    Expected Result
    ...    หน้าจอ 'สิทธิพิเศษ'
    ...    - แสดงรายละเอียด Campaign ต่างๆ เมนู สิทธิพิเศษ
    ...
    ...    EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Select Privileges
    ...    4. Show Campaign Menu Privileges
    ...    หน้าจอ 'สิทธิพิเศษ'
    ...    - แสดงรายละเอียด Campaign ต่างๆ เมนู สิทธิพิเศษ
    [Tags]    point_and_privileges_IOS    success    regression    active    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Privileges
    Verify Privileges
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F10_Priv_IOS_1-3_1-2_Y_1_2] Select Point and verify Point page
    [Documentation]    Owner : Mac Rukpong, Asma
    ...
    ...    N-Type Number : 3PE, 3PO, 3BE
    ...    -----------------------
    ...    Test Step
    ...    1. เข้าสู่ระบบ MyAIS.
    ...    2. เลือกเมนู 'พอยท์ & สิทธิพิเศษ'
    ...    3. เลือก พอยท์
    ...    4. แสดงรายละเอียด Campaign ต่างๆ เมนู พอยท์
    ...    -----------------------
    ...    Expected Result
    ...    หน้าจอ 'พอยท์'
    ...    - แสดงรายละเอียด Campaign ต่างๆ เมนู พอยท์
    ...
    ...    EN
    ...    1. Login MyAIS.
    ...    2.Click Menu "Points & Privileges"
    ...    3. Click "more" at "Points" Campaign
    ...    4. Show campaign
    ...    'หน้าจอ 'พอยท์'
    ...    - แสดงรายละเอียด Campaign ต่างๆ เมนู พอยท์
    [Tags]    point_and_privileges_IOS    success    regression    active    demo
    &{#dict_device_name}=    Create Dictionary
    &{#dict_device_name}=    Take And Define Virtual Local Configuration    ${#dict_device_name}    ${lo_MyAIS_local_config_file_path}    virtual_device_1    ${ar_TAKE_TIMEOUT}    ${ar_NType}=include
    ${Number}    Get From Dictionary    ${virtual_device_1_Number}    ${ar_NType}
    Set Network Connection    ${${ar_Network}}    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_SN}
    ${appiumInfo}    Open My AIS    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}
    Login    ${virtual_device_1_IPAppium}    ${virtual_device_1_Platfrom_Name}    ${virtual_device_1_Platfrom_Version}    ${virtual_device_1_SN}    ${Number}    ${ar_NETWORK}
    Choose Language    ${ar_LANG}    ${ar_NETWORK}
    Select Menu Points And Privileges
    Go To Points
    Verify Points
    [Teardown]    Keywords For Teardown    ${#dict_device_name}

[F0_0_0_Y_0_Test] Smoke test
    [Tags]    smoke    TH    EN
    log    test smoke
