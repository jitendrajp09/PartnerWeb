*** Settings ***
Documentation  This test scenario is to verify Login process using Facebook Preconditions: 1. valid email ID and password should be used for registration 2. Already registered email shouldn't be used again

Resource  ../Resources/common.robot
Resource  ../Resources/keywords.robot
Library  String
Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test
*** Test Cases ***
TC_FB_FB01

    [Tags]  a
    [Documentation]  This test case is to verify Login process using Facebook

    Navigate to landing page
    Go To  https://www.facebook.com/login.php?skip_api_login=1&api_key=1579563415420430&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fv2.11%2Fdialog%2Foauth%3Fchannel%3Dhttps%253A%252F%252Fstaticxx.facebook.com%252Fconnect%252Fxd_arbiter%252Fr%252Fvy-MhgbfL4v.js%253Fversion%253D44%2523cb%253Df21e4a73ac56474%2526domain%253Duat.partners.grabqpons.com%2526origin%253Dhttps%25253A%25252F%25252Fuat.partners.grabqpons.com%25252Ff364d8e13470f4%2526relation%253Dopener%26redirect_uri%3Dhttps%253A%252F%252Fstaticxx.facebook.com%252Fconnect%252Fxd_arbiter%252Fr%252Fvy-MhgbfL4v.js%253Fversion%253D44%2523cb%253Df368fec5cf378c%2526domain%253Duat.partners.grabqpons.com%2526origin%253Dhttps%25253A%25252F%25252Fuat.partners.grabqpons.com%25252Ff364d8e13470f4%2526relation%253Dopener%2526frame%253Df3feef587a96c9%26display%3Dpopup%26scope%3Demail%252Cpublic_profile%26response_type%3Dtoken%252Csigned_request%26domain%3Duat.partners.grabqpons.com%26origin%3D1%26client_id%3D1579563415420430%26ret%3Dlogin%26sdk%3Djoey%26fallback_redirect_uri%3Dhttps%253A%252F%252Fuat.partners.grabqpons.com%252Fpages%252Flogin%26logger_id%3D1296d3e7-89f6-5a6c-19b1-409755bfb538&cancel_url=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2Fvy-MhgbfL4v.js%3Fversion%3D44%23cb%3Df368fec5cf378c%26domain%3Duat.partners.grabqpons.com%26origin%3Dhttps%253A%252F%252Fuat.partners.grabqpons.com%252Ff364d8e13470f4%26relation%3Dopener%26frame%3Df3feef587a96c9%26error%3Daccess_denied%26error_code%3D200%26error_description%3DPermissions%2Berror%26error_reason%3Duser_denied%26e2e%3D%257B%257D&display=popup&locale=en_GB&logger_id=1296d3e7-89f6-5a6c-19b1-409755bfb538
    Keywords.Facebook Login

