#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- Date   : 13th Nov 2018
#--------- Project: Driver Safety Application ---------



*** Settings ***
Library     SeleniumLibrary
Documentation       Generic Library, the keywords created in this library can be used by passing the parameter/without parameter and use them in different projects
#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- Open the Browser Keywords is used to open the Browser for the Given URL provided in Generic Data Sheet.
#--------- Change the Browser options or the URL accordingly to open the respective Browser and URL

*** Keywords ***
Open the Browser
    :FOR    ${Brow}  IN   @{Browser_Option}
    \  log     ${Brow}
    \   ${Browsr}   set variable    ${Brow}
    \  log     ${Browsr}
    \   ${BrowserVal}  set variable     &{Browser_Option}[${Brow}]
    \  log     ${Browsr}
    \  log     ${BrowserVal}
    \       RUN KEYWORD IF  '${BrowserVal}' == 'Y'     open browser   ${Url_Open}   ${Browsr}
    ...     ELSE        log to console      Browser is not enabled to test

#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- Get the title of the Active Window ---------

Get the Window Title
    ${Title}=   get title
    log     ${Title}

#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- Get the list of Values provided in the DataSheet

Get ElementName from DataSheet
    :FOR    ${MenuNames}    IN       @{LandingPageTabs}
    \   ${MenuName}     set variable        ${MenuNames}
    \   log     ${MenuName}


#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- Get the Count of specific Locators in a particular page.

Get Count of ElementLocator
    [Arguments]  ${Xpath_ElementPath}
    ${CountOfElements}=     get element count      ${Xpath_ElementPath}
    #${ElementCnt}   set variable        ${CountOfElements}
    [Return]    ${CountOfElements}

#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- Click on Certain Link in the page.
Click on the Link
    [Arguments]     ${LinkPath}
    click link      ${LinkPath}

