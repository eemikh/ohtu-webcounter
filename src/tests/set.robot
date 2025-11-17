*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When value is set after reset value is set
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Input Text  value  10
    Click Button  Aseta arvo
    Page Should Contain  nappia painettu 10 kertaa

When value is set value is set
    Go To  ${HOME_URL}
    Input Text  value  19
    Click Button  Aseta arvo
    Page Should Contain  nappia painettu 19 kertaa
