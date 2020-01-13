*** Settings ***

Force Tags          Shop
Resource            CommonResources.robot
Suite Setup         Open Browser To Login Page
Suite Teardown      Close Browser

*** Variables ***

${url}=    https://motivs.lv/aksesuari-mobilajiem-telefoniem/power-bank-portativie-akumulatori-ladetaji?sort=3d


*** Test Cases ***


Open
    Navigate To Prefered Category And Add Items
    

