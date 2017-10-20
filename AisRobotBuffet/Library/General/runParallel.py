from multiprocessing import Pool
from multiprocessing import Process
from threading import Thread
import os
import sys
import psutil
import re
import threading
import time
from robot.conf.settings import RobotSettings
from robot.result import ExecutionResult
from robot.running.model import TestSuite
from random import randint
from robot.api import TestSuiteBuilder
from time import sleep
from functools import partial

# we assume one test case should be finish in 1 minute.
# this const will use in auto calculate take time out. ( second )
CONST_MAGIC_NUMBER_TAKE_TIME_OUT = 60

# def call_script(run_dir, robot_test_suite, robot_output, tag, lang, browser, take_timeout, network, n_type, run_name):
def call_script(run_dir, robot_test_suite, robot_output, tag, lang, browser, take_timeout, network, run_name, platform ,n_type ):
    print "in call script"
    # command = "robot -t " + run_name + " -d " + dir_path + " -o output" + run_name + " -r report" + run_name \
    #           + " -l log" + run_name + " -v ar_LANG:" + LANG + " -v ar_BROWSER:" + BROWSER + " -i " + tag + " " \
    #           + robot_test_suite
    # print "n_type_support =>" + n_type_support
    # if n_type_support == "":

    # reduce length of test case name
    shortName = ""
    rawTestID = re.search(r'(\[.+\]).*', run_name, re.M | re.I)
    if rawTestID:
        shortName = rawTestID.group(1)

    print "short Name: " + shortName
    output_name = ""
    if shortName != "":
        output_name = shortName
    else:
        output_name = run_name

    print "output_name: " + output_name

    if n_type != "":
        full_output_name = "\"" + output_name + "_" + lang + "_" + n_type + "\""
    else:
        full_output_name = "\"" + output_name + "_" + lang + "\""



    command = "pybot --nostatusrc -t \"" + run_name + "\" -d " + robot_output + " -o output" + full_output_name + " -r report" + full_output_name \
              + " -l log" + full_output_name + " -v ar_LANG:" + lang + " -v ar_OS:" + str(platform) + " -v ar_BROWSER:" + browser \
              + " -v ar_TAKE_TIMEOUT:" + take_timeout \
              + " -v ar_NETWORK:" + network \
              + " -v ar_NType:" + str(n_type) + " " + tag + " " + robot_test_suite
    print "command is a " + command
    print "process id = ", os.getpid()

    rand = randint(10, 100)
    sleep(rand / 1000.0)
    os.system(command)

def kill_proc_tree(pid, including_parent=True):
    parent = psutil.Process(pid)
    index = 0
    for child in parent.children(recursive=True):
        child.kill()
        print "Pid = " + pid + "kill child process index " + index
        index +=1
    if including_parent:
        parent.kill()


def kill_child():
    me = os.getpid()
    kill_proc_tree(me)


def parallel_execution(robot_path, robot_test_suite, robot_output, tag="", lang="EN", browser="gc", take_timeout="auto"
                       , network="Wifi", platform="Android", process_number=None, n_type_support=[]):
    print "begin"

    run_name = []
    # path = robot_path + '\\' + robot_test_suite
    path = os.path.join(robot_path, robot_test_suite)

    suite = TestSuiteBuilder().build(path)
    arr_tag = []
    if tag and not tag.isspace():
        arr_tag = tag.split()
        for i in range(0, len(arr_tag)):
            if arr_tag[i] == '-i':
                suite.filter(included_tags=arr_tag[i+1])
            elif arr_tag[i] == '-e':
                suite.filter(excluded_tags=arr_tag[i + 1])

    tests = suite.tests
    print tests
    for test in tests:
        run_name.append(str(test))
    threads = []
    print "path : " + path
    dir_path = path.replace(".txt", "")
    print "dir_path : " + dir_path
    print "len : " + str(len(run_name))

    # run_name = ['[F01-001]eServiceWeb-PO-Login-NumberNotComplete', '[F01-002]eServiceWeb-PO-Login-NumberDtac']
    # run_dir = "D:\ArcadiaAtlas\Robot\eServiceWebPostPaid_BuffeStyle"
    # run_name = tests
    print "update"
    if len(run_name) == 0:
        print "not found test case to execute."
        return
    run_dir = dir_path
    os.chdir(robot_path)
    # pool = Pool(len(run_name))
    if process_number is not None:
        process_number = int(process_number)

    pool = Pool(processes=process_number)
    # func = partial(call_script, run_dir, robot_test_suite, robot_output, tag, lang, browser, take_timeout, n_type_support)
    # pool.map_async(func, run_name)
    # pool.apply_async(func, run_name)
    # if n_type_support != "":
    #     n_type_support = n_type_support.split(",")
    response = []
    if len(n_type_support) == 0:
        if take_timeout == "auto":
            # calculate take time out
            take_timeout = str(len(run_name) * CONST_MAGIC_NUMBER_TAKE_TIME_OUT)
            print "take_timeout : " + take_timeout
        n_type = ""
        # func = partial(call_script, run_dir, robot_test_suite, robot_output, tag, lang, browser, take_timeout, network,
        #                n_type)
        # pool.map_async(func, run_name)

        for each_test in tests:
            print "test => " + str(each_test)
            func = partial(call_script, run_dir, robot_test_suite, robot_output, tag, lang, browser, take_timeout, network,
                           str(each_test), platform, n_type)
            response.append(pool.apply_async(func))

        for each_response in response:
            each_response.get()

    else:
        # response = []
        if take_timeout == "auto":
            # calculate take time out
            take_timeout = str(len(run_name) * len(n_type_support) * CONST_MAGIC_NUMBER_TAKE_TIME_OUT)
            print "take_timeout multiply n type : " + take_timeout
        # for n_type in n_type_support:
        #     print "n_type =>" + n_type
        #     if n_type == "":
        #         continue

        for each_test in tests:
            print "test => " + str(each_test)

            for n_type in n_type_support:
                print "n_type =>" + n_type
                if n_type == "":
                    continue
                func = partial(call_script, run_dir, robot_test_suite, robot_output, tag, lang, browser,
                               take_timeout, network, str(each_test), platform,n_type)
                response.append(pool.apply_async(func))

            # func = partial(call_script, run_dir, robot_test_suite, robot_output, tag, lang, browser, take_timeout,
            #                network, n_type)
            # pool.map_async(func, run_name)

        for each_response in response:
            each_response.get()

    pool.close()
    pool.join()

    print "finished..."
    import atexit
    atexit.register(kill_child)


# parallel_execution("D:\AIS\RobotFramework\eServiceWebPostPaid\Web", "eServiceWebPostPaidLogin.txt",
#                    "D:\AtlasBuffet\Output\eServiceWebPostPaidLogin", "-i fail -e copy", "EN", "gc", 120)

if __name__ == "__main__":
    # (robot_path, robot_test_suite, tag = "*", LANG = "EN", BROWSER = "gc")
    # parallel_execution("D:\ArcadiaAtlas\Robot\eServiceWebPostPaid_BuffeStyle", "eServiceWebPostPaidLogin.txt", "ptest")
    # parallel_execution("D:\ArcadiaAtlas\Robot\eServiceWebPostPaid_BuffeStyle", "eServiceWebPostPaidBillAISPostpaid.txt", "T1")
    print "[0] => " + sys.argv[0]
    print "[1] => " + sys.argv[1]   # => robot path
    print "[2] => " + sys.argv[2]   # => robot test suite
    print "[3] => " + sys.argv[3]   # => robot output report
    print "[4] => " + sys.argv[4]   # => tag -i aORb -e cANDd
    print "[5] => " + sys.argv[5]   # => lang
    print "[6] => " + sys.argv[6]   # => browser
    print "[7] => " + sys.argv[7]   # => take virtual timeout
    parallel_execution(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5], sys.argv[6], sys.argv[7])
