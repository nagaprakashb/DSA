#--------- Author : Nagaprakash Bhoomireddy ---------
#--------- To Verify Landing page content and Functionality


*** Settings ***
Library         SeleniumLibrary
Resource        ../KeyWords_Library/Generic_Keywords/GenericLibrary.robot
#Resource        ../KeyWords_Library/DSA_Keywords/DSAFunctions.robot
Variables       ../DSA_InputDataStore/GenericData.py
Variables       ../DSA_InputDataStore/DSA_Data.py

*** Test Cases ***
[Setup]     Open the Browser

Maximize the Browser Window
    maximize browser window

Enter Value into the Search Fields
    ${NumberOfDictDataSets}=    Get Number of Dictionary Sets inside a Dictionary Set       ${DriverSearch_Data}
     :FOR    ${DataSets}   IN RANGE    1   ${NumberOfDictDataSets}+1
     \  LOG TO CONSOLE  ${DataSets}
     \  EXIT FOR LOOP IF  ${NumberOfDictDataSets}<=0
     \  ${DataSet}=      Get Key Value from Dictionary   ${DriverSearch_Data}      ${DataSets}
     \  ${Dept}=        Get Key Value from Dictionary    ${DataSet}      DEPT
     \  Run keyword if  '${Dept}' != 'NULL'       INPUT TEXT      id= Department      ${Dept}
     ...                        ELSE    LOG TO CONSOLE   No Dept Provided
     \      sleep   3s
     \      PRESS KEY       id= Department        \\09
     \  ${SSN}=        Get Key Value from Dictionary    ${DataSet}      SSN
     \  run keyword if  '${SSN}' != 'NULL'       INPUT TEXT      id= socialSecurity      ${SSN}
     ...                      ELSE   LOG TO CONSOLE    NO SSN provided
     \  ${FN}=        Get Key Value from Dictionary    ${DataSet}      FN
     \  run keyword if  '${FN}' != 'NULL'       INPUT TEXT      id= firstName      ${FN}
     ...                      ELSE   LOG TO CONSOLE    NO FirstName provided
     \  ${LN}=        Get Key Value from Dictionary    ${DataSet}      LN
     \  run keyword if  '${LN}' != 'NULL'       INPUT TEXT      id= lastName      ${LN}
     ...                        ELSE    LOG TO CONSOLE   No LastName Provided
     \  ${JC}=        Get Key Value from Dictionary    ${DataSet}      JC
     \  run keyword if  '${JC}' != 'NULL'       select from list by value     id= jobCode      ${JC}
       ...                        ELSE    LOG TO CONSOLE   No JobCode Provided
     \  sleep   5s
     \  PRESS KEY       id= Department        \\09
     \  ${EMP#}=        Get Key Value from Dictionary    ${DataSet}      EMP#
     \  run keyword if  '${EMP#}' != 'NULL'       INPUT TEXT      name= employeeId     ${EMP#}
     ...                        ELSE    LOG TO CONSOLE   No Employee Number Provided
     \  ${DIV}=        Get Key Value from Dictionary    ${DataSet}      DIV
     \  run keyword if  '${DIV}' != 'NULL'       INPUT TEXT      id= division      ${DIV}
     ...                        ELSE    LOG TO CONSOLE   No Division Provided
     \  sleep   2s
     \  CLICK BUTTON     xpath=//*[@id="driverSearch"]
     \  sleep   20s
     \  CLICK BUTTON     xpath=//*[@ng-click ="clearData()"]