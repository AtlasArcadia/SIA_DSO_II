# coding=utf-8
import xml.etree.ElementTree as ElementTree
import re
import xlsxwriter
from array import array

# define constant

LEN_MENU_NAME = 50
LEN_TESTCASE_NAME = 85
LEN_LANGUAGE_NAME = 12
LEN_ERROR_MSG = 100
LEN_NTYPE_NAME = 20
INDEX_START = 2
WORKSHEET_NAME = 'error analyzer'


class errorAnalyzer:
    def __init__(self):
        pass

    @staticmethod
    def error_analyze(xml_file, workbook):
        # original_tree = ElementTree.parse(xml_file)
        index = INDEX_START
        index_lang_start = INDEX_START
        index_menu_start = INDEX_START
        tree = ElementTree.parse(xml_file)
        root = tree.getroot()
        # set workbook in dir
        # workbook = xlsxwriter.Workbook("D:/Atlas/errorAnalyzer.xlsx")
        # set tab
        # worksheet = workbook.add_worksheet(WORKSHEET_NAME)
        # worksheet.set_column('D:D', LEN_ERROR_MSG)
        # worksheet.set_column('C:C', LEN_TESTCASE_NAME)
        # worksheet.set_column('B:B', LEN_MENU_NAME)
        # worksheet.set_column('A:A', LEN_LANGUAGE_NAME)
        # # set hearder
        # header_format = errorAnalyzer._header_format(workbook)
        # errorAnalyzer._write_header(worksheet, header_format)
        # init worksheet
        worksheet = errorAnalyzer._init_worksheet_error(workbook)
        # worksheet.set_row(0, 30)
        data_format = errorAnalyzer._data_format(workbook)
        general_error_format = errorAnalyzer._error_msg_format(workbook)
        scrpit_error_format = errorAnalyzer._error_script_msg_format(workbook)
        system_error_format = errorAnalyzer._error_system_msg_format(workbook)
        # list_lang = []
        # list_name = []
        # list_testcase = []
        # list_error = []
        for lang in root.findall('.//suite[@name="AIS"]/suite'):
            # print lang.get("name")
            # worksheet.write('A' + str(index), lang.get("name"), data_format)
            # list_lang.append(lang.get("name"))
            # start_lang_index = index
            # index += 1
            for menu in lang.findall('.//suite'):
                # start_menu_index = index
                if menu.find('status').get('status') == "FAIL":
                    # print "\t" + menu.get("name")
                    # worksheet.write('B' + str(index), menu.get("name"))
                    # list_name.append(menu.get("name"))
                    # index += 1
                    # start_testcase_index = start_menu_index
                    for testcase in menu.findall('.//test'):
                        if testcase.find('status').get("status") == "FAIL":
                            # print "\t\t" + testcase.get("name")
                            worksheet.write('C' + str(index), testcase.get("name"), data_format)
                            # worksheet.write('C' + str(index), testcase.get("name"))
                            # list_testcase.append(testcase.get("name"))
                            # index += 1
                            # print "\t\t\t\033[91m" + testcase.find('status').text + "\033[0m"
                            error_msg, error_type = errorAnalyzer._analyze_error_msg(testcase.find('status').text)
                            if error_type is "Script":
                                worksheet.write('D' + str(index), error_msg, scrpit_error_format)
                            elif error_type is "System":
                                worksheet.write('D' + str(index), error_msg, system_error_format)
                            else:
                                worksheet.write('D' + str(index), error_msg, general_error_format)
                            # worksheet.write('D' + str(index), error_msg, error_format)
                            # worksheet.write('D' + str(index), testcase.find('status').text, error_format)
                            # worksheet.write('D' + str(index), testcase.find('status').text)
                            # list_error.append(testcase.find('status').text)
                            index += 1
                    if index_menu_start == index - 1:
                        # worksheet.merge_range('B' + str(index_menu_start) + ':B' + str(index - 1), menu.get("name"),
                        #                      data_format)
                        worksheet.write('B' + str(index_menu_start), menu.get("name"), data_format)
                        # worksheet.write('B' + str(index_menu_start), menu.get("name"))
                    else:
                        worksheet.merge_range('B' + str(index_menu_start) + ':B' + str(index - 1), menu.get("name"),
                                              data_format)
                        # worksheet.merge_range('B' + str(index_menu_start) + ':B' + str(index - 1), menu.get("name"))
                    # worksheet.merge_range('B' + str(index_menu_start) + ':B' + str(index - 1), menu.get("name"),
                    #                       data_format)
                    index_menu_start = index
                    # ws.merge_range('B' + str(start_menu_index) + ':B' + str(index), menu.get("name"))
            # ws.merge_range('A'+str(start_lang_index)+':A'+str(index), lang.get("name"))
            worksheet.merge_range('A' + str(index_lang_start) + ':A' + str(index - 1), lang.get("name"), data_format)
            # worksheet.merge_range('A' + str(index_lang_start) + ':A' + str(index - 1), lang.get("name"))
            index_lang_start = index
        # write_error_excel(list_lang, list_name, list_testcase, list_error)
        # workbook.close()
        for i in range(1, index):
            worksheet.set_row(i, 21)

    # private
    # @staticmethod
    # def _write_error_excel(list_lang, list_name, list_testcase, list_error):
    #     workbook = xlsxwriter.Workbook("D:/Atlas/newAnalyzer.xlsx")
    #     # set tab
    #     worksheet = workbook.add_worksheet('errorAnalyzer')
    #     # set hearder
    #     header_format = errorAnalyzer._header_format(workbook)
    #     errorAnalyzer._write_header(worksheet, header_format)

    @staticmethod
    def _init_worksheet_error(workbook):
        worksheet = workbook.add_worksheet(WORKSHEET_NAME)
        worksheet.set_column('D:D', LEN_ERROR_MSG)
        worksheet.set_column('C:C', LEN_TESTCASE_NAME)
        worksheet.set_column('B:B', LEN_MENU_NAME)
        worksheet.set_column('A:A', LEN_LANGUAGE_NAME)
        # set hearder
        header_format = errorAnalyzer._header_format(workbook)
        errorAnalyzer._write_header(worksheet, header_format)
        return worksheet

    @staticmethod
    def _write_header(worksheet, header_format):
        worksheet.set_row(0, 25)
        worksheet.write('A1', "Language", header_format)
        worksheet.write('B1', "Menu", header_format)
        worksheet.write('C1', "Testcase", header_format)
        worksheet.write('D1', "Error message", header_format)

    @staticmethod
    def _header_format(workbook):
        header_format = workbook.add_format({'bold': True, 'font_color': 'black', 'fg_color': '#FFFFCC'})
        header_format.set_font_name("Tahoma")
        header_format.set_font_size(13)
        header_format.set_align('center')
        header_format.set_align('vcenter')
        header_format.set_border(1)
        return header_format

    @staticmethod
    def _write_language(worksheet, index, language, language_format):
        worksheet.write('A' + str(index), language, language_format)

    @staticmethod
    def _data_format(workbook):
        data_format = workbook.add_format({'font_color': 'black'})
        data_format.set_font_name("Tahoma")
        data_format.set_font_size(12)
        # data_format.set_align('fill')
        # data_format.set_align('center')
        data_format.set_text_wrap()
        data_format.set_border(1)
        data_format.set_align('vcenter')
        return data_format

    @staticmethod
    def _error_msg_format(workbook):
        error_msg_format = workbook.add_format()
        error_msg_format.set_font_name("Tahoma")
        error_msg_format.set_font_size(11)
        # error_msg_format.set_font_color('red')
        # error_msg_format.set_align('fill')
        error_msg_format.set_align('top')
        # error_msg_format.set_align('center')
        error_msg_format.set_text_wrap()
        error_msg_format.set_border(1)
        return error_msg_format

    @staticmethod
    def _error_script_msg_format(workbook):
        error_msg_format = workbook.add_format()
        error_msg_format.set_font_name("Tahoma")
        error_msg_format.set_font_size(11)
        error_msg_format.set_font_color('red')
        # error_msg_format.set_align('fill')
        error_msg_format.set_align('top')
        # error_msg_format.set_align('center')
        error_msg_format.set_text_wrap()
        error_msg_format.set_border(1)
        return error_msg_format

    @staticmethod
    def _error_system_msg_format(workbook):
        error_msg_format = workbook.add_format()
        error_msg_format.set_font_name("Tahoma")
        error_msg_format.set_font_size(11)
        error_msg_format.set_font_color('blue')
        # error_msg_format.set_align('fill')
        error_msg_format.set_align('top')
        # error_msg_format.set_align('center')
        error_msg_format.set_text_wrap()
        error_msg_format.set_border(1)
        return error_msg_format

    @staticmethod
    def _analyze_error_msg(msg):
        # options = {0: errorAnalyzer.zero(),
        #            1: errorAnalyzer.sqr(),
        #            }
        serviceNotSendOTP = ".*Keyword \'Element Should Contain\' failed after retrying for \\d+ minutes\. The last error was: ValueError: Element locator \'\/\/\*\[\@id\=\"span_pop2\"\]\' did not match any elements.*"
        TakeError = ".*Keyword \'Take Virtual Local Config\' failed after retrying for \\d+ minute\. The last error was\: All busy \.\.\..*"
        MultipleKeywords = "Multiple keywords with name.*"
        teardownFail = ".*teardown failed.*|.*Teardown failed.*"
        LoginNotSuccess = "Element 'xpath=\/\/\*\[@id=\"menu-1\"\]' did not appear .*"
        WebDriverException = "WebDriverException\: Message\: unknown error\:.*|.*"

        if re.match(serviceNotSendOTP, msg, re.DOTALL):
            # return "eService web is not send OTP"
            error_type = "System"
            error_msg = "eService web not send OTP"
        elif re.match(TakeError, msg, re.DOTALL):
            # return "Take Virtual Local Config Error"
            error_type = "Script"
            error_msg = "Take Virtual Local Config Error"
        elif re.match(MultipleKeywords, msg, re.DOTALL):
            # return "Multiple Keyword"
            error_type = "Script"
            error_msg = "Multiple Keyword"
        elif re.match(teardownFail, msg, re.DOTALL):
            # return "Fail at Teardown"
            error_type = "Script"
            error_msg = "Fail at Teardown"
        elif re.match(LoginNotSuccess, msg, re.DOTALL):
            # return "Login Not Success"
            error_type = "System"
            error_msg = "Login Not Success"
        elif re.match(WebDriverException, msg, re.DOTALL):
            # return "Web Driver Exception Message unknown error"
            error_type = "Script"
            error_msg = "Web Driver Exception Message unknown error"
        else:
            # return msg
            error_type = "None"
            error_msg = msg
        return error_msg, error_type

    @staticmethod
    def error_analyze_for_myaisapp(xml_file, workbook):
        index = INDEX_START
        index_lang_start = INDEX_START
        index_menu_start = INDEX_START
        index_ntype_start = INDEX_START
        tree = ElementTree.parse(xml_file)
        root = tree.getroot()
        worksheet = errorAnalyzer._init_worksheet_error_myais(workbook)
        data_format = errorAnalyzer._data_format(workbook)
        general_error_format = errorAnalyzer._error_msg_format(workbook)
        scrpit_error_format = errorAnalyzer._error_script_msg_format(workbook)
        system_error_format = errorAnalyzer._error_system_msg_format(workbook)
        for menu in root.findall('.//suite[@name="MyAIS"]/suite'):
            # print menu.get("name")
            if menu.find('status').get('status') == "FAIL":
                for lang in menu.findall('./suite'):
                    # start_menu_index = index
                    # print lang.get('name')
                    if lang.find('status').get('status') == "FAIL":
                        for ntype in lang.findall('./suite'):
                            if ntype.find('status').get('status') == "FAIL":
                                # print ntype.get('name')
                                # print "\t" + menu.get("name")
                                for testcase in ntype.findall('.//test'):
                                    if testcase.find('status').get("status") == "FAIL":
                                        # print "\t\t" + testcase.get("name")
                                        worksheet.write('D' + str(index), testcase.get("name"), data_format)
                                        dialogMessage = testcase.find('.//kw[@type="teardown"]//kw[@name="Log Dialog Msg From MyAIS"]/kw[@name="Log"]/msg')
                                        loadingMessage = testcase.find('.//kw[@type="teardown"]//kw[@name="Check Error Loading"]/kw[@name="Log"]/msg')
                                        if dialogMessage is not None:
                                            message = dialogMessage.text
                                            if message == "None":
                                                message = testcase.find('status').text
                                        else:
                                            message = testcase.find('status').text
                                        # print "message = " + message
                                        error_msg, error_type = errorAnalyzer._analyze_error_msg_for_myaisapp(message)
                                        if error_type is "Script":
                                            worksheet.write('E' + str(index), error_msg, scrpit_error_format)
                                            #worksheet.insert_image('F'+str(index), 'python.png')
                                        elif error_type is "System":
                                            worksheet.write('E' + str(index), error_msg, system_error_format)
                                        else:
                                            worksheet.write('E' + str(index), error_msg, general_error_format)
                                        # Add image to Excel
                                        imageAtFail = testcase.find('.//kw[@type="teardown"]/kw[@name="Run Keyword If Test Failed"]/kw[@name="Capture Screen with Specific name"]/kw[@name="Log"]/msg')
                                        GetimageName = imageAtFail.text
                                        ListimageName = re.findall(r'[A-Za-z0-9.-\[_\-\,\]]+.png', GetimageName, re.M | re.I)
                                        len_ListimageName= len(ListimageName)
                                        columes = ["F","G","H","I","J","K"]
                                        worksheet.set_column('F:K', 50)
                                        worksheet.set_row(90)
                                        for i in range (len_ListimageName):
                                            worksheet.insert_image(columes[i] + str(index), xml_file + '\\..\\' + ListimageName[i] , {'x_scale': 0.4, 'y_scale': 0.4})
                                        index += 1
                                if index_ntype_start == index - 1:
                                    worksheet.write('C' + str(index_ntype_start), ntype.get("name"), data_format)
                                else:
                                    worksheet.merge_range('C' + str(index_ntype_start) + ':C' + str(index - 1),
                                                          ntype.get("name"),
                                                          data_format)
                                index_ntype_start = index
                        if index_lang_start == index - 1:
                            worksheet.write('B' + str(index_lang_start), lang.get("name"), data_format)
                        else:
                            worksheet.merge_range('B' + str(index_lang_start) + ':B' + str(index - 1), lang.get("name"),
                                                  data_format)
                        index_lang_start = index

                if index_menu_start == index - 1:
                    worksheet.write('A' + str(index_menu_start), menu.get("name"), data_format)
                else:
                    worksheet.merge_range('A' + str(index_menu_start) + ':A' + str(index - 1), menu.get("name"),
                                          data_format)
                index_menu_start = index
                for i in range(1, index):
                    worksheet.set_row(i, 21)

    @staticmethod
    def _analyze_error_msg_for_myaisapp(msg):
        # options = {0: errorAnalyzer.zero(),
        #            1: errorAnalyzer.sqr(),
        #            }
        TakeError = '.*Keyword \'Take Virtual Local Config\' failed after retrying for \\d+ minute\. The last error was\: All busy \.\.\..*'
        MultipleKeywords = '.*Multiple keywords with name.*'
        teardownFail = '.*teardown failed.*|.*Teardown failed.*'
        # LoginNotSuccess = "Element 'xpath=\/\/\*\[@resource-id=.*com.nextzy.myais.myais:id\/my_ais_library_toolbar_user_detail_tv_user_account_number.*' did not appear in 2 minutes"
        LoginNotSuccess = '.*Found some dialog pop up.*|Not found user account after login.*'
        TextNotMatch = '.*should have been.*but in fact it was.*'
        DictionaryDoesNotContainKey = '.*Dictionary does not contain key.*'
        ServiceuUavailable = 'Sorry\, the service is unavailable at this time please try again later\.|' + ur'ขออภัย ระบบไม่สามารถให้บริการได้ในขณะนี้ กรุณาเข้าใช้บริการใหม่อีกครั้ง|' + 'Sorry\, the system is temporarily unavailable. Please try again later\.'
        if re.match(TakeError, msg, re.MULTILINE|re.UNICODE):
            error_type = "Script"
            error_msg = "Take Virtual Local Config Error"
        elif re.match(MultipleKeywords, msg, re.MULTILINE|re.UNICODE):
            error_type = "Script"
            error_msg = "Multiple Keyword"
        elif re.match(TextNotMatch, msg, re.MULTILINE|re.UNICODE):
            error_type = "Script"
            error_msg = "Text has changed " + msg
        elif re.match(DictionaryDoesNotContainKey, msg, re.MULTILINE|re.UNICODE):
            error_type = "Script"
            error_msg = msg
        elif re.match(ServiceuUavailable, msg, re.MULTILINE|re.UNICODE):
            error_type = "System"
            error_msg = "service is unavailable"
        elif re.match(LoginNotSuccess, msg, re.MULTILINE|re.UNICODE):
            error_type = "System"
            error_msg = "Login Not Success"
        elif re.match(teardownFail, msg, re.MULTILINE|re.UNICODE):
            error_type = "Script"
            error_msg = "Fail at Teardown " + msg
        else:
            error_type = "None"
            error_msg = msg
        return error_msg, error_type

    @staticmethod
    def _init_worksheet_error_myais(workbook):
        worksheet = workbook.add_worksheet(WORKSHEET_NAME)
        worksheet.set_column('E:E', LEN_ERROR_MSG)
        worksheet.set_column('D:D', LEN_TESTCASE_NAME)
        worksheet.set_column('C:C', LEN_NTYPE_NAME)
        worksheet.set_column('B:B', LEN_LANGUAGE_NAME)
        worksheet.set_column('A:A', LEN_MENU_NAME)
        # set hearder
        header_format = errorAnalyzer._header_format(workbook)
        errorAnalyzer._write_header_myais(worksheet, header_format)
        return worksheet

    @staticmethod
    def _write_header_myais(worksheet, header_format):
        worksheet.set_row(0, 25)
        worksheet.write('A1', "Menu", header_format)
        worksheet.write('B1', "Language", header_format)
        worksheet.write('C1', "Ntype", header_format)
        worksheet.write('D1', "Testcase", header_format)
        worksheet.write('E1', "Error message", header_format)

    @staticmethod
    def perf_analyze_for_myaisapp(xml_file, workbook):
        index = INDEX_START
        tree = ElementTree.parse(xml_file)
        root = tree.getroot()
        data_format = errorAnalyzer._data_format(workbook)
        fail_format = errorAnalyzer._error_script_msg_format(workbook)
        pass_format = errorAnalyzer._error_system_msg_format(workbook)
        worksheet_pref = workbook.add_worksheet('perf')
        header_format = errorAnalyzer._header_format(workbook)
        worksheet_pref.set_column('E:E', 15)
        worksheet_pref.set_column('D:D', 15)
        worksheet_pref.set_column('C:C', 15)
        worksheet_pref.set_column('B:B', 15)
        worksheet_pref.set_column('A:A', 30)
        worksheet_pref.write('A1', "Menu", header_format)
        worksheet_pref.write('B1', "Total", header_format)
        worksheet_pref.write('C1', "Pass", header_format)
        worksheet_pref.write('D1', "Fail", header_format)
        worksheet_pref.write('E1', "Ave time", header_format)
        worksheet_pref.write('F1', "S.D.", header_format)
        worksheet_pref.write('G1', "Max time", header_format)
        worksheet_pref.write('H1', "Min time", header_format)
        data_index = 8 # continue to next ( I )
        round = -1
        for menu in root.findall('.//suite[@name="MyAIS"]/suite'):
            total_test = 0
            error_test = 0
            pass_test = 0
            # round_index = 0
            round_index = data_index
            round_count = 0
            for rounds in menu.findall('./suite'):
                print "count : " + str(round_count)
                round_count = round_count + 1
                timelist = []
                for testcase in rounds.findall('.//test'):
                    total_test += 1
                    if testcase.find('status').get("status") == "FAIL":
                        error_test += 1
                    elif testcase.find('status').get("status") == "PASS":
                        pass_test += 1
                    # work around get time in test case
                    logs = testcase.findall('.//kw[@name="Log"]/msg')
                    sectime = 0


                    for log in logs:
                        rawTimeUesd = re.search(r'(Time Used) (.*)', log.text, re.M | re.I)
                        if rawTimeUesd is not None:
                            TimeUsed = rawTimeUesd.group(2).split(' ')
                            print 'value => ' + TimeUsed[0] + ' unit => ' + TimeUsed[1]
                            sectime += int(TimeUsed[0])
                            print 'round_index => ' + str(round_index)
                            column_index_header = errorAnalyzer.get_column_index_header(round_index)
                            print 'column index header => ' + str(column_index_header)
                            worksheet_pref.write(str(column_index_header) + str(index), str(TimeUsed[0]+'.'+TimeUsed[2]), data_format)

                    worksheet_pref.write('E' + str(index), str(sectime/10), data_format)


                        #timelist.append(time)
                #print timelist
                #avetime = sum(timelist)/len(timelist)
                round_index = round_index + 1
                print 'after round index => ' + str(round_index)

            if (round == -1):
                round = round_count

            worksheet_pref.write('A' + str(index), menu.get("name"), data_format)
            worksheet_pref.write('B' + str(index), str(total_test), data_format)
            worksheet_pref.write('C' + str(index), str(pass_test), pass_format)
            worksheet_pref.write('D' + str(index), str(error_test), fail_format)
            #worksheet_pref.write('E' + str(index), str(time), data_format)
            index += 1

    #   after get round value
    #   time for create header.
        for i in range(0, round):
            temp_index = data_index + i
            temp_column_header = errorAnalyzer.get_column_index_header(temp_index)
            worksheet_pref.write(str(temp_column_header) + '1', "R " + str(i+1), header_format)


    # index start with 0
    @staticmethod
    def get_column_index_header(index):
        # type: (object) -> object
        return errorAnalyzer._sub_get_column_header(index, index)

    @staticmethod
    def _sub_get_column_header(original, index):
        charArray = array('c', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')
        maxLen = len(charArray)

        result_div_by_max = index / maxLen
        if (result_div_by_max > maxLen):
            return charArray[result_div_by_max % maxLen - 1] + sub_get_column_header(original, result_div_by_max)
        elif (result_div_by_max >= 1):
            return charArray[result_div_by_max - 1] + sub_get_column_header(original, result_div_by_max % maxLen)
        else:
            indexChar = original % maxLen
            return charArray[indexChar]


# For Test and Debug.
# workbook1 = xlsxwriter.Workbook("D:\\Output\\Copy\\workbook.xlsx")
# errorAnalyzer.perf_analyze_for_myaisapp("D:\\Output\\Copy\\output.xml", workbook1)
# workbook1.close()
