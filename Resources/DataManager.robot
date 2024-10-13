*** Settings ***
Documentation  Reads data from external CSV file
Library  ../CustomLibs/Csv.py


*** Keywords ***
Get CSV Data
    [Arguments]  ${FilePath}
    ${Data} =  Read Data Fom Csv File  ${FilePath}
    RETURN  ${Data}
