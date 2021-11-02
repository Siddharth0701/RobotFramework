*** Settings ***
Library   SeleniumLibrary



*** Variables ***



*** Test Cases ***
LoginTest

     open browser   https://my.dnb.com/login   chrome
     wait until element is visible     id:okta-signin-username         timeout=10
     input text  id:okta-signin-username   prodtest.ankitkabrawalaabc.defgh@gmail.com
     input text  id:okta-signin-password    $Testing5670
     click element  xpath://input[@id="okta-signin-submit"]
     close browser

*** Keywords ***
