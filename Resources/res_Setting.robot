*** Variables ***
${menu_setting}                 xpath://body[1]/header[1]/ul[1]/li[2]/a[1]
${toggle_checkIn}               xpath://body[1]/ul[1]/li[2]/section[1]/ul[1]/li[1]/ul[1]/li[2]/a[1]/span[1]/strong[1]
${toggle_temperature}           xpath://body[1]/ul[1]/li[2]/section[1]/ul[1]/li[2]/ul[1]/li[2]/a[1]/span[1]/strong[1]
${btn_gnrtQR}                   xpath://a[contains(text(),'GENERATE')]
${btn_dwnldTable}               xpath://body/ul[1]/li[2]/section[1]/ul[1]/li[4]/ul[1]/li[2]/a[1]
${btn_dwnldSpPartner}           xpath://body/ul[1]/li[2]/section[1]/ul[1]/li[5]/ul[1]/li[2]/a[1]
${file_qrCode}                  checkin-
${file_standee}                 standee-
${idFile}                       6ee5e1096e4ec02004ae50cf7f0abc8d.pdf
${dir_dwnld}                    /Users/machruk/Downloads/
${qrCode_Text}                  Scan QR Code with the Spurr mobile app to check-in
${playstoreURL}                 https://play.google.com/store/apps/details?id=biz.shopiq.spurr.scanner
${containURL}                   Spurr Partners
${btn_install}                  xpath://button[contains(text(),'Install')]
${ChckInToggle_off}             xpath://body[1]/ul[1]/li[2]/section[1]/ul[1]/li[1]/ul[1]/li[2]/a[@class='as-switch checkin']
${ChckInToggle_on}              xpath://body[1]/ul[1]/li[2]/section[1]/ul[1]/li[1]/ul[1]/li[2]/a[@class='as-switch checkin is-on']
${TemperatureToggle_off}        xpath://body[1]/ul[1]/li[2]/section[1]/ul[1]/li[2]/ul[1]/li[2]/a[@class='as-switch checkin-temp']
${TemperatureToggle_on}         xpath://body[1]/ul[1]/li[2]/section[1]/ul[1]/li[2]/ul[1]/li[2]/a[@class='as-switch checkin-temp is-on']

*** Keywords ***
Go to Setting Menu
    Open GoSpurr.com
    wait until element is enabled               ${menu_setting}                 ${delay}
    click element                               ${menu_setting}
    wait until page contains element            ${btn_gnrtQR}                   ${delay}
    Waiting to Load
Activate Spurr Check-In
    wait until element is enabled               ${toggle_checkIn}               ${delay}
    click element                               ${toggle_checkIn}
    page should contain element                 ${ChckInToggle_on}
    sleep                                       1
    click element                               ${toggle_checkIn}
    page should contain element                 ${ChckInToggle_off}
    log to console                              Check-In Toggle is working properly


Activate Check-In Temperature
    wait until element is enabled               ${toggle_temperature}           ${delay}
    click element                               ${toggle_temperature}
    page should contain element                 ${TemperatureToggle_on}
    sleep                                       1
    click element                               ${toggle_temperature}
    page should contain element                 ${TemperatureToggle_off}
    log to console                              Temperature Toggle is working properly
Generate Check-In QR Code
    remove file                                 ${dir_dwnld}${file_qrCode}${idFile}
    file should not exist                       ${dir_dwnld}${file_qrCode}${idFile}
    log to console                              existing file was successfully deleted
    wait until element is enabled               ${btn_gnrtQR}                   ${delay}
    click element                               ${btn_gnrtQR}
    sleep                                       3
    file should exist                           ${dir_dwnld}${file_qrCode}${idFile}
    Log To Console                              QR Code was successfully downloaded
    Open PDF                                    ${dir_dwnld}${file_qrCode}${idFile}
    sleep                                       3
Download Table Standee
    remove file                                 ${dir_dwnld}${file_standee}${idFile}
    file should not exist                       ${dir_dwnld}${file_standee}${idFile}
    log to console                              existing file was successfully deleted
    wait until element is enabled               ${btn_dwnldTable}                   ${delay}
    click element                               ${btn_dwnldTable}
    sleep                                       3
    file should exist                           ${dir_dwnld}${file_standee}${idFile}
    Log To Console                              Table Standee was successfully downloaded
Download Spurr Partner Apps
    wait until element is enabled               ${btn_dwnldSpPartner}           ${delay}
    click element                               ${btn_dwnldSpPartner}
    sleep                                       2
    location should be                          ${playstoreURL}
    log to console                              User was successfully redirected to the playstore page
    page should contain                         ${containURL}
    page should contain element                 ${btn_install}