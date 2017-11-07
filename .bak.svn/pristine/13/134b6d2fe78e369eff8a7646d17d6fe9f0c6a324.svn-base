# =================================================================== #
# Calculate Time
# raw_DateTime="20160929 14:54:29 GMT +08:00"


def get_report_time_format(report_date_time):
    report_year = report_date_time[0:4]
    report_month = report_date_time[4:6]

    if (report_month[0:1]) == "0":
        report_month = report_month[1:2]
    report_day = report_date_time[6:8]
    if report_day[0:1] == "0":
        report_day = report_day[1:2]
    report_hour = report_date_time[9:11]
    if report_hour[0:1] == "0":
        report_hour = report_hour[1:2]
    report_min = report_date_time[12:14]
    if report_min[0:1] == "0":
        report_min = report_min[1:2]
    report_sec = report_date_time[15:17]
    if report_sec[0:1] == "0":
        report_sec = report_sec[1:2]

    return report_day + "/" + report_month + "/" + report_year + " " + report_hour + ":" + report_min + ":" + report_sec


# =============================EXAMPLE===============================#
# d1 = getReportTimeFormat("20161004 15:00:12 GMT +08:00")
# d2 = datetime.now()
# d3 = d2-d1
# print d1
# ===================================================================#


def get_time_generated(time):
    # print time
    report_time = get_report_time_format(time)
    return str(report_time)


def get_time_elapsed_time(elapsed_time):
    millis = int(elapsed_time)
    seconds = (millis / 1000) % 60
    minutes = (millis / (1000 * 60)) % 60
    hours = (millis / (1000 * 60 * 60)) % 24
    mil = millis % 1000
    return "%02d:%02d:%02d.%03d" % (hours, minutes, seconds, mil)
