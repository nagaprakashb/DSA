#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- Date   : 13th Nov 2018
#--------- Project: Driver Safety Application ---------

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------

*** Settings ***
Library     SeleniumLibrary
Library     DateTime
Library     OperatingSystem

Documentation       Generic Library, the keywords created in this library can be used by passing the parameter/without parameter and use them in different projects
#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- Open the Browser Keywords is used to open the Browser for the Given URL provided in Generic Data Sheet.
#--------- Change the Browser options or the URL accordingly to open the respective Browser and URL
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------
*** Keywords ***
#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- To get Date and Time  ---------

Get Date&Time
    ${DateTime}=  Get Current Date  result_format= %Y_%m_%d-%H_%M_%S
    ${Time}=    get time                  hour min sec
    [Return]    ${DateTime}


    #--------- Author : Nagaprakash Bhoomireddy ---------
#--------- To create directory  ---------

Create the directory
  ${DtTm} =   Get Date&Time
  create directory  ../DSA/Result/DSA${DtTm}
  SeleniumLibrary.Set screenshot directory     ../DSA/Result/DSA${DtTm}



#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- Open the Browser for the Given URL of selected Browser ---------
Open the Browser
    ${DateTime}=  Get Date&Time
    :FOR    ${Brow}  IN   @{Browser_Option}
    \  log     ${Brow}
    \   ${BrowserVal}  set variable     &{Browser_Option}[${Brow}]
    \  log     ${BrowserVal}
    \           RUN KEYWORD IF  '${BrowserVal}'== 'Y'
    ...         RUN KEYWORDS
    ...         open browser    ${Url_Open}   ${Brow}
    ...         AND
    ...         capture page screenshot     ${Brow}_BrowserOpenedSuccessfully.png
    ...         ELSE
    ...         LOG TO CONSOLE      ${Brow}_BrowserIsNotSetToOpen



#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- Get the title of the Active Window ---------

Get the Window Title
    ${Title}=   get title
    [Return]    ${Title}

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

#