from bs4 import BeautifulSoup
import datetime
from decimal import Decimal


class DataHtml:
    def __init__(self, path_input):
        self.dict_all_data = {"total": [], "tag": [], "suite": []}
        self.soup = BeautifulSoup(open(path_input), 'html.parser')

    def find_elapsed_time(self):
        expect = 'window.output["suite"]'
        data_in_window_part = "window.sPart0"
        lists_time = []
        for sc in self.soup.find_all('script'):
            if expect in sc.string:
                elapsed_time = sc.string[len(expect + " = ") + 1:-2]
                lists_time = self.get_array_in_array_from_text(elapsed_time)
                break

        if len(lists_time) == 0:
            for sc in self.soup.find_all('script'):
                if data_in_window_part in sc.string:
                    elapsed_time = sc.string[len(data_in_window_part + " = ") + 1:-2]
                    lists_time = self.get_array_in_array_from_text(elapsed_time)
                    break
            result = self.get_array_from_text(lists_time[5])
            return result[2]
        else:
            result = self.get_array_from_text(lists_time[5])
            return result[2]

    def find_generated_time(self):
        # expect = 'window.output["generatedTimestamp"]'
        # result = []
        # for sc in self.soup.find_all('script'):
        #     if expect in sc.string:
        #         get_timestamp = sc.string[len(expect + " = ") + 1:-2]
        #         result = self.get_string_in_double_quote(get_timestamp)
        #         break
        #
        # return result[0]

        # 16/02/2017 => Sagol J.
        # Change to use baseMillis because some time generatedTimestamp is not include in html
        #
        expect = 'window.output["baseMillis"]'
        result = ""
        for sc in self.soup.find_all('script'):
            if expect in sc.string:
                get_timestamp = sc.string[len(expect + " = ") + 1:-2]
                fTimeStamp = float(get_timestamp)
                resultDate = datetime.datetime.utcfromtimestamp(fTimeStamp / 1000.0)
                result = datetime.date.strftime(resultDate, "%Y%m%d %H:%M:%S")
                break

        return  result

    def find_report_name(self):
        expect = 'window.output["strings"] = window.output["strings"]'
        name = []
        for sc in self.soup.find_all('script'):
            if expect in sc.string:
                get_name = sc.string[len('window.output["strings"] = ') + 1:-2]
                data_name = get_name[len('window.output["strings"].concat'):]
                name = self.get_string_in_double_quote(data_name)
                break

        result = name[1][1:].split(' &amp;')
        return result[0]

    def find_data(self):
        expect = 'window.output["stats"]'
        for sc in self.soup.find_all('script'):
            if expect in sc.string:
                get_data = sc.string[len(expect + " = ") + 1:-2]
                array_data = self.get_array_in_array_from_text(get_data)

                dict_total_status = self.get_dict_array_from_text(array_data[0])
                for i in range(len(dict_total_status)):
                    dict_data = self.get_dict_from_text(dict_total_status[i])
                    self.dict_add_data(dict_data)
                    self.dict_all_data["total"].append(dict_data)

                dict_tag_status = self.get_dict_array_from_text(array_data[1])
                for j in range(len(dict_tag_status)):
                    dict_data = self.get_dict_from_text(dict_tag_status[j])
                    self.dict_add_data(dict_data)
                    self.dict_all_data["tag"].append(dict_data)

                dict_suite_status = self.get_dict_array_from_text(array_data[2])
                for k in range(len(dict_suite_status)):
                    dict_data = self.get_dict_from_text(dict_suite_status[k])
                    self.dict_add_data(dict_data)
                    self.dict_all_data["suite"].append(dict_data)

                break

    def get_dict_with_data(self, status, option, data):
        # option 0 = critical tests | option 1 = all tests
        if status == "total":
            return self.dict_all_data[status][option][data]

    def get_dict(self, status):
        if status == "total":
            return self.dict_all_data[status]
        if status == "tag":
            return self.dict_all_data[status]
        if status == "suite":
            return self.dict_all_data[status]

    @staticmethod
    def get_array_in_array_from_text(text):
        lists = []
        start = 0
        end = 0
        var = ""
        for arr in text[1:-1]:
            var += arr
            if arr == "[":
                start += 1
            if arr == "]":
                end += 1

            if arr == "," and start == 0 and end == 0:
                if len(var) != 1:
                    lists.append(var[:-1])
                var = ""
            if start == end and start > 0 and end > 0:
                start = 0
                end = 0
                lists.append(var)
                var = ""
        return lists

    @staticmethod
    def get_array_from_text(text):
        return text[1:-1].split(',')

    @staticmethod
    def get_string_in_double_quote(text):
        lists = []
        double_quote = False
        var = ""
        for arr in text:
            if arr == '"':
                double_quote = not double_quote

            if double_quote:
                var += arr
            else:
                if len(var) != 0:
                    lists.append(var[1:])
                    var = ""
        return lists

    @staticmethod
    def get_dict_array_from_text(text):
        lists = []
        bracket_dict = False
        var = ""
        for arr in text[1:-1]:
            if arr == '{':
                bracket_dict = True
            if arr == "}":
                bracket_dict = False

            if bracket_dict:
                var += arr
            else:
                if len(var) != 0:
                    lists.append(var[1:])
                    var = ""
        return lists

    @staticmethod
    def get_dict_from_text(text):
        dicts = {}
        double_quote = False
        var = ""
        key = ""
        for arr in text:
            var += arr
            if arr == '"':
                double_quote = not double_quote

            if not double_quote:
                if arr == ":":
                    if var[:1] == '"':
                        key = var[1:-2]
                    else:
                        key = var[:-1]
                    var = ""
                if arr == ",":
                    if var[:1] == '"':
                        value = var[1:-2]
                    else:
                        value = var[:-1]
                    var = ""
                    # cut some name test case
                    if "AllOutput" in value:
                        val = value.split("AllOutput.")
                        value = val[-1]
                    dicts[key] = value
                    if "MyAIS" in value:
                        val = value.split("MyAIS.")
                        value = val[-1]
                    dicts[key] = value

        if len(var) != 0:
            if var[:1] == '"':
                value = var[1:-1]
            else:
                value = var
            # cut some name test case
            if "AllOutput" in value:
                val = value.split("AllOutput.")
                value = val[-1]
            dicts[key] = value
        return dicts

    @staticmethod
    def dict_add_data(dict_data):
        dict_data["total"] = int(dict_data["pass"]) + int(dict_data["fail"])
        dict_data["pass_fail"] = dict_data["pass"] + "/" + dict_data["fail"]
