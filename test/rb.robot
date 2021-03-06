# # -*- coding: utf-8 -*-
# '''
# Created on 2020/12/20

# @author: ZL Chen
# @title: Robot Framework
# '''

# *** Settings ***
# Documentation     A test suite with a single test for valid login.
# ...
# ...               This test has a workflow that is created using keywords in
# ...               the imported resource file.
# Resource          resource.txt

# *** Test Cases ***
# Valid Login
#     Open Browser To Login Page
#     Input Username    demo
#     Input Password    mode
#     Submit Credentials
#     Welcome Page Should Be Open
#     [Teardown]    Close Browser

*** Settings ***
Library         SeleniumLibrary

*** Test Cases ***
testcase
    log  robot  framework
    Open  Browser  http://www.baidu.com  Chrome
    Input   Text    id = kw robot framework
    Click   Button  id = su
    Close   Browser