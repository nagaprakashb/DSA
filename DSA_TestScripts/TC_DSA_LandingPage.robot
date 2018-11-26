#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- To Verify Landing page content and Functionality


*** Settings ***
Library         SeleniumLibrary
Resource        ../KeyWords_Library/Generic_Keywords/GenericLibrary.robot
Resource        ../KeyWords_Library/DSA_Keywords/DSAFunctions.robot
Variables       ../DSA_InputDataStore/GenericData.py
Variables       ../DSA_InputDataStore/DSA_Data.py




*** Test Cases ***
Get Text Of the Menu
     ${ElementsCount}=       Get Count of ElementLocator        ${Xpath_LandingPageTabPath}
     @{TabNames}=      Get text of Tabs        ${ElementsCount}
     :FOR   ${tname}  IN     @{TabNames}
     \     log     ${tname}

Read LandingPage Tab Names from the DataSheet entered by User
    Get ElementName from DataSheet