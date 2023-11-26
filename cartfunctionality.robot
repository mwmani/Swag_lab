*** Variables ***
#cart page xpaths
${cart_option_locator}                          xpath=//div[@id='shopping_cart_container']
${cart_continue_locator}                        xpath=//button[@id='continue-shopping']
${cart_checkout_locator}                        xpath=//button[@id='checkout']
${backpack_add_to_cart_locator}                 xpath=//button[@id='add-to-cart-sauce-labs-backpack']
${backlight_add_to_cart_locator}                xpath=//button[@id='add-to-cart-sauce-labs-bike-light']
${bolt_tshirt_add_to_cart_locator}              xpath=//button[@id='add-to-cart-sauce-labs-bolt-t-shirt']
${fleece_add_to_cart_locator}                   xpath=//button[@id='add-to-cart-sauce-labs-fleece-jacket']
${onesie_add_to_cart_locator}                   xpath=//button[@id='add-to-cart-sauce-labs-onesie']
${allthings_add_to_cart_locator}                xpath=//button[@id='add-to-cart-test.allthethings()-t-shirt-(red)']
${backpack_remove_from_cart_locator}            xpath=//button[@id='remove-sauce-labs-backpack']
${backlight_remove_from_cart_locator}           xpath=//button[@id='remove-sauce-labs-bike-light']
${bolt_tshirt_remove_from_cart_locator}         xpath=//button[@id='remove-sauce-labs-bolt-t-shirt']
${fleece_remove_from_cart_locator}              xpath=//button[@id='remove-sauce-labs-fleece-jacket']
${onesie_remove_from_cart_locator}              xpath=//button[@id='remove-sauce-labs-onesie']
${allthings_remove_from_cart_locator}           xpath=//button[@id='remove-test.allthethings()-t-shirt-(red)']
${checkout_btn_locator}                         id=checkout
${firstname_text_locator}                       id=first-name
${lastname_text_locator}                        id=last-name
${postalcode_text_locator}                      id=postal-code
${continue_btn_locator}                         xpath=//*[@id="continue"]
${cancel_btn_locator}                           id=cancel