# coding=utf-8
import re
import xml.etree.ElementTree as ElementTree
from array import array
from lxml import etree

# define constant
import xlsxwriter

LEN_EXECUTOR = 50
LEN_MENU_NAME = 50
LEN_TESTCASE_NAME = 85
LEN_LANGUAGE_NAME = 12
LEN_ERROR_MSG = 100
LEN_NTYPE_NAME = 20
LEN_KEYWORD_PASS = 50
LEN_IMAGE_PASS = 30
LEN_DATETIME_PASS = 30
LEN_MOBILE_NUMBER = 20
INDEX_START = 2
WORKSHEET_NAME = 'Log analyzer'


class Analyzer:
    def __init__(self):
        pass

    # ===============================================================================================================
    # ======================================== My AIS Application Multi Executors ===================================

    @staticmethod
    def error_analyze_for_myaisapp_multiexecutors(xml_file, workbook):
        index = INDEX_START
        index_executor_start = INDEX_START
        index_lang_start = INDEX_START
        index_menu_start = INDEX_START
        index_ntype_start = INDEX_START

        worksheet = Analyzer._init_worksheet_success_myais_multiexecutors(workbook)
        data_format = Analyzer._data_format(workbook)
        general_error_format = Analyzer._error_msg_format(workbook)
        script_error_format = Analyzer._error_script_msg_format(workbook)
        system_error_format = Analyzer._error_system_msg_format(workbook)

        context = etree.iterparse(xml_file, tag='suite')
        for action, executor in context:

            # if id is None go to continue
            if executor.get('id') is None:
                continue

            # if id is not like a s1-s1 or s1-s20 go to continue.
            if not (re.search(r'^s(\d)+-s(\d)+$', executor.get('id'))):
                continue

            # if find status not found PASS go to continue.
            if not (executor.find('status') is not None) and (executor.find('status').get('status') == 'PASS'):
                continue

            for menu in executor.findall('./suite'):
                # if status in language not found PASS go to continue.
                if not (menu.find('status') is not None) and (menu.find('status').get('status') == 'PASS'):
                    continue

                for lang in menu.findall('./suite'):
                    # if status in language not found PASS go to continue.
                    if not (lang.find('status') is not None) and (lang.find('status').get('status') == 'PASS'):
                        continue

                    for ntype in lang.findall('./suite'):
                        # if status in n-type not found PASS go to continue.
                        if not (ntype.find('status') is not None) and (ntype.find('status').get('status') == 'PASS'):
                            continue

                        for testcase in ntype.findall('.//test'):

                            # if status in test case not found PASS go to continue.
                            if (testcase.find('status') is not None) and (
                                        testcase.find('status').get('status') == 'PASS') == True:
                                continue

                            worksheet.write('E' + str(index), testcase.get("name"), data_format)
                            dialogMessage = testcase.find(
                                './/kw[@type="teardown"]//kw[@name="Log Dialog Msg From MyAIS"]/kw[@name="Log"]/msg')
                            loadingMessage = testcase.find(
                                './/kw[@type="teardown"]//kw[@name="Check Error Loading"]/kw[@name="Log"]/msg')
                            # if dialogMessage is not None:
                            #     message = dialogMessage.text
                            #     if message == "None" \
                            #             or message == 'ValueError: Element locator \'xpath=//*[@resource-id="com.ais.mimo.eservice.debug:id/my_ais_library_dialog_tv_message"]\' did not match any elements.' \
                            #             or message == u'ValueError: Element locator \'xpath=//*[@resource-id="com.ais.mimo.eservice:id/my_ais_library_dialog_tv_message"]\' did not match any elements.':
                            #         # message = testcase.find('status').text
                            #
                            #
                            # else:
                            #     # message = testcase.find('status').text
                            #


                            #  Find last message of keyword when found error
                            message = ""
                            for keyword in testcase.findall('./kw'):
                                # find keyword if PASS grep error.
                                if (keyword.find('status') is not None) and (
                                    keyword.find('status').get('status') == 'PASS'):
                                    list_msg_fail = keyword.findall('.//*msg[@level="PASS"]')
                                    size = len(list_msg_fail)
                                    if size > 0:
                                        message = list_msg_fail[size - 1].text
                                    break

                            # print "message = " + message
                            error_msg, error_type = Analyzer._analyze_error_msg_for_myaisapp(message)
                            if error_type is "Script":
                                worksheet.write('F' + str(index), error_msg, script_error_format)
                                # worksheet.insert_image('F'+str(index), 'python.png')
                            elif error_type is "System":
                                worksheet.write('F' + str(index), error_msg, system_error_format)
                            else:
                                worksheet.write('F' + str(index), error_msg, general_error_format)
                            # Add Keyword Fail in TestCase
                            # KeywordFail = testcase.find('./kw/status[@status="PASS"]/..').get('name')
                            # default msg
                            keyword_fail = "Can't analyze keyword error. !!!"
                            date_time_fail = "00000000 00:00:00.000"
                            mobile_number = "0000000000"

                            for keyword in testcase.findall('./kw'):
                                # find mobile number. (work around should be change to get from log in login)
                                if (keyword.get('name') == 'Get From Dictionary'):
                                    # assign = keyword.find('assign')
                                    msg = keyword.find('msg').text
                                    if (re.match('\$\{Number\}', msg) != None):
                                        mobile_number = re.search('\d{10}', msg).group(0)

                                # find keyword if not fail continue.
                                if (keyword.find('status') is not None) and (
                                            keyword.find('status').get('status') == 'PASS'):
                                    continue

                                keyword_fail = keyword.get('name')
                                date_time_fail = keyword.find('status').get('endtime')
                                break

                            worksheet.write('G' + str(index), keyword_fail, general_error_format)
                            worksheet.write('I' + str(index), date_time_fail, general_error_format)
                            worksheet.write('J' + str(index), mobile_number, general_error_format)
                            # Add image to Excel
                            imageAtFail = testcase.find(
                                './/kw[@type="teardown"]/kw[@name="Run Keyword If Test Failed"]/kw[@name="Capture Screen with Specific name"]/kw[@name="Log"]/msg')
                            if imageAtFail is not None:
                                GetimageName = imageAtFail.text
                                # print GetimageName
                                ListimageName = re.findall(r'[A-Za-z0-9.-\[_\-\,\]\s]+.png', GetimageName, re.M | re.I)
                                len_ListimageName = len(ListimageName)
                                # colums = ["F","G","H","I","J","K"]
                                # "F" column start with index 5
                                start_index_column = 7
                                # worksheet.set_column('G:K', 50)
                                # worksheet.set_row(90)
                                for i in range(len_ListimageName):
                                    colum_header = Analyzer.get_column_index_header(start_index_column + i)
                                    worksheet.set_column(colum_header + ':' + colum_header, 50)
                                    # worksheet.insert_image(colums[i] + str(index), xml_file + '\\..\\' + ListimageName[i] , {'x_scale': 0.4, 'y_scale': 0.4})
                                    worksheet.insert_image(colum_header + str(index),
                                                           xml_file + '\\..\\' + ListimageName[i],
                                                           {'x_scale': 0.4, 'y_scale': 0.4})
                                index += 1

                        if index_ntype_start == index - 1:
                            worksheet.write('D' + str(index_ntype_start), ntype.get("name"), data_format)
                        else:
                            worksheet.merge_range('D' + str(index_ntype_start) + ':D' + str(index - 1),
                                                  ntype.get("name"),
                                                  data_format)

                        index_ntype_start = index

                    if index_lang_start == index - 1:
                        worksheet.write('C' + str(index_lang_start), lang.get("name"), data_format)
                    else:
                        worksheet.merge_range('C' + str(index_lang_start) + ':C' + str(index - 1), lang.get("name"),
                                              data_format)
                    index_lang_start = index

                if index_menu_start == index - 1:
                    worksheet.write('B' + str(index_menu_start), menu.get("name"), data_format)
                else:
                    worksheet.merge_range('B' + str(index_menu_start) + ':B' + str(index - 1), menu.get("name"),
                                          data_format)

                index_menu_start = index

            if index_executor_start == index - 1:
                worksheet.write('A' + str(index_executor_start), executor.get("name"), data_format)
            else:
                worksheet.merge_range('A' + str(index_executor_start) + ':A' + str(index - 1), executor.get("name"),
                                      data_format)

            index_executor_start = index

            for i in range(1, index):
                worksheet.set_row(i, 385)

            executor.clear()

    @staticmethod
    def _analyze_error_msg_for_myaisapp_multiexecutors(msg):
        # options = {0: Analyzer.zero(),
        #            1: Analyzer.sqr(),
        #            }

        if msg is None:
            msg = ""

        TakeError = '.*Keyword \'Take Virtual Local Config\' failed after retrying for \\d+ minute\. The last error was\: All busy \.\.\..*'
        MultipleKeywords = '.*Multiple keywords with name.*'
        teardownFail = '.*teardown failed.*|.*Teardown failed.*'
        # LoginNotSuccess = "Element 'xpath=\/\/\*\[@resource-id=.*com.nextzy.myais.myais:id\/my_ais_library_toolbar_user_detail_tv_user_account_number.*' did not appear in 2 minutes"
        LoginNotSuccess = '.*Found some dialog pop up.*|Not found user account after login.*'
        TextNotMatch = '.*should have been.*but in fact it was.*'
        DictionaryDoesNotContainKey = '.*Dictionary does not contain key.*'
        ServiceuUavailable = 'Sorry\, the service is unavailable at this time please try again later\.|' + ur'ขออภัย ระบบไม่สามารถให้บริการได้ในขณะนี้ กรุณาเข้าใช้บริการใหม่อีกครั้ง|' + 'Sorry\, the system is temporarily unavailable. Please try again later\.'
        if re.match(TakeError, msg, re.MULTILINE | re.UNICODE):
            error_type = "Script"
            error_msg = "Take Virtual Local Config Error"
        elif re.match(MultipleKeywords, msg, re.MULTILINE | re.UNICODE):
            error_type = "Script"
            error_msg = "Multiple Keyword"
        elif re.match(TextNotMatch, msg, re.MULTILINE | re.UNICODE):
            error_type = "Script"
            error_msg = "Text has changed " + msg
        elif re.match(DictionaryDoesNotContainKey, msg, re.MULTILINE | re.UNICODE):
            error_type = "Script"
            error_msg = msg
        elif re.match(ServiceuUavailable, msg, re.MULTILINE | re.UNICODE):
            error_type = "System"
            error_msg = "service is unavailable"
        elif re.match(LoginNotSuccess, msg, re.MULTILINE | re.UNICODE):
            error_type = "System"
            error_msg = "Login Not Success"
        elif re.match(teardownFail, msg, re.MULTILINE | re.UNICODE):
            error_type = "Script"
            error_msg = "Fail at Teardown " + msg
        else:
            error_type = "None"
            error_msg = msg
        return error_msg, error_type

    @staticmethod
    def _init_worksheet_success_myais_multiexecutors(workbook):
        worksheet = workbook.add_worksheet(WORKSHEET_NAME)
        worksheet.set_column('J:J', LEN_MOBILE_NUMBER)
        worksheet.set_column('I:I', LEN_DATETIME_PASS)
        worksheet.set_column('H:H', LEN_IMAGE_PASS)
        worksheet.set_column('G:G', LEN_KEYWORD_PASS)
        worksheet.set_column('F:F', LEN_ERROR_MSG)
        worksheet.set_column('E:E', LEN_TESTCASE_NAME)
        worksheet.set_column('D:D', LEN_NTYPE_NAME)
        worksheet.set_column('C:C', LEN_LANGUAGE_NAME)
        worksheet.set_column('B:B', LEN_MENU_NAME)
        worksheet.set_column('A:A', LEN_EXECUTOR)
        # set hearder
        header_format = Analyzer._header_format(workbook)
        Analyzer._write_header_myais_multiexecutors(worksheet, header_format)
        return worksheet

    @staticmethod
    def _write_header_myais_multiexecutors(worksheet, header_format):
        worksheet.set_row(0, 25)
        worksheet.write('A1', "Executor", header_format)
        worksheet.write('B1', "Menu", header_format)
        worksheet.write('C1', "Language", header_format)
        worksheet.write('D1', "Ntype", header_format)
        worksheet.write('E1', "Testcase", header_format)
        worksheet.write('F1', "Error message", header_format)
        worksheet.write('G1', "Keyword Fail", header_format)
        worksheet.write('H1', "Image At Fail", header_format)
        worksheet.write('I1', "DateTime At Fail", header_format)
        worksheet.write('J1', "Mobile", header_format)

    # ===============================================================================================================
    # index start with 0
    @staticmethod
    def get_column_index_header(index):
        # type: (object) -> object
        return Analyzer._sub_get_column_header(index, index)

    @staticmethod
    def _sub_get_column_header(original, index):
        charArray = array('c', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')
        maxLen = len(charArray)

        result_div_by_max = index / maxLen
        if (result_div_by_max > maxLen):
            return charArray[result_div_by_max % maxLen - 1] + Analyzer.sub_get_column_header(original, result_div_by_max)
        elif (result_div_by_max >= 1):
            return charArray[result_div_by_max - 1] + Analyzer.sub_get_column_header(original, result_div_by_max % maxLen)
        else:
            indexChar = original % maxLen
            return charArray[indexChar]


# For Test and Debug.
# workbook1 = xlsxwriter.Workbook("D:\\For Report Login Fail\\allReport22062017\\workbook22062017.xlsx")
# Analyzer.error_analyze_for_myaisapp("D:\\For Report Login Fail\\allReport22062017\\output.xml", workbook1)
# workbook1.close()
#
# workbook1 = xlsxwriter.Workbook("D:\\For Report Login Fail\\allReport23062017\\workbook23062017.xlsx")
# Analyzer.error_analyze_for_myaisapp("D:\\For Report Login Fail\\allReport23062017\\output.xml", workbook1)
# workbook1.close()
