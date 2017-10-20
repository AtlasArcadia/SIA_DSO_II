import os
import sys
import logging
from LocalConfiger import LocalConfiger
from robot.libraries.BuiltIn import BuiltIn
from robot.api import TestSuiteBuilder
from multiprocessing import Pool
from functools import partial
import runParallel

from robot.variables import (is_list_var, is_var, DictVariableTableValue,
                             VariableTableValue, VariableSplitter,
                             variable_not_found)
import re


def execute_feature(suite_location, output_location="", list_of_feature="" , list_of_NType="", language="EN",
                    browser="gc" ,tag=None, take_timeout="auto", is_parallel="False", network="Wifi",
                    platform="Android", process_number=None, additional_option=None):
    """ Input Feature and NType to execute testcase
        suite_location  : location of robot file
        list_of_feature : User can input many features name of test suite to execute.Default is run all test suite
                          in suite_location
        list_of_NType   : User can input many NTypes to execute.Default is run all NType in config file
        additional_option : Another pybot options
        default output dir : workspace\MyAIS\OutputExecutor
        #######
        String is sensitive case
        Example:
        Execute Feature | D:\\AIS\\RobotFramework\\MyAIS\\Mobile | list_of_feature=Login,PayBill
                        | list_of_NType=3PO,3PE |language=EN
        #######
    """

    # output_path = os.path.join( suite_location, "..", "Output")
    output_path = output_location
    print("output_path: " + str(output_path))
    dir_path = os.path.dirname(os.path.realpath(__file__))
    sys.path.append(dir_path)
    print(str(list_of_feature))


    #split feature and N Type to list
    list_feature = list_of_feature.split(",")
    list_NType = list_of_NType.split(",")

    logging.info(list_feature)
    logging.info(list_NType)

    os.chdir(suite_location)

    #get test suite name from suite location
    dirs = os.listdir(suite_location)

    #check and set tag for run test case
    stag = ' '
    if tag is not None:
        stag = ' -i ' + tag

    # if application is not have N-Type
    if (list_of_NType.lower() == "none"):
        # such as Privilege web

        for each_feature in list_feature:

            if is_parallel == "True":
                file_name = each_feature + ".txt"
                output_feature_path = os.path.join(output_path, each_feature)
                runParallel.parallel_execution(suite_location, file_name, output_feature_path, stag, language,
                                               browser, take_timeout, network ,os, process_number=process_number)

            else:
                execute_command_pybot(suite_location, output_path, each_feature, "", browser, language,
                                      take_timeout,
                                      stag, network, os ,additional_option)

    #case Run All feature and NType in folder in suite location
    elif (list_of_feature=="" and list_of_NType==""):
        print "Run All feature and NType in folder"
        result = ""

        #get feature name from suite location
        for file_name in dirs:

            feature_name = file_name.split(".txt")
            name_of_feature = feature_name[0]

            #sent feature name to get NType list from Config file
            status, List_of_NType_in_config = get_list_of_nType_in_config_file_by_featurename(name_of_feature)

            support_nType_list = []

            #check NType list in config file is not none
            if (status=="True" and List_of_NType_in_config != None):
                for each_of_NType_in_config in List_of_NType_in_config:
                    if is_parallel == "True":
                        support_nType_list.append(each_of_NType_in_config)

                    else:
                        execute_command_pybot(name_of_feature, output_path, each_of_NType_in_config, browser, language, take_timeout,
                                              stag , network , platform , additional_option)
                        result = "True"


                if is_parallel == "True":
                    output_feature_path = os.path.join( output_path, name_of_feature)
                    runParallel.parallel_execution(suite_location, file_name, output_feature_path, stag, language,
                                                   browser, take_timeout, network, platform,
                                                   process_number=process_number, n_type_support=support_nType_list)
                    result = "True"

        if (result != "True"):
            msg = "Pybot can not run not found data in NtypeOfFeatureConfig"
            logging.info(msg)

    #case Run feature with NType in config file
    elif(list_of_feature != "" and list_of_NType == ""):
        print "Run feature with NType in config file"
        result = ""

        # get feature name from user input
        for each_of_feature in list_feature:
            print str(each_of_feature) + " file name"
            file_name = each_of_feature + ".txt"

            name_of_feature = each_of_feature

            support_nType_list = []

            # sent feature name to get NType list from Config file
            status, List_of_NType_in_config = get_list_of_nType_in_config_file_by_featurename(name_of_feature)
            for each_of_NType_in_config in List_of_NType_in_config:
                if is_parallel == "True":
                    support_nType_list.append(each_of_NType_in_config)

                else:
                    execute_command_pybot(suite_location, output_path, name_of_feature, each_of_NType_in_config,
                                          browser, language, take_timeout, stag, network , platform ,additional_option)

                result = "True"

            if is_parallel == "True":
                output_feature_path = os.path.join(output_path, name_of_feature)
                runParallel.parallel_execution(suite_location, file_name, output_feature_path, stag, language,
                                               browser, take_timeout, network, platform
                                                , process_number = process_number
                                                , n_type_support = support_nType_list)

        if (result != "True"):
                msg = "Not Found Feature in config file"
                logging.info(msg)

    #case Run every feature that user input
    elif(list_of_feature =="" and list_of_NType !=""):

        print "Run every feature that user input"
        result = ""

        # get feature name from suite location
        for file_name in dirs:
            feature_name = file_name.split(".txt")
            name_of_feature = feature_name[0]

            # sent feature name to get NType list from Config file
            status, List_of_NType_in_config = get_list_of_nType_in_config_file_by_featurename(name_of_feature)

            support_nType_list = []

            # check NType list in config file is not none
            if (status=="True" and List_of_NType_in_config != None):
                for each_of_NType in list_NType:
                    for each_of_NType_in_config in List_of_NType_in_config:
                        if (each_of_NType == each_of_NType_in_config):
                            if is_parallel == "True":
                                support_nType_list.append(each_of_NType_in_config)

                            else:
                                execute_command_pybot(name_of_feature, output_path, each_of_NType_in_config,
                                                      browser, language, take_timeout, stag, network ,platform,additional_option)
                            result = "True"

                if is_parallel == "True":
                    output_feature_path = os.path.join(output_path, name_of_feature)
                    runParallel.parallel_execution(suite_location, file_name, output_feature_path, stag, language,
                                                   browser, take_timeout, network, platform
                                                   ,  process_number=process_number, n_type_support=support_nType_list)
                    result = "True"

        if (result != "True"):
            msg = "Not Found NType in config file"
            logging.info(msg)

    #case Run feature and NType that user input
    elif(list_of_feature !="" and list_of_NType !=""):

        print "Run feature and NType that user input"
        result = ""

        # get feature name from user input
        for each_of_feature in list_feature:
            name_of_feature = each_of_feature

            support_nType_list = []

            # sent featurename to get NType list from Config file
            # status, List_of_NType_in_config = get_list_of_nType_in_config_file_by_featurename(name_of_feature)

            # check NType list in config file is not none
            # if (status == "True" and List_of_NType_in_config != None):
            #     for each_of_NType in list_NType:
            #         for each_of_NType_in_config in List_of_NType_in_config:
            #             if (each_of_NType == each_of_NType_in_config):
            #                 if is_parallel == "True":
            #                     support_nType_list.append(each_of_NType)
            #                 else:
            #                     execute_command_pybot(suite_location, output_path, name_of_feature,
            #                                           each_of_NType_in_config, browser, language,
            #                                           take_timeout, stag, network , platform ,additional_option)
            #                 result = "True"
            #     file_name = name_of_feature + ".txt"
            #     if is_parallel == "True":
            #         output_feature_path = os.path.join(output_path, name_of_feature)
            #         runParallel.parallel_execution(suite_location, file_name, output_feature_path, stag, language,
            #                                        browser, take_timeout, network, platform ,support_nType_list)
            #         result = "True"

            # Use user input n-type.
            if list_NType is not None:
                for each_of_NType in list_NType:

                    if is_parallel == "True":
                        support_nType_list.append(each_of_NType)
                    else:
                        execute_command_pybot(suite_location, output_path, name_of_feature,
                                              each_of_NType, browser, language,
                                              take_timeout, stag, network , platform ,additional_option)
                    result = "True"
                file_name = name_of_feature + ".txt"
                if is_parallel == "True":
                    output_feature_path = os.path.join(output_path, name_of_feature)
                    runParallel.parallel_execution(suite_location, file_name, output_feature_path, stag, language,
                                                   browser, take_timeout, network, platform
                                                   , process_number=process_number, n_type_support=support_nType_list)
                    result = "True"
            else:
                logging.info("Not found input n-type from argument when config n-type file is not config too.")

        if result != "True":
            msg = "Not Found feature and NType in config file"
            logging.info(msg)


    print "finished..."

# function Execute_command_Pybot for run pybot and define output
def execute_command_pybot(suite_location, output_location, each_feature, each_N_type, browser, language, take_timeout, stag, network ,platform, additional_option):
    output_each_feature = ""
    #check language is not none
    """if language == None :
        msg = "Cannot run. Please input language. Ex.language=EN"
        logging.info(msg)
    """
    #run pybot and define output
    # if additional_option is None:

    list_Network = ["Data","Wifi","Airplane","AllNetwork"]

    if take_timeout == "auto":
        take_timeout = runParallel.CONST_MAGIC_NUMBER_TAKE_TIME_OUT * 1
        print "take_timeout: " + str(take_timeout)

    testcase_name = []
    filename = each_feature + ".txt"
    path = os.path.join(suite_location, filename)
    suite = TestSuiteBuilder().build(path)
    print "Suite Name  === " + str(suite)

    tests = suite.tests
    for test in tests:
        testcase_name.append(str(test))
    print "TestCase Name  === " + str(testcase_name)

    output_each_feature = ' -d ' + output_location + str(each_feature)
    #output_file_name = '-o output_'+ str(each_feature) + '_' + str(each_N_type) + '_' + language
    #report_file_name = '-r report_'+ str(each_feature) + '_' + str(each_N_type) + '_' + language
    #log_file_name = '-l log_' + str(each_feature) + '_' + str(each_N_type) + '_' + language
    rename_testsiute = '-N ' + str(each_feature)
    os.chdir(suite_location)
    os.system('cd')

    for run_each_testcase in testcase_name:
        output_file_name = "output"+str(run_each_testcase) + '_' + str(language) + '_' + str(each_N_type) + '.xml'
        if network in list_Network :
            os.system(
                "pybot -v ar_BROWSER:" + str(browser) + " -v ar_LANG:" + language + " -v ar_TAKE_TIMEOUT:" + str(
                    take_timeout) + " -v ar_NType:" + str(each_N_type) + str(stag) + " -v ar_OS:" + str(platform) + " -v ar_NETWORK:"+ str(network) + " " +str(
                    output_each_feature) + " -o \"" + str(output_file_name) + "\" " + str(
                    rename_testsiute) + " -t \"" + str(run_each_testcase) + "\" " + str(each_feature) + ".txt")
        else :
            os.system(
                "pybot -v ar_BROWSER:" + str(browser) + " -v ar_LANG:" + language + " -v ar_TAKE_TIMEOUT:" + str(
                    take_timeout) + " -v ar_NType:" + str(each_N_type) + str(stag) + " -v ar_OS:" + str(platform) + " -v ar_NETWORK:"+ str(network) + " " +str(
                    output_each_feature) + " -o \"" + str(output_file_name) + "\" " + str(
                    rename_testsiute) + " -t \"" + str(run_each_testcase) + "\" " + str(each_feature) + ".txt")
        """
        os.system(
            "pybot -v ar_BROWSER:" + str(browser) + " -v ar_LANG:" + language + " -v ar_TAKE_TIMEOUT:" + str(
                take_timeout) + " -v ar_NType:" + str(each_N_type) + str(stag) + " " + str(output_each_feature) + " -o \"" + str(output_file_name) + "\" " + str(rename_testsiute) + ' -t \"' + str(run_each_testcase) + '\" ' + str(each_feature) + '.txt')
        """


def get_list_of_nType_in_config_file_by_featurename(name_of_feature):

    try:
        #Get list variable from file config
        variable_name_of_feature = "@{" + name_of_feature + "}"
        logging.info(variable_name_of_feature)

        List_of_NType_in_config = BuiltIn().get_variable_value(variable_name_of_feature)
        logging.info(List_of_NType_in_config)

        return "True",List_of_NType_in_config
		
    except:
        List_of_NType_in_config=[]
        return "False",List_of_NType_in_config

def _take_virtual_local_config(config_file, key_name, key_tag):
    return LocalConfiger.take_virtual_local_config(config_file, key_name, key_tag)


def _release_virtual_local_config(config_file, device_name, timestamp):
    LocalConfiger.release_virtual_local_config(config_file, device_name, timestamp)

    # execute_feature('Login', '../../../mobile/MyAIS/','D:\AIS\RobotFramework\Config\NTypeOnFeature.xml','EN')
