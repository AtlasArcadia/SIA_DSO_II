import logging
import os.path
import time
import xml.etree.ElementTree as ET

from DateTime import datetime

# from FileLock import FileLock
from lockfile import LockFile


DEVICE_NAME = '#device_name'
TIMESTAMP = '#timestamp'
INCLUDE = 'include'
EXCLUDE = 'exclude'
NEED = 'need'

REST_TIME = 1


class State(object):
    NORMAL = 'Normal'
    BUSY = 'Busy'


class LocalConfiger:
    def __init__(self):
        logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')

    @staticmethod
    def release_virtual_local_config(config_file, full_device_name, timestamp, max_repeat=3):
        # lock = FileLock(config_file)
        # For support duplicate device name.
        # full device include by device name + ":" + prefix alias name
        print "full device name : " + full_device_name
        arrName = full_device_name.split(":")
        if  len(arrName) != 2:
            msg_error_device_name_not_correct = "Found the device name not correct."
            raise Exception(msg_error_device_name_not_correct)
        device_name = arrName[0]
        # prefix_alias = arrName[1]

        lock = LockFile(config_file)
        if max_repeat <= 0:
            msg_error_over_max_repeat = 'Over maximum repeat to release device name ' \
                                        + device_name + ' with timestamp ' + timestamp
            logging.error(msg_error_over_max_repeat)
            raise Exception(msg_error_over_max_repeat)
        try:
            with lock:
                tree = ET.parse(config_file)
                root = tree.getroot()
                isRelease = False
                msg_error_invalid_time_stamp = ''
                #device = root.find('.//device[@name="' + device_name + '"]')
                for device in root.findall('.//device[@name="' + device_name + '"]'):

                    if timestamp != device.get('timestamp'):
                        # Will can not change state because this locked by another.
                        msg_error_invalid_time_stamp = 'timestamp not valid to release device ' + device_name \
                                                       + ' with time ' + timestamp \
                                                       + '( ' + str(device.get('timestamp')) + ' )'
                        # logging.error(msg_error_invalid_time_stamp)
                        # print('timestamp not valid to release device ' + device_name)
                        # raise Exception(msg_error_invalid_time_stamp)
                        # go to next if have the same name
                        continue

                    device.set('state', State.NORMAL)
                    tree.write(config_file)
                    time.sleep(REST_TIME)

                    # print "Release success = > " + device_name + " Time => " + timestamp
                    isRelease = True
                    break

                if not isRelease:
                    raise Exception(msg_error_invalid_time_stamp)
                else:
                    file = open(config_file)
                    file.flush()
                    file.close()
                    logging.info("Release success = > " + device_name + " Time => " + timestamp)

        except:
            if os.path.isfile(str(config_file) + ".lock"):
                lock.release()
                max_repeat -= 1
                # try to reverse to original
                # LocalConfiger.release_virtual_local_config(config_file, device_name, timestamp, max_repeat)
            # msg_error_when_release_virtual = 'Release virtual found error ' + sys.exc_info()[0]
            msg_error_when_release_virtual = 'Release virtual found error '
            #logging.error(msg_error_when_release_virtual)
            raise Exception(msg_error_when_release_virtual)

    @staticmethod
    def take_virtual_local_config(config_file, key_name, key_tag):
        # type: (basestring, basestring) -> dictionary
        result = None
        original_tree = None
        # lock = FileLock(config_file)
        lock = LockFile(config_file)
        not_support_counter = 0
        try:

            with lock:
                original_tree = ET.parse(config_file)
                tree = ET.parse(config_file)
                if tree is None:
                    # tree is None
                    msa_tree_is_none = 'Tree is None.'
                    raise Exception(msa_tree_is_none)

                root = tree.getroot()
                # for device in root.findall('.//device[@state="' + State.NORMAL + '"]'):
                # Get all element for check un-support
                for device in root.findall('.//device'):

                    # Check device is tag is support key
                    if not LocalConfiger.__check_key_is_match_in_support_tag(device, key_tag):
                        # comment for reduce log.
                        # msg_not_support_tag_and_try_next = 'Device ' + device.get('name') \
                        #                                    + ' is not support tags and will continue next device.'
                        # logging.info(msg_not_support_tag_and_try_next)
                        # print(msg_not_support_tag_and_try_next)
                        not_support_counter += 1
                        continue


                    # Check normal state
                    if device.get('state') != State.NORMAL:
                        # continue to check next device.
                        continue


                    # Mark timestamp
                    timestamp = str(datetime.now())
                    device.set('timestamp', timestamp)

                    # Create virtual local config data
                    result = LocalConfiger.__create_virtual_local_config_dictionary(device, key_name)

                    # Mark sate to Busy
                    device.set('state', State.BUSY)

                    # Update xml local config file.
                    tree.write(config_file)

                    # reset after write
                    time.sleep(REST_TIME)

                    # Return and exit function
                    # return result
                    break

                if result is not None:
                    file = open(config_file)
                    file.flush()
                    file.close()
                    logging.info("Take virtual devices success.")
                    return result
                elif len(root.findall('.//device')) == not_support_counter:
                    msg_not_support_tag = 'Not found support tag in config...'
                    logging.error(msg_not_support_tag)
                    return None

        except:
            if os.path.isfile(str(config_file) + ".lock"):
                msg_error_found_exception = 'Found some exception when file locked.'
                logging.info(msg_error_found_exception)
                # try to reset to normal state
                # original_tree.write(config_file)
                lock.release()


            # msg_err_try_to_take_virtual = 'Take virtual found error ' + sys.exc_info()[0]
            msg_err_try_to_take_virtual = 'Take virtual found error '
            # logging.error(msg_err_try_to_take_virtual)
            raise Exception(msg_err_try_to_take_virtual)


        # All busy or not support throw fail
        msg_all_busy_or_not_support = 'All busy ...'
        # logging.info(msg_all_busy_or_not_support)
        raise Exception(msg_all_busy_or_not_support)

    @staticmethod
    def __check_key_is_match_in_support_tag(device, filters):
        pass
        # comment for reduce log
        # msg_filters = "filters : " + str(len(filters))
        # logging.info(msg_filters)
        if len(filters) == 0:
            msg_not_found_tag = 'Not found tag filter.'
            logging.error(msg_not_found_tag)
            raise Exception(msg_not_found_tag)
        tags_include_in_xml = {}
        tags_need_in_xml = {}
        tags = device.find('tags')
        for eachTag in tags.findall('tag'):
            key = eachTag.text
            value = eachTag.get('status')
            if value == INCLUDE:
                tags_include_in_xml.update({key: value})
            elif value == NEED:
                tags_need_in_xml.update({key: value})
            else:
                # for use temporary
                tags_include_in_xml.update({key: value})

        # check from test case to xml with state 'include'
        for each_filter in filters:
            # if each filter is include
            if filters.get(each_filter) == INCLUDE:
                # check is must in tags_in_xml if not reject
                if each_filter not in tags_include_in_xml:
                    return False

            # else if each filter is exclude
            elif filters.get(each_filter) == EXCLUDE:
                # check is must be not in tags_in_xml if not reject
                if each_filter in tags_include_in_xml:
                    return False

            elif filters.get(each_filter) == NEED:
                # ignore in this part will check later
                if each_filter not in tags_need_in_xml:
                    return False

            # else
            else:
                # filter not support throw error
                msg_not_support_filter = 'Not support filter ' + filters.get(each_filter)
                logging.error(msg_not_support_filter)
                raise Exception(msg_not_support_filter)

        # check from xml to test case with status 'need'
        for each_need in tags_need_in_xml:
            # check tag need in xml must be in test case
            if each_need not in filters:
                return False

        # All condition is passed.
        return True

    @staticmethod
    def __create_virtual_local_config_dictionary(device, key):
        pass
        # result = None
        result = {}
        key += "_"
        # Must have a DEVICE NAME
        device_name = device.get('name')
        result[key + DEVICE_NAME] = device_name
        # Must have a TIMESTAMP
        timestamp = device.get('timestamp')
        result[key + TIMESTAMP] = timestamp
        # Get default element
        default = device.find('default')
        items = default.findall('item')
        for item in items:
            # Define key name
            keyname = key + item.get('name')
            # Check type of value
            if item.get('type') == 'Scalar':
                result[keyname] = item.find('value').text
            elif item.get('type') == 'List':
                values = item.findall('value')
                list_value = []
                for value in values:
                    list_value.append(value.text)
                result[keyname] = list_value
            elif item.get('type') == 'Dictionary':
                values = item.findall('value')
                dic_value = {}
                for value in values:
                    name = value.get('name')
                    dic_value[name] = value.text
                result[keyname] = dic_value

        return result
