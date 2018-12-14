*** Settings ***
Library     SeleniumLibrary
Library     Collections


#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- Open the Browser Keywords is used to open the Browser for the Given URL provided in Generic Data Sheet.
#--------- Change the Browser options or the URL accordingly to open the respective Browser and URL

*** Keywords ***

#--------- Get the Link Names ---------
Get text of Tabs
    [Arguments]  ${ElementCnt}
    @{ElementNames}=        create list
    :FOR    ${Element}      IN RANGE    ${ElementCnt}
    \   ${ElementName}=    get element attribute   //*[@class="navbar navbar-default"]//li//a[@ng-click="selectTab(${Element})"]      text
    \   Append to list    ${ElementNames}    ${ElementName}
   log list     ${ElementNames}
   [Return]     ${ElementNames}

