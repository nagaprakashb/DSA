#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- To verify the SafeMilesBonus using Run Bonuses tab.


*** Settings ***
Library         SeleniumLibrary
Library         Screenshot
Resource        ../KeyWords_Library/Generic_Keywords/GenericLibrary.robot
#Resource        ../KeyWords_Library/DSA_Keywords/DSAFunctions.robot
Variables       ../DSA_InputDataStore/GenericData.py
Variables       ../DSA_InputDataStore/DSA_Data.py


#---------
*** Test Cases ***
[Setup]        Open the Browser

Maximize the Browser Window
    MAXIMIZE BROWSER WINDOW
    sleep   5s

Run keyword if          variable should exist   ${Xpath_BonusesTab}    Click on the Bonuses tab in DSA
    click link      ${Xpath_BonusesTab}
    sleep   5s
    capture page screenshot

Run keyword if          variable should exist       ${Xpath_RunBonusesTab}      Click on Run Bonuses tab in Bonuses Section
    click link      ${Xpath_RunBonusesTab}
    sleep   5s
    capture page screenshot


