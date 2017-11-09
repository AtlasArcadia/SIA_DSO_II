import os
import sys
import re
from robot.api import TestSuiteBuilder


def execute_testcase_perf(suite_location, feature_name, rounds, tag, output_dir, n_type, lang, take_timeout=30):
    os.chdir(suite_location)
    os.system('cd')
    rounds = int(rounds)
    path = os.path.join(suite_location, feature_name + '.txt')
    print " path =>" + path
    suite = TestSuiteBuilder().build(path)
    if tag and not tag.isspace():
        arr_tag = tag.split()
        for i in range(0, len(arr_tag)):
            if arr_tag[i] == '-i':
                suite.filter(included_tags=arr_tag[i+1])
            elif arr_tag[i] == '-e':
                suite.filter(excluded_tags=arr_tag[i + 1])
    tests = suite.tests
    for test in tests:
        rawTestID = re.search(r'(\[.+\]).*', str(test), re.M | re.I)
        testID = rawTestID.group(1)
        for round in range(1, rounds+1):
            if round < 10:
                 test_round = "0" + str(round)
            else:
                test_round = str(round)

            command = 'pybot --nostatusrc -v ar_LANG:' + lang + ' -t "' + str(test) + '"' + ' -v ar_TAKE_TIMEOUT:' \
                      + str(take_timeout) + ' -v ar_NType:' + n_type + ' -d ' + output_dir \
                      + ' -o ' + feature_name + '_' + '_-[' + test_round + ']-' \
                      + ' -N ' + feature_name + '_' + '_-[' + test_round + ']-' \
                      + ' ' + feature_name + '.txt'
            os.system(command)

if __name__ == "__main__":
    # (robot_path, robot_test_suite, tag = "*", LANG = "EN", BROWSER = "gc")
    # execute_testcase_perf("D:/AtlasBuffet/MyAIS/Mobile", "MyAccount", "10", "perf", "D:/output", "3PO", "EN")
    print "[0] => " + sys.argv[0]
    print "[1] => " + sys.argv[1]   # => suite location
    print "[2] => " + sys.argv[2]   # => feature name
    print "[3] => " + sys.argv[3]   # => rounds
    print "[4] => " + sys.argv[4]   # => tag
    print "[5] => " + sys.argv[5]   # => output dir
    print "[6] => " + sys.argv[6]   # => n type
    print "[7] => " + sys.argv[7]   # => lang
    if len(sys.argv) < 9:
        taketimeout = 30
    else:
        taketimeout = int(sys.argv[8])
    execute_testcase_perf(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5], sys.argv[6], sys.argv[7], taketimeout)