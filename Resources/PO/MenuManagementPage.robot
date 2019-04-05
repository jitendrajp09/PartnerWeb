*** Settings ***
Library    SeleniumLibrary
Resource  ../GlobalVariables/Xpaths.robot
Resource  ../Resources/common.robot
*** Keywords ***
Click Menu Upload Button
    set focus to element  ${uploadButton}
    click element   ${uploadButton}
Click Menu Upload Icon
    set focus to element  ${UploadIcon}
    click element  ${UploadIcon}
Click Menu Close Icon
    set focus to element  ${CloseButton}
    click element   ${CloseButton}
Click Menu Preview Submit Button
    set focus to element  ${PreviewSubmit}
    click element  ${PreviewSubmit}
Upload a Menu
    [Arguments]  ${MenuFilePath}
    choose file  ${UploadFile}     ${MenuFilePath}
Click AddMenuItemIcon
    set focus to element    ${AddMenuItemIcon}
    click element  ${AddMenuItemIcon}

                            #Menu Item
Click Add Menu Item button
    set focus to element     ${AddMenuItemIcon}
    click element         ${AddMenuItemIcon}

Click Item Name
    set focus to element  ${Item Name}
    click element  ${Item Name}
Click Item Display Sequence
    set focus to element  ${Item Display Sequence}
    click element  ${Item Display Sequence}
Click Item Price
    set focus to element    ${ItemPrice}
    click element   ${ItemPrice}
Click Description
    set focus to element  ${Description}
    click element   ${Description}
Click Item Category
    set focus to element    ${ItemCategory}
    click element  ${ItemCategory}
Click Category Display Sequence
    set focus to element  ${Category Display Sequence}
    click element   ${Category Display Sequence}
Click Calories
    set focus to element    ${Calories}
    click element  ${Calories}
Click Ingredients
    set focus to element  ${Ingredients}
    click element   ${Ingredients}
Click Menu Type
    set focus to element    ${MenuType}
    click element   ${MenuType}
Click Classification
    set focus to element  ${Classification}
    click element   ${Classification}
Click In stock
    set focus to element    ${In stock}
    click element   ${In stock}
Click Menu Item Submit button
    set focus to element     ${MenuItemSubmit}
    click element    ${MenuItemSubmit}

Check if Submit Button In add menu item is Disabled
    element should be disabled  ${MenuItemSubmit}

Check if Submit Button In add menu item is Enabled
    element should be enabled  ${MenuItemSubmit}

Click background in menu item
    set focus to element     ${MenuBackgroundPath}
    click element    ${MenuBackgroundPath}



                    #lover boundary

Validate Item Name Under Lower boundary Condition
    Click background in menu item
    wait until page contains  Please enter an item name

Validate Item Display Sequence Under Lower boundary Condition
    Click background in menu item
    wait until page contains  Please enter a item sequence

Validate Item Price Under Lower boundary Condition
    Click background in menu item
    wait until page contains  Please enter a price

Validate Description Under Lower boundary Condition
    Click background in menu item

Validate Category Display Sequence Under Lower boundary Condition
    Click background in menu item
    wait until page contains  Please enter a category sequence

Validate Calories Under Lower boundary Condition
    Click background in menu item

Validate Ingredients Under Lower boundary Condition
    Click background in menu item


                        #upper boundary

Validate Item Name Under Upper boundary Condition
    Click background in menu item
    Upper boundary validation for fixed maxlength  ${ItemNameLBValidation}   20 / 20
    element attribute value should be  ${Item Name}  maxlength  20

Validate Item Display Sequence Under Upper boundary Condition
    Click background in menu item
    element should not contain  ${Item Display Sequence}  maxlength
    wait until page contains  Item Seq must be from 1 - 99

Validate Item Price Under Upper boundary Condition
    Click background in menu item
    element should not contain  ${ItemPrice}  maxlength
    wait until page contains  Price must be from 0 - 999.99

Validate Description Under Upper boundary Condition
    Click background in menu item
    Upper boundary validation for fixed maxlength  ${DescriptionLBValidation}   100 / 100
    element attribute value should be  ${Description}  maxlength  100

Validate Category Display Sequence Under Upper boundary Condition
    Click background in menu item
    element should not contain  ${Category Display Sequence}  maxlength
    wait until page contains  1-20

Validate Calories Under Upper boundary Condition
    Click background in menu item
    #element should contain  ${Calories}  length > 5

Validate Ingredients Under Upper boundary Condition
    Click background in menu item

                                    #mixed match

Validate Item Name Under mixed match Condition
    Click background in menu item


Validate Item Display Sequence Under mixed match Condition
    Click background in menu item


Validate Item Price Under mixed match Condition
    Click background in menu item


Validate Description Under mixed match Condition
    Click background in menu item

Validate Category Display Sequence Under mixed match Condition
    Click background in menu item


Validate Calories Under mixed match Condition
    Click background in menu item

Validate Ingredients Under mixed match Condition
    Click background in menu item
