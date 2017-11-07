import xlsxwriter
import ConvertHtmlToXlsx as GetHtml
import GeneratedTime
import sys
import os
sys.path.append(os.path.dirname(os.path.abspath(__file__ + "/../")))
from errorAnalyzer import errorAnalyzer


class ExcelStyle:
    def __init__(self, wb, ws):
        self.wb = wb
        self.ws = ws
        ws.set_column(0, 0, 47)
        ws.set_column(1, 3, 4)
        ws.set_column(4, 4, 8)
        ws.set_column(5, 6, 4)

    def style_format(self):
        style_format = self.wb.add_format({
            'pattern': 1
        })
        return style_format

    def style_name_test_case_style(self):
        name_test_case_style = self.wb.add_format({
            'left': 2,
            'right': 2
        })
        return name_test_case_style

    def style_number_style(self):
        number_style = self.wb.add_format({
            'align': 'center',
            'left': 2,
            'right': 2
        })
        return number_style

    def style_name_style(self):
        name_style = self.wb.add_format({
            'bold': 1,
            'font_size': 20,
            'text_wrap': True
        })
        return name_style

    def style_detail_data_style(self):
        detail_data_style = self.wb.add_format({
            'bold': 1,
            'font_size': 12
        })
        return detail_data_style

    def style_time_style(self):
        time_style = self.wb.add_format({
            'align': 'right'
        })
        return time_style

    def style_title_column_style(self):
        title_column_style = self.wb.add_format({
            'fg_color': '#FFCC99',
            'bold': 1,
            'align': 'center',
            'left': 2,
            'top': 2,
            'right': 2,
            'bottom': 2
        })
        return title_column_style

    def style_name_column_style(self):
        name_column_style = self.wb.add_format({
            'fg_color': '#FFCC99',
            'align': 'center',
            'left': 2,
            'top': 2,
            'right': 2,
            'bottom': 2
        })
        return name_column_style

    def style_border_under_table_tag(self):
        border_under_table_tag = self.wb.add_format({
            'top': 2
        })
        return border_under_table_tag

    def style_table_top_style_add_color(self):
        table_top_style_add_color = self.wb.add_format({
            'fg_color': '#FFFFCC',
            'left': 2,
            'top': 2,
            'right': 2
        })
        return table_top_style_add_color

    def style_table_top_style(self):
        table_top_style = self.wb.add_format({
            'left': 2,
            'top': 2,
            'right': 2
        })
        return table_top_style

    def style_table_right_top_style(self):
        table_right_top_style = self.wb.add_format({
            'top': 2,
            'right': 2
        })
        return table_right_top_style

    def style_table_middle_style_add_color(self):
        table_middle_style_add_color = self.wb.add_format({
            'fg_color': '#FFFFCC',
            'left': 2,
            'right': 2
        })
        return table_middle_style_add_color

    def style_table_middle_style(self):
        table_middle_style = self.wb.add_format({
            'left': 2,
            'right': 2
        })
        return table_middle_style

    def style_table_bottom_style_add_color(self):
        table_bottom_style_add_color = self.wb.add_format({
            'fg_color': '#FFFFCC',
            'left': 2,
            'right': 2,
            'bottom': 2
        })
        return table_bottom_style_add_color

    def style_table_bottom_style(self):
        table_bottom_style = self.wb.add_format({
            'left': 2,
            'right': 2,
            'bottom': 2
        })
        return table_bottom_style

    def style_table_bottom_style_and_number(self):
        table_bottom_style_and_number = self.wb.add_format({
            'align': 'center',
            'left': 2,
            'right': 2,
            'bottom': 2
        })
        return table_bottom_style_and_number

    def add_filter(self, first_line, last_line):
        self.ws.autofilter(first_line - 1, 0, last_line - 1, 0)

    def add_status_bar(self, first_line, last_line):
        self.ws.conditional_format(first_line, 5, last_line, 5, {
            'type': 'data_bar',
            'min_value': 0,
            'min_type': 'num',
            'max_value': 100,
            'max_type': 'num',
            'bar_color': '#00FF00'
        })

        self.ws.conditional_format(first_line, 6, last_line, 6, {
            'type': 'data_bar',
            'min_value': 0,
            'min_type': 'num',
            'max_value': 100,
            'max_type': 'num',
            'bar_color': '#FF0000'
        })


class WriterReportExcel:
    def __init__(self, input_path_report, wb, ws):
        self.input_path_report = input_path_report
        self.ws = ws

        # call data from HTML
        data = GetHtml.DataHtml(input_path_report)
        data.find_data()
        self.data = data

        # call style for excel
        style = ExcelStyle(wb, ws)
        self.style = style

    def write_data(self):
        arg = ["label", "total", "pass", "fail", "elapsed", "pass_fail"]
        name_table = ["Total Statistics", "Statistics by Tag", "Statistics by Suite"]
        name_column = ["Label", "Total", "Pass", "Fail", "Elapsed", "Pass/Fail%"]

        self.write_name_report()
        self.write_generated_time()

        line = 10
        line = self.write_name_table(name_table[0], name_column, line)
        line = self.write_data_into_table(arg, line, "total")

        line += 1
        line = self.write_name_table(name_table[1], name_column, line)
        line = self.write_data_into_table(arg, line, "tag")

        line += 1
        line = self.write_name_table(name_table[2], name_column, line)
        self.write_data_into_table(arg, line, "suite")

    def write_name_report(self):
        write = self.ws.write
        write_merge = self.ws.merge_range
        detail_data = ["Summary Information", "Test Statistics"]
        summary_information = ["Status:", "Elapsed Time:", "Log File:"]
        status_test = self.check_critical_test()

        name = self.data.find_report_name()
        write('A1', name, self.style.style_name_style())
        write('A3', detail_data[0], self.style.style_detail_data_style())
        write('A5', summary_information[0], self.style.style_table_top_style_add_color())
        write_merge('B5:G5', status_test, self.style.style_table_top_style())

        elapsed_time = self.data.find_elapsed_time()
        status_time = GeneratedTime.get_time_elapsed_time(elapsed_time)
        write('A6', summary_information[1], self.style.style_table_middle_style_add_color())
        write_merge('B6:G6', status_time, self.style.style_table_middle_style())
        write('A7', summary_information[2], self.style.style_table_bottom_style_add_color())
        write_merge('B7:G7', self.input_path_report, self.style.style_table_bottom_style())
        write('A9', detail_data[1], self.style.style_detail_data_style())

    def check_critical_test(self):
        fail = self.data.get_dict_with_data("total", 1, "fail")
        if fail == 0:
            return "All tests passed"
        else:
            return str(fail) + " critical tests failed"

    def write_generated_time(self):
        write_merge = self.ws.merge_range
        date_time = self.data.find_generated_time()
        write_merge('B2:D2', "Time Generated", self.style.style_time_style())
        time_generated = GeneratedTime.get_time_generated(date_time)
        write_merge('E2:G2', time_generated, self.style.style_time_style())
        write_merge('B3:G3',
                    '=IF(INT(NOW()-E2)>0,IF(HOUR(NOW()-E2)>0,INT(NOW()-E2)&" days "&HOUR(NOW()-E2)&" hours ago",'
                    'INT(NOW()-E2)&" days ago"),IF(HOUR(NOW()-E2)>0,IF(MINUTE(NOW()-E2)>0,HOUR(NOW()-E2)&" hours '
                    '"&MINUTE(NOW()-E2)&" minutes ago",HOUR(NOW()-E2)&" hours ago"),IF(MINUTE(NOW()-E2)>0,MINUTE(NOW('
                    ')-E2)&" minutes "&SECOND(NOW()-E2)&" seconds ago",SECOND(NOW()-E2)&" seconds ago")))',
                    self.style.style_time_style())

    def write_name_table(self, name_table, name_column, line):
        write = self.ws.write
        write_merge = self.ws.merge_range
        write(line, 0, name_table, self.style.style_title_column_style())
        for n in range(1, 6):
            if n == 5:
                write_merge(line, n, line, n + 1, name_column[n], self.style.style_name_column_style())
            else:
                write(line, n, name_column[n], self.style.style_name_column_style())
        line += 1
        return line

    def write_data_into_table(self, arg, line, table):
        write = self.ws.write
        data_dict = self.data.get_dict(table)
        add_tag = True
        first_line = line
        if table == "tag":
            if len(data_dict) == 0:
                add_tag = False

        for p in range(0, len(data_dict)):
            for m in range(0, len(arg)):
                if p == (len(data_dict) - 1):  # last data
                    if m == 0:
                        write(line, m, data_dict[p][arg[m]], self.style.style_table_bottom_style())
                    elif m == len(arg) - 1:
                        val_pass = (float(data_dict[p]["pass"]) / float(data_dict[p]["total"])) * 100
                        write(line, m, val_pass, self.style.style_table_bottom_style_and_number())
                        val_fail = (float(data_dict[p]["fail"]) / float(data_dict[p]["total"])) * 100
                        write(line, m + 1, val_fail, self.style.style_table_bottom_style_and_number())
                    else:
                        write(line, m, data_dict[p][arg[m]], self.style.style_table_bottom_style_and_number())
                else:
                    if m == 0:
                        write(line, m, data_dict[p][arg[m]], self.style.style_name_test_case_style())
                    elif m == len(arg) - 1:
                        val_pass = (float(data_dict[p]["pass"]) / float(data_dict[p]["total"])) * 100
                        write(line, m, val_pass, self.style.style_number_style())
                        val_fail = (float(data_dict[p]["fail"]) / float(data_dict[p]["total"])) * 100
                        write(line, m + 1, val_fail, self.style.style_number_style())
                    else:
                        write(line, m, data_dict[p][arg[m]], self.style.style_number_style())
            line += 1
        last_line = line
        self.style.add_status_bar(first_line, last_line)
        if add_tag and table == "tag":
            self.style.add_filter(first_line, last_line)
            self.write_border_under_table_tag(arg, last_line+1)
        return line

    def write_border_under_table_tag(self, arg, last_line):
        for i in range(0, len(arg) + 1):
            self.ws.write(last_line - 1, i, "", self.style.style_border_under_table_tag())


def convert_html_to_excel(input_path_report, output_path_xml, output_path_report="D:\\reportExcel.xlsx",
                          project_name="MyAISApp"):
    """
        ConvertHTMLtoExcel on RobotFramework\n
        Default PathOutputReport D:\ReportExcel.xlsx
        Select Project Name = eServiceWeb , MyAISApp
    """

    workbook = xlsxwriter.Workbook(output_path_report)
    worksheet = workbook.add_worksheet('Report HTML')
    writer = WriterReportExcel(input_path_report, workbook, worksheet)
    writer.write_data()

    if project_name == "eServiceWeb":
        errorAnalyzer.error_analyze(output_path_xml, workbook)
    elif project_name == "MyAISApp":
        errorAnalyzer.error_analyze_for_myaisapp(output_path_xml, workbook)
    elif project_name == "MyAISAppMultiExecutors":
        errorAnalyzer.error_analyze_for_myaisapp_multiexecutors(output_path_xml, workbook)
    workbook.close()


# convert_html_to_excel("D:\\outputAllReport\\report.html",
#                       "D:\\outputAllReport\\output.xml",
#                       output_path_report="D:\\reportExcel.xlsx",
#                       project_name="MyAISAppMultiExecutors")