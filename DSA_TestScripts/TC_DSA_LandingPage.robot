#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- To Verify Landing page content and Functionality


*** Settings ***

Library         SeleniumLibrary
Library         Collections
Resource        ../KeyWords_Library/Generic_Keywords/GenericLibrary.robot
Resource        ../KeyWords_Library/DSA_Keywords/DSAFunctions.robot
Variables       ../DSA_InputDataStore/GenericData.py
Variables       ../DSA_InputDataStore/DSA_Data.py




*** Test Cases ***
Verify the Landing Page
    open the browser
    Verify the Title of the LandingPage
    Verify the Tabs in Landing Page







*** Keywords ***
Verify the Title of the LandingPage
    ${Title}=   Get the Window Title
    log     ${Title}
    Log     ${LandingPageTitle}
    RUN KEYWORD IF    '${Title}'== '${LandingPageTitle}'       LOG TO CONSOLE       WindowTitle_${Title}_ISMatched

Verify the Tabs in Landing Page
     ${ElementsCount}=       Get Count of ElementLocator        ${Xpath_LandingPageTabPath}
     @{TabNames}=      Get text of Tabs        ${ElementsCount}
     ${TbNam}      create list   @{TabNames}
     ${landingpageTb}     create list     @{LandingPageTabs}
     lists should be equal      ${TbNam}     ${landingpageTb}     msg= ${TbNam}_Is equal to list_${landingpageTb}