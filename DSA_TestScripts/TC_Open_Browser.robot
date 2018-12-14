#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- To open the Browser with Respective URL and Browser Opted.
*** Settings ***
Documentation   Opening the Browser for the provided URL
Library         SeleniumLibrary
Resource        ../KeyWords_Library/Generic_Keywords/GenericLibrary.robot
Variables       ../DSA_InputDataStore/GenericData.py
Variables       ../DSA_InputDataStore/DSA_Data.py




*** Test Cases ***

Open the DSA Site.
    Create the directory
    open the browser for given url





*** Keywords ***
Open the Browser for given URL
    Open the Browser
    Delete all cookies
    Maximize browser window