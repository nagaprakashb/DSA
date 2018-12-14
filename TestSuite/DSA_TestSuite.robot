
*** Settings ***

Library         SeleniumLibrary
Resource        ../KeyWords_Library/Generic_Keywords/GenericLibrary.robot
Resource        ../KeyWords_Library/DSA_Keywords/DSAFunctions.robot
Variables       ../DSA_InputDataStore/GenericData.py
Variables       ../DSA_InputDataStore/DSA_Data.py

*** Test Cases ***

Create Initial Results Folder
    Create the directory


Open the Browser for the URL
    Open the Browser for the URL
    LandingPage
    #Get Text Of the Menu


*** Keywords ***
#Create Results Folder
#    ${DtTm} =   Get Date&Time
#    #${ScrnFilePth}=     catenate  SEPARATOR=_   ../Result/DSA
#    create directory        ../DSA/Result/DSA${DtTm}
#    SeleniumLibrary.Set screenshot directory     ../DSA/Result/DSA${DtTm}

Open the Browser for the URL
    Open the Browser
    Delete all cookies
    maximize browser window


LandingPage
    Get the Window Title


Get Text Of the Menu
     ${ElementsCount}=       Get Count of ElementLocator        ${Xpath_LandingPageTabPath}
     @{TabNames}=      Get text of Tabs        ${ElementsCount}
     :FOR   ${tname}  IN     @{TabNames}
     \     log     ${tname}
    Get ElementName from DataSheet

