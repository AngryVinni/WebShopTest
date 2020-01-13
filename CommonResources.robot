*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${MAIN URL}                     http://www.motivs.lv
${BROWSER}                      Chrome
${DELAY}                        0

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${MAIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Navigate To Prefered Category And Add Items
    Click Button   //button[@class="btn slide-menu__control"]
    Click Element   xpath://*[contains(text(),"Telefonu aksesuāri")]
    Click Element   xpath://*[contains(text(),"Power Bank")]
    Click Element   id:disp-order-sorter
    Click Element   xpath://*[@value="3d"]
    Click Element   //div[@id="productListing"]//div[@class="product_button"][1]
    Sleep  2s
    Click Element   //div[@class="modal-dialog"]//button[@class="btn btn-secondary btn-sm left"] 
    Click Element   //div[@id="productListing"]/child::div[2]//div[@class="product_button"][1]
    Sleep  2s
    Click Element   //div[@class="modal-dialog"]//button[@class="btn btn-secondary btn-sm left"]
    Click Element   //div[@id="headerWrapper"]//div[@class="row"]/child::div[3]