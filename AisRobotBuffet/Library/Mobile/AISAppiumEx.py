import ast
import os
from audioop import alaw2lin

from AppiumLibrary import AppiumLibrary
from appium import webdriver
from AtlasInfo import AtlasInfo
from robot.utils import ConnectionCache
import os



# create new class that inherits from AppiumLibrary
class AISAppiumEx(AppiumLibrary):

    # create a new keyword called "get application instance"
    # Public, element lookups

    def aisappium_get_driver_instance(self):
        """return current session Appium.
        """
        return self._current_application()

    def aisappium_set_driver_instance(self, oAppiumInfo):
        """set current session Appium.
        |oAppiumInfo=${AppInfo}|
        """
        self._cache.current = oAppiumInfo.driver

    def aisappium_open_application(self, remote_url, alias=None, **kwargs):
        """Connect to mobile and open application
        |remote_url=http://10.239.223.84/wd/hub|alias=None|cap|
        """
        index = AppiumLibrary.open_application(self, remote_url, alias, **kwargs)
        driver = self._current_application()
        oAppiumInfo = AtlasInfo(index, alias, driver, remote_url)
        return oAppiumInfo

    def aisappium_close_application(self, oAppiumInfo=None):
        """close session Appium.
        |oAppiumInfo=${AppInfo}|
        """
        # self._cache.current = oAppiumInfo.driver
        # self._debug('Closing application with session id %s' % self._current_application().session_id)
        # self._cache.close()
        if oAppiumInfo is None:
            self._debug('Closing application with session id %s' % self._current_application().session_id)
            self._cache.close()
        else:
            self._debug('Closing application with session id %s' % self._current_application().session_id)
            oAppiumInfo.driver.quit()
        # self._cache.empty_cache()
        # noCurrent = ConnectionCache('No open connection.')
        # self._cache.current = noCurrent.get_nocurrent()
        # self._cache.current_index = None
        # self._cache._closed.add(application)

    def aisappium_click_element(self, locator, oAppiumInfo=None):
        """Click element on mobile.
        |locator=xpath=//*[@id="id123"]|oAppiumInfo=${AppInfo}
        """
        self._info("Clicking mobile element '%s'." % locator)
        if oAppiumInfo is not None:
            self._element_find_atlas(locator, True, True, oAppiumInfo.driver).click()
        else:
            self._element_find(locator, True, True).click()

    def aisappium_clear_text(self, locator, oAppiumInfo=None):
        """Clears the text field identified by `locator`.

        |locator=xpath=//*[@id="id123"]|oAppiumInfo=${AppInfo}
        """
        self._info("Clear text field '%s'" % locator)
        if oAppiumInfo is not None:
            self._element_clear_text_by_locator_atlas(locator, oAppiumInfo.driver)
        else:
            self._element_clear_text_by_locator(locator)

    def aisappium_input_text(self, locator, text, oAppiumInfo=None):
        """Types the given `text` into text field identified by `locator`.

        |locator=xpath=//*[@id="id123"]|oAppiumInfo=${AppInfo}
        See `introduction` for details about locating elements.
        """
        self._info("Typing text '%s' into text field '%s'" % (text, locator))
        if oAppiumInfo is not None:
            self._element_input_text_by_locator_atlas(locator, text, oAppiumInfo.driver)
        else:
            self._element_input_text_by_locator(locator, text)

    def aisappium_input_password(self, locator, text, oAppiumInfo=None):
        """Types the given password into text field identified by `locator`.

        |locator=xpath=//*[@id="id123"]|oAppiumInfo=${AppInfo}

        Difference between this keyword and `Input Text` is that this keyword
        does not log the given password. See `introduction` for details about
        locating elements.
        """
        self._info("Typing password into text field '%s'" % locator)
        if oAppiumInfo is not None:
            self._element_input_text_by_locator_atlas(locator, text, oAppiumInfo.driver)
        else:
            self._element_input_text_by_locator(locator, text)

    def aisappium_hide_keyboard(self, oAppiumInfo=None, key_name=None):
        """Hides the software keyboard on the device. (optional) In iOS, use `key_name` to press
        a particular key, ex. `Done`. In Android, no parameters are used.
        """
        if oAppiumInfo is not None:
            driver = oAppiumInfo.driver
        else:
            driver = self._current_application()
        driver.hide_keyboard(key_name)

    def aisappium_element_should_be_disabled(self, locator, loglevel='INFO', oAppiumInfo=None):
        """Verifies that element identified with locator is disabled.

        Key attributes for arbitrary elements are `id` and `name`. See
        `introduction` for details about locating elements.
        """
        if oAppiumInfo is not None:
            element = self._element_find_atlas(locator, True, True, oAppiumInfo.driver)
        else:
            element = self._element_find(locator, True, True)
        if element.is_enabled():
            self.log_source(loglevel)
            raise AssertionError("Element '%s' should be disabled "
                                 "but did not" % locator)
        self._info("Element '%s' is disabled ." % locator)

    def aisappium_element_should_be_enabled(self, locator, loglevel='INFO', oAppiumInfo=None):
        """Verifies that element identified with locator is enabled.

        Key attributes for arbitrary elements are `id` and `name`. See
        `introduction` for details about locating elements.
        """
        if oAppiumInfo is not None:
            element = self._element_find_atlas(locator, True, True, oAppiumInfo.driver)
        else:
            element = self._element_find(locator, True, True)
        if not element.is_enabled():
            self.log_source(loglevel)
            raise AssertionError("Element '%s' should be enabled "
                                 "but did not" % locator)
        self._info("Element '%s' is enabled ." % locator)

    def aisappium_element_name_should_be(self, locator, expected, oAppiumInfo=None):
        """Verifies that element's name identified with locator is equal 'expected'.

        Key attributes for arbitrary elements are `id` and `name`. See
        `introduction` for details about locating elements.
        """
        if oAppiumInfo is not None:
            element = self._element_find_atlas(locator, True, True, oAppiumInfo.driver)
        else:
            element = self._element_find(locator, True, True)
        if expected != element.get_attribute('name'):
            raise AssertionError("Element '%s' name should be '%s' "
                                 "but it is '%s'." % (locator, expected, element.get_attribute('name')))
        self._info("Element '%s' name is '%s' " % (locator, expected))

    def aisappium_element_value_should_be(self, locator, expected, oAppiumInfo=None):
        """Verifies that element's value identified with locator is equal 'expected'.

        Key attributes for arbitrary elements are `id` and `name`. See
        `introduction` for details about locating elements.
        """
        if oAppiumInfo is not None:
            element = self._element_find_atlas(locator, True, True, oAppiumInfo.driver)
        else:
            element = self._element_find(locator, True, True)
        if expected != element.get_attribute('value'):
            raise AssertionError("Element '%s' value should be '%s' "
                                 "but it is '%s'." % (locator, expected, element.get_attribute('value')))
        self._info("Element '%s' value is '%s' " % (locator, expected))

    def aisappium_element_attribute_should_match(self, locator, attr_name, match_pattern, regexp=False,
                                                 oAppiumInfo=None):
        """Verify that an attribute of an element matches the expected criteria.

        The element is identified by _locator_. See `introduction` for details
        about locating elements. If more than one element matches, the first element is selected.

        The _attr_name_ is the name of the attribute within the selected element.

        The _match_pattern_ is used for the matching, if the match_pattern is
        - boolean or 'True'/'true'/'False'/'false' String then a boolean match is applied
        - any other string is cause a string match

        The _regexp_ defines whether the string match is done using regular expressions (i.e. BuiltIn Library's
        [http://robotframework.org/robotframework/latest/libraries/BuiltIn.html#Should%20Match%20Regexp|Should
        Match Regexp] or string pattern match (i.e. BuiltIn Library's
        [http://robotframework.org/robotframework/latest/libraries/BuiltIn.html#Should%20Match|Should
        Match])


        Examples:

        | Element Attribute Should Match | xpath = //*[contains(@text,'foo')] | text | *foobar |
        | Element Attribute Should Match | xpath = //*[contains(@text,'foo')] | text | f.*ar | regexp = True |
        | Element Attribute Should Match | xpath = //*[contains(@text,'foo')] | enabled | True |

        | 1. is a string pattern match i.e. the 'text' attribute should end with the string 'foobar'
        | 2. is a regular expression match i.e. the regexp 'f.*ar' should be within the 'text' attribute
        | 3. is a boolead match i.e. the 'enabled' attribute should be True


        _*NOTE: *_
        On Android the supported attribute names are hard-coded in the
        [https://github.com/appium/appium/blob/master/lib/devices/android/bootstrap/src/io/appium/android/bootstrap/AndroidElement.java|AndroidElement]
        Class's getBoolAttribute() and getStringAttribute() methods.
        Currently supported (appium v1.4.11):
        _contentDescription, text, className, resourceId, enabled, checkable, checked, clickable, focusable, focused, longClickable, scrollable, selected, displayed_


        _*NOTE: *_
        Some attributes can be evaluated in two different ways e.g. these evaluate the same thing:

        | Element Attribute Should Match | xpath = //*[contains(@text,'example text')] | name | txt_field_name |
        | Element Name Should Be         | xpath = //*[contains(@text,'example text')] | txt_field_name |      |

        """
        if oAppiumInfo is not None:
            elements = self._element_find_atlas(locator, False, True, oAppiumInfo.driver)
        else:
            elements = self._element_find(locator, False, True)
        if len(elements) > 1:
            self._info("CAUTION: '%s' matched %s elements - using the first element only" % (locator, len(elements)))

        attr_value = elements[0].get_attribute(attr_name)

        # ignore regexp argument if matching boolean
        if isinstance(match_pattern, bool) or match_pattern.lower() == 'true' or match_pattern.lower() == 'false':
            if isinstance(match_pattern, bool):
                match_b = match_pattern
            else:
                match_b = ast.literal_eval(match_pattern.title())

            if isinstance(attr_value, bool):
                attr_b = attr_value
            else:
                attr_b = ast.literal_eval(attr_value.title())

            self._bi.should_be_equal(match_b, attr_b)

        elif regexp:
            self._bi.should_match_regexp(attr_value, match_pattern,
                                         msg="Element '%s' attribute '%s' should have been '%s' "
                                             "but it was '%s'." % (locator, attr_name, match_pattern, attr_value),
                                         values=False)
        else:
            self._bi.should_match(attr_value, match_pattern,
                                  msg="Element '%s' attribute '%s' should have been '%s' "
                                      "but it was '%s'." % (locator, attr_name, match_pattern, attr_value),
                                  values=False)
        # if expected != elements[0].get_attribute(attr_name):
        #    raise AssertionError("Element '%s' attribute '%s' should have been '%s' "
        #                         "but it was '%s'." % (locator, attr_name, expected, element.get_attribute(attr_name)))
        self._info("Element '%s' attribute '%s' is '%s' " % (locator, attr_name, match_pattern))

    def aisappium_element_should_not_contain_text(self, locator, expected, message='', oAppiumInfo=None):
        """Verifies element identified by ``locator`` does not contain text ``expected``.

        ``message`` can be used to override the default error message.
        See `Element Should Contain Text` for more details.
        """
        self._info("Verifying element '%s' does not contain text '%s'."
                   % (locator, expected))
        if oAppiumInfo is not None:
            actual = self._get_text_atlas(locator, oAppiumInfo.driver)
        else:
            actual = self._get_text(locator)
        if expected in actual:
            if not message:
                message = "Element '%s' should not contain text '%s' but " \
                          "it did." % (locator, expected)
            raise AssertionError(message)

    def aisappium_element_text_should_be(self, locator, expected, message='', oAppiumInfo=None):
        """Verifies element identified by ``locator`` exactly contains text ``expected``.

        In contrast to `Element Should Contain Text`, this keyword does not try
        a substring match but an exact match on the element identified by ``locator``.

        ``message`` can be used to override the default error message.

        New in AppiumLibrary 1.4.
        """
        self._info("Verifying element '%s' contains exactly text '%s'."
                   % (locator, expected))
        if oAppiumInfo is not None:
            element = self._element_find_atlas(locator, True, True, oAppiumInfo.driver)
        else:
            element = self._element_find(locator, True, True)
        actual = element.text
        if expected != actual:
            if not message:
                message = "The text of element '%s' should have been '%s' but " \
                          "in fact it was '%s'." % (locator, expected, actual)
            raise AssertionError(message)

    def aisappium_set_network_connection_status(self, connectionStatus, oAppiumInfo=None):
        """Sets the network connection Status.

        Android only.

        Possible values:
            | =Value= | =Alias=          | =Data= | =Wifi= | =Airplane Mode=  |
            |  0      | (None)           | 0      |   0    | 0                |
            |  1      | (Airplane Mode)  | 0      |   0    | 1                |
            |  2      | (Wifi only)      | 0      |   1    | 0                |
            |  4      | (Data only)      | 1      |   0    | 0                |
            |  6      | (All network on) | 1      |   1    | 0                |
        """
        if oAppiumInfo is not None:
            driver = oAppiumInfo.driver
        else:
            driver = self._current_application()
        return driver.set_network_connection(int(connectionStatus))

    # def aisappium_get_elements(self, locator, first_element_only=False, fail_on_error=True, oAppiumInfo=None):
    #     """Return elements that match the search criteria
    #
    #     The element is identified by _locator_. See `introduction` for details
    #     about locating elements.
    #
    #     If the _first_element_ is set to 'True' then only the first matching element is returned.
    #
    #     If the _fail_on_error_ is set to 'True' this keyword fails if the search return nothing.
    #
    #     Returns a list of [http://selenium-python.readthedocs.org/en/latest/
    #     api.html#module-selenium.webdriver.remote.webelement|WebElement] Objects.
    #     """
    #     if oAppiumInfo is not None:
    #         element = self._element_find_atlas(locator, first_element_only, fail_on_error, oAppiumInfo.driver)
    #     else:
    #         element = self._element_find(locator, first_element_only, fail_on_error)
    #     return element

    def aisappium_get_webelement(self, locator, oAppiumInfo=None):
        """Returns the first [http://selenium-python.readthedocs.io/api.html#module-selenium.webdriver.remote.webelement
        |WebElement] object matching ``locator``.

        Example:
        | ${element}     | Get Webelement | id=my_element |
        | Click Element  | ${element}     |               |

        New in AppiumLibrary 1.4.
        """
        if oAppiumInfo is not None:
            return self._element_find_atlas(locator, True, True, oAppiumInfo.driver)
        else:
            return self._element_find(locator, True, True)

    def aisappium_get_webelements(self, locator, oAppiumInfo=None):
        """Returns list of [http://selenium-python.readthedocs.io/api.html#module-selenium.webdriver.remote.webelement
        |WebElement] objects matching ``locator``.

        Example:
        | @{elements}    | Get Webelements | id=my_element |
        | Click Element  | @{elements}[2]  |               |

        This keyword was changed in AppiumLibrary 1.4 in following ways:
        - Name is changed from `Get Elements` to current one.
        - Deprecated argument ``fail_on_error``, use `Run Keyword and Ignore Error` if necessary.

        New in AppiumLibrary 1.4.
        """
        if oAppiumInfo is not None:
            return self._element_find_atlas(locator, False, True, oAppiumInfo.driver)
        else:
            return self._element_find(locator, False, True)

    def aisappium_get_element_attribute(self, locator, attribute, oAppiumInfo=None):
        """Get element attribute using given attribute: name, value,...

        Examples:

        | Get Element Attribute | locator | name |
        | Get Element Attribute | locator | value |
        """
        if oAppiumInfo is not None:
            elements = self._element_find_atlas(locator, False, True, oAppiumInfo.driver)
        else:
            elements = self._element_find(locator, False, True)
        ele_len = len(elements)
        if ele_len == 0:
            raise AssertionError("Element '%s' could not be found" % locator)
        elif ele_len > 1:
            self._info("CAUTION: '%s' matched %s elements - using the first element only" % (locator, len(elements)))

        try:
            attr_val = elements[0].get_attribute(attribute)
            self._info("Element '%s' attribute '%s' value '%s' " % (locator, attribute, attr_val))
            return attr_val
        except:
            raise AssertionError("Attribute '%s' is not valid for element '%s'" % (attribute, locator))

    def aisappium_get_elements_attribute(self, locator, attribute, oAppiumInfo=None):
        """Get element attribute using given attribute: name, value,...

        Examples:

        | Get Element Attribute | locator | name |
        | Get Element Attribute | locator | value |
        """
        if oAppiumInfo is not None:
            elements = self._element_find_atlas(locator, False, True, oAppiumInfo.driver)
        else:
            elements = self._element_find(locator, False, True)
        ele_len = len(elements)
        if ele_len == 0:
            raise AssertionError("Element '%s' could not be found" % locator)
        elif ele_len > 1:
            self._info("CAUTION: '%s' matched %s elements - using the first element only" % (locator, len(elements)))

        try:
            attr_val = []
            for num in range(ele_len - 1, 0, -1):
                attr_val.append(elements[num].get_attribute(attribute))
            self._info("Element '%s' attribute '%s' " % (locator, attribute))
            return attr_val
        except:
            raise AssertionError("Attribute '%s' is not valid for element '%s'" % (attribute, locator))

    def aisappium_get_element_attribute_index(self, locator, attribute, index, oAppiumInfo=None):
        """Get element attribute using given attribute: name, value,...

        Examples:

        | Get Element Attribute | locator | name |
        | Get Element Attribute | locator | value |
        """
        if oAppiumInfo is not None:
            elements = self._element_find_atlas(locator, False, True, oAppiumInfo.driver)
        else:
            elements = self._element_find(locator, False, True)
        ele_len = len(elements)
        if ele_len == 0:
            raise AssertionError("Element '%s' could not be found" % locator)
        elif ele_len > 1:
            self._info("CAUTION: '%s' matched %s elements - using the first element only" % (locator, len(elements)))

        try:
            attr_val = elements[ele_len - int(index)].get_attribute(attribute)
            self._info("Element '%s' attribute '%s' value '%s' " % (locator, attribute, attr_val))
            return attr_val
        except:
            raise AssertionError("Attribute '%s' is not valid for element '%s'" % (attribute, locator))

    def aisappium_get_element_location(self, locator, oAppiumInfo=None):
        """Get element location

        Key attributes for arbitrary elements are `id` and `name`. See
        `introduction` for details about locating elements.
        """
        if oAppiumInfo is not None:
            element = self._element_find_atlas(locator, True, True, oAppiumInfo.driver)
        else:
            element = self._element_find(locator, True, True)
        element_location = element.location
        self._info("Element '%s' location: %s " % (locator, element_location))
        return element_location

    def aisappium_get_element_size(self, locator, oAppiumInfo=None):
        """Get element size

        Key attributes for arbitrary elements are `id` and `name`. See
        `introduction` for details about locating elements.
        """
        if oAppiumInfo is not None:
            element = self._element_find_atlas(locator, True, True, oAppiumInfo.driver)
        else:
            element = self._element_find(locator, True, True)
        element_size = element.size
        self._info("Element '%s' size: %s " % (locator, element_size))
        return element_size

    def aisappium_get_text(self, locator, oAppiumInfo=None):
        """Get element text (for hybrid and mobile browser use `xpath` locator, others might cause problem)

        Example:

        | ${text} | Get Text | //*[contains(@text,'foo')] |

        New in AppiumLibrary 1.4.
        """
        if oAppiumInfo is not None:
            text = self._get_text_atlas(locator, oAppiumInfo.driver)
        else:
            text = self._get_text(locator)
        self._info("Element '%s' text is '%s' " % (locator, text))
        return text

    def aisappium_get_matching_xpath_count(self, xpath, oAppiumInfo=None):
        """Returns number of elements matching ``xpath``

        One should not use the `xpath=` prefix for 'xpath'. XPath is assumed.

        | *Correct:* |
        | ${count}  | Get Matching Xpath Count | //android.view.View[@text='Test'] |
        | Incorrect:  |
        | ${count}  | Get Matching Xpath Count | xpath=//android.view.View[@text='Test'] |

        If you wish to assert the number of matching elements, use
        `Xpath Should Match X Times`.

        New in AppiumLibrary 1.4.
        """
        if oAppiumInfo is not None:
            count = len(self._element_find_atlas("xpath=" + xpath, False, False, oAppiumInfo.driver))
        else:
            count = len(self._element_find("xpath=" + xpath, False, False))
        return str(count)

    def aisappium_xpath_should_match_x_times(self, xpath, count, oAppiumInfo=None, error=None, loglevel='INFO'):
        """Verifies that the page contains the given number of elements located by the given ``xpath``.

        One should not use the `xpath=` prefix for 'xpath'. XPath is assumed.

        | *Correct:* |
        | Xpath Should Match X Times | //android.view.View[@text='Test'] | 1 |
        | Incorrect: |
        | Xpath Should Match X Times | xpath=//android.view.View[@text='Test'] | 1 |

        ``error`` can be used to override the default error message.

        See `Log Source` for explanation about ``loglevel`` argument.

        New in AppiumLibrary 1.4.
        """
        if oAppiumInfo is not None:
            actual_xpath_count = len(self._element_find_atlas("xpath=" + xpath, False, False, oAppiumInfo.driver))
        else:
            actual_xpath_count = len(self._element_find("xpath=" + xpath, False, False))
        if int(actual_xpath_count) != int(count):
            if not error:
                error = "Xpath %s should have matched %s times but matched %s times"\
                            %(xpath, count, actual_xpath_count)
            self.log_source(loglevel)
            raise AssertionError(error)
        self._info("Current page contains %s elements matching '%s'."
                   % (actual_xpath_count, xpath))

    # def wait_until_page_contains_atlas(self, text, oAppiumInfo=None, timeout=None, error=None):
    #     """Waits until `text` appears on current page.
    #
    #     Fails if `timeout` expires before the text appears. See
    #     `introduction` for more information about `timeout` and its
    #     default value.
    #
    #     `error` can be used to override the default error message.
    #
    #     See also `Wait Until Page Does Not Contain`,
    #     `Wait Until Page Contains Element`,
    #     `Wait Until Page Does Not Contain Element` and
    #     BuiltIn keyword `Wait Until Keyword Succeeds`.
    #     """
    #     if not error:
    #         error = "Text '%s' did not appear in <TIMEOUT>" % text
    #     self._wait_until_atlas(timeout, error, self._is_text_present, text)

    # def wait_until_page_does_not_contain_atlas(self, text, oAppiumInfo=None, timeout=None, error=None):
    #     """Waits until `text` disappears from current page.
    #
    #     Fails if `timeout` expires before the `text` disappears. See
    #     `introduction` for more information about `timeout` and its
    #     default value.
    #
    #     `error` can be used to override the default error message.
    #
    #     See also `Wait Until Page Contains`,
    #     `Wait Until Page Contains Element`,
    #     `Wait Until Page Does Not Contain Element` and
    #     BuiltIn keyword `Wait Until Keyword Succeeds`.
    #     """
    #
    #     def check_present():
    #         present = self._is_text_present(text)
    #         if not present:
    #             return
    #         else:
    #             return error or "Text '%s' did not disappear in %s" % (text, self._format_timeout(timeout))
    #
    #     self._wait_until_no_error_atlas(timeout, check_present)

    def aisappium_wait_until_page_contains_element(self, locator, oAppiumInfo=None, timeout=None, error=None):
        """Waits until element specified with `locator` appears on current page.

        Fails if `timeout` expires before the element appears. See
        `introduction` for more information about `timeout` and its
        default value.

        `error` can be used to override the default error message.

        See also `Wait Until Page Contains`,
        `Wait Until Page Does Not Contain`
        `Wait Until Page Does Not Contain Element`
        and BuiltIn keyword `Wait Until Keyword Succeeds`.
        """
        if not error:
            error = "Element '%s' did not appear in <TIMEOUT>" % locator
        self._wait_until_atlas(timeout, error, self._is_element_present_atlas, locator, oAppiumInfo.driver)

    def aisappium_wait_until_page_does_not_contain_element_atlas(self, locator, oAppiumInfo=None, timeout=None, error=None):
        """Waits until element specified with `locator` disappears from current page.

        Fails if `timeout` expires before the element disappears. See
        `introduction` for more information about `timeout` and its
        default value.

        `error` can be used to override the default error message.

        See also `Wait Until Page Contains`,
        `Wait Until Page Does Not Contain`,
        `Wait Until Page Contains Element` and
        BuiltIn keyword `Wait Until Keyword Succeeds`.
        """

        def check_present():
            present = self._is_element_present_atlas(locator, oAppiumInfo.driver)
            if not present:
                return
            else:
                return error or "Element '%s' did not disappear in %s" % (locator, self._format_timeout(timeout))

        self._wait_until_no_error_atlas(timeout, check_present)

    # def aisappium_capture_element_screenshot(self, locator, filename=None, oAppiumInfo=None):
    #     path, link = self._get_screenshot_paths(filename)
    #     if oAppiumInfo is not None:
    #         driver = oAppiumInfo.driver
    #     else:
    #         driver = self._current_application()
    #
    #     context = self.get_current_context()
    #
    #     # WebElement appArea = wd.findElementByXPath("//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]");
    #     element = self._element_finder.find(driver, locator)

    def aisappium_local_capture_screenshot(self, sn, filename=None):
        """Takes a screenshot of the current page on local machine and embeds it into the log. (support android only)

                `sn` argument specifies the serial number of device to send command

                `filename` argument specifies the name of the file to write the
                screenshot into.

        """
        if not filename:
            self._screenshot_index += 1
            filename = 'appium-screenshot-' + str(sn) + '-%d.png' % self._screenshot_index


        path, link = self._get_screenshot_paths(filename)

        self._info(path)

        capture_command = "adb -s " + sn + " shell /system/bin/rm /data/local/tmp/screenshot.png; /system/bin/screencap " \
                                          "-p /data/local/tmp/screenshot.png"
        os.system(capture_command)

        path = "\"" + path + "\""

        pull_command = "adb.exe -s " + sn + " pull /data/local/tmp/screenshot.png " + path
        os.system(pull_command)

        self._html('</td></tr><tr><td colspan="3"><a href="%s">'
                   '<img src="%s" width="800px"></a>' % (link, link))


    def aisappium_capture_page_screenshot(self, filename=None, oAppiumInfo=None):
        """Takes a screenshot of the current page and embeds it into the log.

        `filename` argument specifies the name of the file to write the
        screenshot into. If no `filename` is given, the screenshot is saved into file
        `appium-screenshot-<counter>.png` under the directory where
        the Robot Framework log file is written into. The `filename` is
        also considered relative to the same directory, if it is not
        given in absolute format.

        `css` can be used to modify how the screenshot is taken. By default
        the bakground color is changed to avoid possible problems with
        background leaking when the page layout is somehow broken.
        """
        """
        if not os.path.exists(Capture_Screen_Appium):
            os.makedirs(Capture_Screen_Appium)
        file = "Capture_Screen_Appium\\"+filename"""
        path, link = self._get_screenshot_paths(filename)

        if oAppiumInfo is not None:
            driver = oAppiumInfo.driver
        else:
            driver = self._current_application()

        if hasattr(driver, 'get_screenshot_as_file'):
            driver.get_screenshot_as_file(path)
        else:
            driver.save_screenshot(path)

        # Image is shown on its own row and thus prev row is closed on purpose
        self._html('</td></tr><tr><td colspan="3"><a href="%s">'
                   '<img src="%s" width="800px"></a>' % (link, link))


    # def _get_screenshot_paths_atlas(self, filename):
    #     if not filename:
    #         self._screenshot_index += 1
    #         filename = 'appium-screenshot-%d.png' % self._screenshot_index
    #     else:
    #         filename = filename.replace('/', os.sep)
    #     logdir = self._get_log_dir()
    #     path = os.path.join(logdir, filename)
    #     link = robot.utils.get_link_path(path, logdir)
    #     return path, link


    def aisappium_capture_page_screenshot_at_verify_point(self, filename=None, oAppiumInfo=None):
        """Takes a screenshot of the current page and embeds it into the log.

        `filename` argument specifies the name of the file to write the
        screenshot into. If no `filename` is given, the screenshot is saved into file
        `appium-screenshot-<counter>.png` under the directory where
        the Robot Framework log file is written into. The `filename` is
        also considered relative to the same directory, if it is not
        given in absolute format.

        `css` can be used to modify how the screenshot is taken. By default
        the bakground color is changed to avoid possible problems with
        background leaking when the page layout is somehow broken.
        """
        path, link = self._get_screenshot_paths(filename)

        if oAppiumInfo is not None:
            driver = oAppiumInfo.driver
        else:
            driver = self._current_application()
        if hasattr(driver, 'get_screenshot_as_file'):
            driver.get_screenshot_as_file(path)
        else:
            driver.save_screenshot(path)

        # Image is shown on its own row and thus prev row is closed on purpose
        self._html('</td></tr><tr><td colspan="3"><a href="%s">'
                   '<img src="%s" width="800px"></a>' % (link, link))


    def aisappium_swipe(self, start_x, start_y, offset_x, offset_y, oAppiumInfo=None, duration=1000):
        """
        Swipe from one point to another point, for an optional duration.

        Args:
         - start_x - x-coordinate at which to start
         - start_y - y-coordinate at which to start
         - offset_x - x-coordinate distance from start_x at which to stop
         - offset_y - y-coordinate distance from start_y at which to stop
         - duration - (optional) time to take the swipe, in ms.

        Usage:
        | Swipe | 500 | 100 | 100 | 0 | 1000 |

        *!Important Note:* Android `Swipe` is not working properly, use ``offset_x`` and ``offset_y``
        as if these are destination points.
        """
        if oAppiumInfo is not None:
            driver = oAppiumInfo.driver
        else:
            driver = self._current_application()
        driver.swipe(start_x, start_y, offset_x, offset_y, duration)

    def aisappium_long_press(self, locator, oAppiumInfo=None, duration=2000):
        """ Long press the element """
        if oAppiumInfo is not None:
            driver = oAppiumInfo.driver
        else:
            driver = self._current_application()
        element = self._element_find(locator, True, True)
        long_press = TouchAction(driver).long_press(element, duration=duration)
        long_press.perform()

    # Private
    def _get_text_atlas(self, locator, Mdriver):
        element = self._element_find_atlas(locator, True, True, Mdriver)
        if element is not None:
            return element.text
        return None

    def _element_clear_text_by_locator_atlas(self, locator, Mdriver):
        try:
            element = self._element_find_atlas(locator, True, True, Mdriver)
            element.clear()
        except Exception, e:
            raise e

    def _element_input_text_by_locator_atlas(self, locator, text, Mdriver):
        try:
            element = self._element_find_atlas(locator, True, True, Mdriver)
            element.send_keys(text)
        except Exception, e:
            raise e

    def _element_input_value_by_locator_atlas(self, locator, text, Mdriver):
        try:
            element = self._element_find_atlas(locator, True, True, Mdriver)
            element.set_value(text)
        except Exception, e:
            raise e

    def _element_find_atlas(self, locator, first_only, required, Mdriver, tag=None):
        elements = self._element_finder.find(Mdriver, locator, tag)
        if required and len(elements) == 0:
            raise ValueError("Element locator '" + locator + "' did not match any elements.")
        if first_only:
            if len(elements) == 0: return None
            return elements[0]
        return elements

    def _is_element_present_atlas(self, locator, Mdriver):
        elements = self._element_finder.find(Mdriver, locator, None)
        return len(elements) > 0

    def _wait_until_atlas(self, timeout, error, function, *args):
        error = error.replace('<TIMEOUT>', self._format_timeout(timeout))

        def wait_func():
            return None if function(*args) else error

        self._wait_until_no_error(timeout, wait_func)

    def _wait_until_no_error_atlas(self, timeout, wait_func, *args):
        timeout = robot.utils.timestr_to_secs(timeout) if timeout is not None else self._timeout_in_secs
        maxtime = time.time() + timeout
        while True:
            timeout_error = wait_func(*args)
            if not timeout_error:
                return
            if time.time() > maxtime:
                self.log_source()
                raise AssertionError(timeout_error)
            time.sleep(0.2)