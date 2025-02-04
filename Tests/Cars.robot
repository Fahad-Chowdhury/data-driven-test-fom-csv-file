*** Settings ***
Documentation  Data-driven testing
Resource  ../Data/InputData.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/CarsApp.robot
Resource  ../Resources/DataManager.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d results tests/Cars.robot

*** Variables ***

*** Test Cases ***
Correct error messages should be displayed with invalid logins
    ${InvalidLoginScenarios} =  DataManager.Get CSV Data  ${INVALID_CREDENTIALS_PATH_CSV}
    CarsApp.Login with Many Invalid Credentials  ${InvalidLoginScenarios}
