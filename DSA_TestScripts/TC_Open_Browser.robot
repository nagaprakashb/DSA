#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- To open the Browser with Respective URL and Browser Opted.
*** Settings ***
Library         SeleniumLibrary
Resource        ../Generic_Keywords/GenericLibrary.robot
Resource        ../DSA_Keywords/DSAFunctions.robot
Variables       ../DSA_InputDataStore/GenericData.py
Variables       ../DSA_InputDataStore/DSA_Data.py




*** Test Cases ***
Open the Browser for given URL
    Open the Browser
    maximize browser window

Get the Title of the Window
    Get the Window Title


Get Text Of the Menu
     ${ElementsCount}=       Get Count of ElementLocator        ${Xpath_LandingPageTabPath}
     @{TabNames}=      Get text of Tabs        ${ElementsCount}
     :FOR   ${tname}  IN     @{TabNames}
     \     log     ${tname}

Read LandingPage Tab Names from the DataSheet entered by User
    Get ElementName from DataSheet