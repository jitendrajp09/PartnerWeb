*** Variables ***
                                ####  Top Nav Xpaths  ###
${RegisterButtonPath}   xpath=/html/body/app-my-app/app-layout/nav/div/div[2]/ul/li[2]/a
${LoginButtonPath}  xpath=/html/body/app-my-app/app-layout/nav/div/div[2]/ul/li[3]
${ForgotPasswordBottonPath}  xpath=/html/body/app-my-app/app-layout/nav/div/div[2]/ul/li[1]
                                ### User Registration Xpaths ###
${RegisterEmailPath}         //input[contains(@formcontrolname,"email")]
${RegisterEmailValidPath}    //*[@id="mat-error-2"]
${RegisterEmailValid2Path}   //*[@id="mat-error-3"]
${RegisterPhonePath}         //input[contains(@formcontrolname,"mobileNumber")]
${RegisterPhoneValidPath}  //*[@id="mat-error-3"]
${RegisterPhoneValid2Path}
${RegisterCountryCodePath}  //mat-select[contains(@formcontrolname,"countryCode")]
${Register+1}               //div/mat-option/span[contains(text()," +1 ")]
${Register+91}              //div/mat-option/span[contains(text()," +91 ")]
${Register+44}              //*[@id="mat-option-878"]/span
${Register+33}              //*[@id="mat-option-879"]/span
${RegisterPasswordPath}         //input[contains(@formcontrolname,"password")]
${RegisterPasswordValidPath}  //*[@id="mat-error-4"]
${RegisterPasswordValid2Path}  //*[@id="mat-error-6"]
${RegisterGet Started ButtonPath}      //button[contains(@type,"submit")]
${RegisterBackgroundPath}  xpath=/html/body/app-my-app/app-layout/app-register-cmp/div/div/div
                                ####  LOGIN Xpaths  ###
${LoginEmailPath}   //input[contains(@type,"email")]
${LoginPasswordPath}   //input[contains(@type,"password")]
${LoginLetsGoPath}  //div[@class='card-footer justify-content-center']//button
${Login_EmailValid1}
${Login_EmailValid2}
${Login_PasswordValid1}


                               ####  BUSINESS INFO Xpaths  ###
${BusinessPageValid}         //*[@id="BusinessInfoFormlink"]/div/div/div/div/div[1]/h4
${BackgroundPath}            //*[@id="BusinessInfoFormlink"]
${LegalNamePath}             //input[contains(@formcontrolname,"Name")]
${ShortNamePath}             //input[contains(@formcontrolname,"ShortName")]
${AddressPath}               //input[contains(@formcontrolname,"Address")]
${CityPath}                  //input[contains(@formcontrolname,"City")]
${StatePath}                 //input[contains(@formcontrolname,"State")]
${PostalCodePath}            //input[contains(@formcontrolname,"Postal")]
${CountryPath}               //input[contains(@formcontrolname,"Country")]
${WorkPhoneCountryCodePath}  //mat-select[contains(@formcontrolname,"countryCode")]
${+1}                        //div/mat-option/span[contains(text()," +1 ")]
${+91}                       //div/mat-option/span[contains(text()," +91 ")]
${+44}                       //div/mat-option/span[contains(text()," +44 ")]
${+33}                       //div/mat-option/span[contains(text()," +33 ")]
${WorkPhonePath}             //input[contains(@formcontrolname,"Phone_Work")]
${BusinessEmailPath}        //
${WebsitePath}              //input[contains(@formcontrolname,"Website")]
${CategoryPath}             //mat-select[contains(@placeholder,"Category")]
${Food&DrinkPath}           //mat-option/span[contains(text()," Food & Drink ")]
${Health&SpasPath}          //mat-option/span[contains(text()," Health & Spas ")]
${AutomativePath}           //mat-option/span[contains(text()," Automotive ")]
${SubCategoryPath}          //mat-select[contains(@placeholder,"Sub Category")]
${RestaurantPath}           //mat-option/span[contains(text()," Restaurants ")]
${CafesPath}                //mat-option/span[contains(text()," Cafes ")]
${BarsPath}                 //mat-option/span[contains(text()," Bars ")]
${GroceriesPath}            //mat-option/span[contains(text()," Groceries ")]
${BakeriesPath}             //mat-option/span[contains(text()," Bakeries ")]
${PastriesPath}             //mat-option/span[contains(text()," Pastries ")]
${SalonsPath}               //mat-option/span[contains(text()," Salons ")]
${HairCarePath}             //mat-option/span[contains(text()," Hair Care ")]
${SpasPath}                 //mat-option/span[contains(text()," Spas ")]
${GymsPath}                 //mat-option/span[contains(text()," Gyms ")]
${NailsPath}                //mat-option/span[contains(text()," Nails ")]
${MassagesPath}             //mat-option/span[contains(text()," Massages ")]
${ServicesPath}             //mat-option/span[contains(text()," Services ")]
${CleaningPath}             //mat-option/span[contains(text()," Cleaning ")]
${ParkingPath}              //mat-option/span[contains(text()," Parking ")]
${TypePath}                 //mat-select[contains(@placeholder,"Type")]
${IndianTypePath}           //mat-option/span[contains(text()," Indian ")]
${ChineseTypePath}          //mat-option/span[contains(text()," Chinese ")]
${ItalianTypePath}          //mat-option/span[contains(text()," Italian ")]
${AmericanTypePath}         //mat-option/span[contains(text()," American ")]
${MexicanTypePath}          //mat-option/span[contains(text()," Mexican ")]
${MediterraneanTypePath}    //mat-option/span[contains(text()," Mediterranean ")]
${KoreanTypePath}           //mat-option/span[contains(text()," Indian ")]
${MalaysianTypePath}        //mat-option/span[contains(text()," Indian ")]
${JapaneseTypePath}         //mat-option/span[contains(text()," Indian ")]
${EuropeanTypePath}         //mat-option/span[contains(text()," Indian ")]
${FrenchTypePath}           //mat-option/span[contains(text()," Indian ")]
${AustralianTypePath}       //mat-option/span[contains(text()," Indian ")]
${VietnameseTypePath}       //mat-option/span[contains(text()," Indian ")]
${ThaiTypePath}             //mat-option/span[contains(text()," Indian ")]
${MiddleEasternTypePath}    //mat-option/span[contains(text()," Indian ")]
${GreekTypePath}            //mat-option/span[contains(text()," Indian ")]
${SpanishTypePath}          //mat-option/span[contains(text()," Indian ")]
${OthersTypePath}           //mat-option/span[contains(text()," Indian ")]
${AveragePath}              //mat-select[contains(@placeholder,"Average Prep. Time")]
${15MinPath}                //mat-option/span[contains(text()," 15 Minutes ")]
${30MinPath}                //mat-option/span[contains(text()," 30 Minutes ")]
${45MinPath}                //mat-option/span[contains(text()," 45 Minutes ")]
${60MinPath}                //mat-option/span[contains(text()," 60 Minutes ")]
${90MinPath}                //mat-option/span[contains(text()," 90 Minutes ")]
${TagsPath}                 //*[@id="business-tags"]
${trail}                    //*[@id="BusinessInfoFormlink"]/div/div/div/div/div[2]/form/div[4]/div/div/label
${AfghaniPath}                     //mat-option/span[contains(text()," Afghani ")]
${AfricanPath}                     //mat-option/span[contains(text()," African ")]
${AlbanianPath}                    //mat-option/span[contains(text()," Albanian ")]
${AmericanPath}                    //mat-option/span[contains(text()," American ")]
${ArabicPath}                      //mat-option/span[contains(text()," Arabic ")]
${ArgentinianPath}                 //mat-option/span[contains(text()," Argentinian ")]
${ArmenianPath}                    //mat-option/span[contains(text()," Armenian ")]
${AsianPath}                       //mat-option/span[contains(text()," Asian ")]
${AustralianPath}                  //mat-option/span[contains(text()," Australian ")]
${AustrianPath}                    //mat-option/span[contains(text()," Austrian ")]
${BakeryPath}                      //mat-option/span[contains(text()," Bakery ")]
${BangladeshiPath}                 //mat-option/span[contains(text()," Bangladeshi ")]
${BarPath}                         //mat-option/span[contains(text()," Bar ")]
${BarbecuePath}                    //mat-option/span[contains(text()," Barbecue ")]
${BasquePath}                      //span[@class="mat-option-text"][15]
${BelgianPath}                     //span[@class="mat-option-text"][16]
${BrazilianPath}                   //span[@class="mat-option-text"][17]
${BreakfastPath}                   //span[@class="mat-option-text"][18]
${BrewPubPath}                     //mat-option/span[contains(text()," Brew Pub ")]
${BritishPath}                     //span[@class="mat-option-text"][20]
${BurmesePath}                     //span[@class="mat-option-text"][21]
${BrunchPath}                      //span[@class="mat-option-text"][22]
${BubbleTeaPath}                   //span[@class="mat-option-text"][23]
${BuffetsPath}                     //span[@class="mat-option-text"][24]
${BuffaloWingsPath}                //span[@class="mat-option-text"][25]
${BurgersPath}                     //span[@class="mat-option-text"][26]
${CafesPath}                       //span[@class="mat-option-text"][27]
${Cajun&CreolePath}                //span[@class="mat-option-text"][28]
${CakesPath}                       //span[@class="mat-option-text"][29]
${CambodianPath}                   //span[@class="mat-option-text"][30]
${CanadianPath}                    //span[@class="mat-option-text"][31]
${CantonesePath}                   //span[@class="mat-option-text"][32]
${CaribbeanPath}                   //span[@class="mat-option-text"][33]
${CasualDiningPath}                //span[@class="mat-option-text"][34]
${CentralAmericanPath}             //span[@class="mat-option-text"][35]
${CentralAsianPath}                //span[@class="mat-option-text"][36]
${CentralEuropeanPath}             //span[@class="mat-option-text"][37]
${ChickenWingsPath}                //span[@class="mat-option-text"][38]
${ChileanPath}                     //span[@class="mat-option-text"][39]
${ChinesePath}                     //span[@class="mat-option-text"][40]
${ColombianPath}                   //span[@class="mat-option-text"][41]
${ContemporaryPath}                //span[@class="mat-option-text"][42]
${CroatianPath}                    //span[@class="mat-option-text"][43]
${CubanPath}                       //span[@class="mat-option-text"][44]
${CzechPath}                       //span[@class="mat-option-text"][45]
${CateringPath}                    //span[@class="mat-option-text"][46]
${DanishPath}                      //span[@class="mat-option-text"][47]
${DeliPath}                        //span[@class="mat-option-text"][48]
${DessertsPath}                    //span[@class="mat-option-text"][49]
${DineInPath}                      //span[@class="mat-option-text"][50]
${DumplingsPath}                   //span[@class="mat-option-text"][51]
${EasternEuropeanPath}             //span[@class="mat-option-text"][52]
${EcuadoreanPath}                  //span[@class="mat-option-text"][53]
${EgyptianPath}                    //span[@class="mat-option-text"][54]
${EthiopianPath}                   //span[@class="mat-option-text"][55]
${EuropeanPath}                    //span[@class="mat-option-text"][56]
${FastFoodsPath}                   //span[@class="mat-option-text"][57]
${FoodTruckPath}                   //span[@class="mat-option-text"][58]
${FrenchPath}                      //span[@class="mat-option-text"][59]
${FusionPath}                      //span[@class="mat-option-text"][60]
${FoodatWorkPath}                  //span[@class="mat-option-text"][61]
${GastropubPath}                   //span[@class="mat-option-text"][62]
${GeorgianPath}                    //span[@class="mat-option-text"][63]
${GermanPath}                      //span[@class="mat-option-text"][64]
${GlutenFreePath}                  //span[@class="mat-option-text"][65]
${GreekPath}                       //span[@class="mat-option-text"][66]
${GrillPath}                       //span[@class="mat-option-text"][67]
${GroceriesPath}                   //span[@class="mat-option-text"][68]
${HalemPath}                       //span[@class="mat-option-text"][69]
${HawaiianPath}                    //span[@class="mat-option-text"][70]
${HealthyFoodPath}                 //span[@class="mat-option-text"][71]
${HongKongPath}                    //span[@class="mat-option-text"][72]
${HotBeveragesPath}                //span[@class="mat-option-text"][73]
${HotDogsPath}                     //span[@class="mat-option-text"][74]
${HungarianPath}                   //span[@class="mat-option-text"][75]
${IceCreamsPath}                   //span[@class="mat-option-text"][76]
${IndianPath}                      //span[@class="mat-option-text"][77]
${IndonesianPath}                  //span[@class="mat-option-text"][78]
${InternationalPath}               //span[@class="mat-option-text"][79]
${IrishPath}                       //span[@class="mat-option-text"][80]
${IsraeliPath}                     //span[@class="mat-option-text"][81]
${ItalianPath}                     //span[@class="mat-option-text"][82]
${JamaicanPath}                    //span[@class="mat-option-text"][83]
${JapanesePath}                    //span[@class="mat-option-text"][84]
${KebabPath}                       //span[@class="mat-option-text"][85]
${KoreanPath}                      //span[@class="mat-option-text"][86]
${KosherPath}                      //span[@class="mat-option-text"][87]
${LatinPath}                       //span[@class="mat-option-text"][88]
${LebanesePath}                    //span[@class="mat-option-text"][89]
${MalaysianPath}                   //span[@class="mat-option-text"][90]
${MediterraneanPath}               //span[@class="mat-option-text"][91]
${MexicanPath}                     //span[@class="mat-option-text"][92]
${MiddleEasternPath}               //span[@class="mat-option-text"][93]
${MinorityChinesePath}             //span[@class="mat-option-text"][94]
${MoroccanPath}                    //span[@class="mat-option-text"][95]
${MealsPath}                       //span[@class="mat-option-text"][96]
${NativeAmericanPath}              //span[@class="mat-option-text"][97]
${NepalesePath}                    //span[@class="mat-option-text"][98]
${NewZealandPath}                  //span[@class="mat-option-text"][99]
${Nonya/MalaysianPath}             //span[@class="mat-option-text"][100]
${NorthWesternChinesePath}         //span[@class="mat-option-text"][101]
${NorwegianPath}                   //span[@class="mat-option-text"][102]
${otherPath}                       //span[@class="mat-option-text"][103]
${OfficeLunchServicesPath}         //span[@class="mat-option-text"][104]
${PakistaniPath}                   //span[@class="mat-option-text"][105]
${PersianPath}                     //span[@class="mat-option-text"][106]
${PeruvianPath}                    //span[@class="mat-option-text"][107]
${PhilippinePath}                  //span[@class="mat-option-text"][108]
${PizzaPath}                       //span[@class="mat-option-text"][109]
${PolishPath}                      //span[@class="mat-option-text"][110]
${PolynesianPath}                  //span[@class="mat-option-text"][111]
${PortuguesePath}                  //span[@class="mat-option-text"][112]
${PubPath}                         //span[@class="mat-option-text"][113]
${PuertoRicanPath}                 //span[@class="mat-option-text"][114]
${QuickServicePath}                //span[@class="mat-option-text"][115]
${RamenPath}                       //span[@class="mat-option-text"][116]
${RomanianPath}                    //span[@class="mat-option-text"][117]
${RussianPath}                     //span[@class="mat-option-text"][118]
${SaladsPath}                      //span[@class="mat-option-text"][119]
${SalvadoranPath}                  //span[@class="mat-option-text"][120]
${SandwitchesPath}                 //span[@class="mat-option-text"][121]
${ScandinavianPath}                //span[@class="mat-option-text"][122]
${ScottishPath}                    //span[@class="mat-option-text"][123]
${seafoodPath}                     //span[@class="mat-option-text"][124]
${ShanghaiPath}                    //span[@class="mat-option-text"][125]
${SingaporeanPath}                 //span[@class="mat-option-text"][126]
${SoupPath}                        //span[@class="mat-option-text"][127]
${SouthAmericanPath}               //span[@class="mat-option-text"][128]
${SoutheastAsianPath}              //span[@class="mat-option-text"][129]
${SouthWesternPath}                //span[@class="mat-option-text"][130]
${Spanish}                         //span[@class="mat-option-text"][131]
${SriLankanPath}                   //span[@class="mat-option-text"][132]
${SteakPath}                       //span[@class="mat-option-text"][133]
${SteakhousePath}                  //span[@class="mat-option-text"][134]
${StreetFoodPath}                  //span[@class="mat-option-text"][135]
${SushiPath}                       //span[@class="mat-option-text"][136]
${SwedishPath}                     //span[@class="mat-option-text"][137]
${SwissPath}                       //span[@class="mat-option-text"][138]
${SzechuanPath}                    //span[@class="mat-option-text"][139]
${TaiwanesePath}                   //span[@class="mat-option-text"][140]
${TakeawayPath}                    //span[@class="mat-option-text"][141]
${TandooriPath}                    //span[@class="mat-option-text"][142]
${TapasPath}                       //span[@class="mat-option-text"][143]
${ThaiPath}                        //span[@class="mat-option-text"][144]
${TibetanPath}                     //span[@class="mat-option-text"][145]
${TunisianPath}                    //span[@class="mat-option-text"][146]
${TurkishPath}                     //span[@class="mat-option-text"][147]
${UkrainianPath}                   //span[@class="mat-option-text"][148]
${UzbekPath}                       //span[@class="mat-option-text"][149]
${VeganPath}                       //span[@class="mat-option-text"][150]
${VegetarianPath}                  //span[@class="mat-option-text"][151]
${VenezuelanPath}                  //span[@class="mat-option-text"][152]
${VietnamesePath}                  //span[@class="mat-option-text"][153]
${WineBarPath}                     //span[@class="mat-option-text"][154]
${WrapsPath}                       //span[@class="mat-option-text"][155]
${SalesTaxPath}                    //input[contains(@formcontrolname,"DefaultTax")]
${TotalTablesPath}                 //input[contains(@formcontrolname,"tablesCount")]
${TotalOccupancyPath}              //input[contains(@formcontrolname,"seatingCapacity")]
${BusinessSubmitPath}              //*[@id="BusinessInfoFormlink"]/div/div/div/div/div[2]/form/button



                    ####  SIDE TABS  ####
${Expansion Pannel}             //*[@href="#collapseExample"]
${DashBoard}                    //*[@href="/dashboard"]/p[1]
${Info&HoursPath}               //*[@href="/business/:true"]
${Uploads&Delivary}             //*[@href="/uploads-delivery"]/p[1]
${Menu Management}              //*[@href="/menu"]/p[1]
${Archived Orders}              //*[@href="/order-details"]/p[1]
${Subscription Renewal}         //*[@href="/subscription-renewal"]/p[1]
${Lock Screen}                  //*[@href="/pages/lock"]/p[1]
${Office Delivary}              //a[@href='#FoodDeliverylink']
${UploadsPage}                  //a[@href='#Uplodeslink']




                    ####  USER INFO  ####
${Profile Button}               //a[@href="/profile"]
${ProfileFirstName}             //input[contains(@formcontrolname,"firstName")]
${ProfileLastName}              //input[contains(@formcontrolname,"lastName")]
${ProfileEmail}                 //input[contains(@formcontrolname,"email")]
${ProfilePhoneCountryCode}      //mat-select[contains(@formcontrolname,"countryCode")]
${ProfilePhone}                 //input[contains(@formcontrolname,"phone_cell")]
${ProfileSubmitButton}          //button[contains(@type,"submit")]
${Change Password Button}       //a[@href="/change-password"]
${OldPassword}                  //input[contains(@formcontrolname,"oldpassword")]
${NewPasswordPath}                  //input[contains(@formcontrolname,"newpassword")]
${ConfirmNewPasswordPath}           //input[contains(@formcontrolname,"confirmpass")]
${ChangePasswordSubmitButton}   //button[contains(@type,"submit")]


                    ####  Subscription Page Xpaths  ####
${MINI}     xpath=/html/body/app-my-app/app-layout/div/div[2]/app-subscription-renewal/div/div/div/div/div[1]/div/div[2]/button
${BASIC}    xpath=/html/body/app-my-app/app-layout/div/div[2]/app-subscription-renewal/div/div/div/div/div[2]/div/div[2]/button
${STD}      xpath=/html/body/app-my-app/app-layout/div/div[2]/app-subscription-renewal/div/div/div/div/div[3]/div/div[2]/button
${PRM}      xpath=/html/body/app-my-app/app-layout/div/div[2]/app-subscription-renewal/div/div/div/div/div[4]/div/div[2]/button
${BussinessNext}    id=next-btn
${PaymentCheckbox}      xpath=//*[@id="billingdetails"]/div[5]/div/div/label/span/span
${SubscriptionLastNamePath}  //input[contains(@formcontrolname,"lastName")]
${SubmitPayment}    //*[@id="submit-button"]/span
${Card}             xpath=//*[@id="braintree-hosted-field-number"]
${Month1}            xpath=//*[@id="braintree-hosted-field-expirationDate"]
${CVV}              xpath=//*[@id="braintree-hosted-field-cvv"]
${CardDetails}      xpath=//*[@class='braintree-option braintree-option__card']


                            ####  OPERATING HOURS  ####
${Opening Hours}        //*[@href='#OpeningHourslink']

${SundayCheckBox}       //*[@id="OpeningHourslink"]/div/div/div/div/div[2]/form/div[1]/label/span/span
${MondayCheckBox}       //*[@id="OpeningHourslink"]/div/div/div/div/div[2]/form/div[5]/label/span/span
${TuesdayCheckBox}      //*[@id="OpeningHourslink"]/div/div/div/div/div[2]/form/div[9]/label/span/span
${WednesdayCheckBox}    //*[@id="OpeningHourslink"]/div/div/div/div/div[2]/form/div[13]/label
${ThursdayCheckBox}     //*[@id="OpeningHourslink"]/div/div/div/div/div[2]/form/div[17]/label
${FridayCheckBox}       //*[@id="OpeningHourslink"]/div/div/div/div/div[2]/form/div[21]/label
${SaturdayCheckBox}     //*[@id="OpeningHourslink"]/div/div/div/div/div[2]/form/div[25]/label

${SunAddDayPart}         //*[@id="sun-add-0"]/span/i
${MonAddDayPart}         //*[@id="mon-add-0"]/span/i
${TueAddDayPart}         //*[@id="tue-add-0"]/span/i
${WedAddDayPart}         //*[@id="wed-add-0"]/span/i
${ThuAddDayPart}         //*[@id="thu-add-0"]/span/i
${FriAddDayPart}         //*[@id="fri-add-0"]/span/i
${SatAddDayPart}         //*[@id="sat-add-0"]/span/i

${SundayDayPart1}       //*[@id="sun-daypart-0"]/div/div[1]
${SundayDayPart2}       //*[@id="sun-daypart-1"]/div/div[1]
${SundayDayPart3}       //*[@id="sun-daypart-2"]/div/div[1]

${MondayDayPart1}       //*[@id="mon-daypart-0"]/div/div[1]
${MondayDayPart2}       //*[@id="mon-daypart-1"]/div/div[1]
${MondayDayPart3}       //*[@id="mon-daypart-2"]/div/div[1]

${TuesdayDayPart1}      //*[@id="tue-daypart-0"]/div/div[1]
${TuesdayDayPart2}      //*[@id="tue-daypart-1"]/div/div[1]
${TuesdayDayPart3}      //*[@id="tue-daypart-2"]/div/div[1]

${WednesdayDayPart1}    //mat-select[contains(@id,"wed-daypart-0")]
${WednesdayDayPart2}    //mat-select[contains(@id,"wed-daypart-1")]
${WednesdayDayPart3}    //*[@id="wed-daypart-2"]/div/div[1]

${ThursdayDayPart1}     //mat-select[contains(@id,"thu-daypart-0")]
${ThursdayDayPart2}     //mat-select[contains(@id,"thu-daypart-1")]
${ThursdayDayPart3}     //mat-select[contains(@id,"thu-daypart-2")]

${FridayDayPart1}       //*[@id="fri-daypart-0"]/div/div[1]
${FridayDayPart2}       //*[@id="fri-daypart-1"]/div/div[1]
${FridayDayPart3}       //*[@id="fri-daypart-2"]/div/div[1]

${SaturdayDayPart1}     //*[@id="sat-daypart-0"]/div/div[1]
${SaturdayDayPart2}     //*[@id="sat-daypart-1"]/div/div[1]
${SaturdayDayPart3}     //*[@id="sat-daypart-2"]/div/div[1]


${Sundaybf}     //div/mat-option/span[contains(text()," Breakfast ")]
${Sundayln}     //div/mat-option/span[contains(text()," Lunch ")]
${Sundaydn}     //div/mat-option/span[contains(text()," Dinner ")]
${Sundayfd}     //div/mat-option/span[contains(text()," Breakfast ")]
${Mondaybf}     //div/mat-option/span[contains(text()," Breakfast ")]
${Mondayln}     //div/mat-option/span[contains(text()," Lunch ")]
${Mondaydn}     //div/mat-option/span[contains(text()," Dinner ")]
${Mondayfd}     id=mat-option-25
${Tuesdaybf}    //div/mat-option/span[contains(text()," Breakfast ")]
${Tuesdayln}    //div/mat-option/span[contains(text()," Lunch ")]
${Tuesdaydn}    //div/mat-option/span[contains(text()," Dinner ")]
${Tuesdayfd}    id=mat-option-29
${Wednesdaybf}  //div/mat-option/span[contains(text()," Breakfast ")]
${Wednesdayln}  //div/mat-option/span[contains(text()," Lunch ")]
${Wednesdaydn}  //div/mat-option/span[contains(text()," Dinner ")]
${Wednesdayfd}  id=mat-option-33
${Thursdaybf}   //div/mat-option/span[contains(text()," Breakfast ")]
${Thursdayln}   //div/mat-option/span[contains(text()," Lunch ")]
${Thursdaydn}   //div/mat-option/span[contains(text()," Dinner ")]
${Thursdayfd}   id=mat-option-37
${Fridaybf}     //div/mat-option/span[contains(text()," Breakfast ")]
${Fridayln}     //div/mat-option/span[contains(text()," Lunch ")]
${Fridaydn}     //div/mat-option/span[contains(text()," Dinner ")]
${Fridayfd}     id=mat-option-41
${Saturdaybf}   //div/mat-option/span[contains(text()," Breakfast ")]
${Saturdayln}   //div/mat-option/span[contains(text()," Lunch ")]
${Saturdaydn}   //div/mat-option/span[contains(text()," Dinner ")]
${Saturdayfd}   id=mat-option-45

${SundayOpen1}      //*[@id="sun-opens-at-0"]
${SundayOpen2}      //*[@id="sun-opens-at-1"]
${SundayOpen3}      //*[@id="sun-opens-at-2"]



${SundayClose1}     //*[@id="sun-closes-at-0"]
${SundayClose2}     //*[@id="sun-closes-at-1"]
${SundayClose3}     //*[@id="sun-closes-at-2"]


${MondayOpen1}      //*[@id="mon-opens-at-0"]/div/div/div/input
${MondayOpen2}      //*[@id="mon-opens-at-1"]/div/div/div/input
${MondayOpen3}      //*[@id="mon-opens-at-2"]/div/div/div/input

${MondayClose1}     //*[@id="mon-closes-at-0"]/div/div/div/input
${MondayClose2}     //*[@id="mon-closes-at-1"]/div/div/div/input
${MondayClose3}     //*[@id="mon-closes-at-2"]/div/div/div/input

${TuesdayOpen1}     //*[@id="tue-opens-at-0"]
${TuesdayOpen2}     //*[@id="tue-opens-at-1"]
${TuesdayOpen3}     //*[@id="tue-opens-at-2"]

${TuesdayClose1}    //*[@id="tue-closes-at-0"]
${TuesdayClose2}    //*[@id="tue-closes-at-1"]
${TuesdayClose3}    //*[@id="tue-closes-at-2"]

${WednesdayOpen1}   //*[@id="wed-opens-at-0"]
${WednesdayOpen2}   //*[@id="wed-opens-at-1"]
${WednesdayOpen3}   //*[@id="wed-opens-at-2"]

${WednesdayClose1}  //*[@id="wed-closes-at-0"]
${WednesdayClose2}  //*[@id="wed-closes-at-1"]
${WednesdayClose3}  //*[@id="wed-closes-at-2"]

${ThursdayOpen1}    //*[@id="thu-opens-at-0"]
${ThursdayOpen2}    //*[@id="thu-opens-at-1"]
${ThursdayOpen3}    //*[@id="thu-opens-at-2"]

${ThursdayClose1}   //*[@id="thu-closes-at-0"]
${ThursdayClose2}   //*[@id="thu-closes-at-1"]
${ThursdayClose3}   //*[@id="thu-closes-at-2"]

${FridayOpen1}      //*[@id="fri-opens-at-0"]
${FridayOpen2}      //*[@id="fri-opens-at-1"]
${FridayOpen3}      //*[@id="fri-opens-at-2"]

${FridayClose1}     //*[@id="fri-closes-at-0"]
${FridayClose2}     //*[@id="fri-closes-at-1"]
${FridayClose3}     //*[@id="fri-closes-at-2"]

${SaturdayOpen1}    //*[@id="sat-opens-at-0"]
${SaturdayOpen2}    //*[@id="sat-opens-at-1"]
${SaturdayOpen3}    //*[@id="sat-opens-at-2"]

${SaturdayClose1}   //*[@id="sat-closes-at-0"]
${SaturdayClose2}   //*[@id="sat-closes-at-1"]
${SaturdayClose3}   //*[@id="sat-closes-at-2"]

${Submit Hours}     xpath=//*[@id="OpeningHourslink"]/div/div/div/div/div[2]/form/button
                            ####   UPLOADS  ####
${LogoChooseFile}   //*[@id="Uplodeslink"]/div/div/div/div[1]/div[2]/div[3]/button/input
${LogoSubmit}   xpath=//*[@id="Uplodeslink"]/div/div/div/div[1]/div[2]/div[4]/button
${BannerChooseFile}     //*[@id="Uplodeslink"]/div/div/div/div[2]/div[2]/div[3]/button/input
${BannerSubmit}     xpath=//*[@id="Uplodeslink"]/div/div/div/div[2]/div[2]/div[4]/button
${BannerDeleteIcon}     xpath=//*[@id="Uplodeslink"]/div/div/div/div[2]/div[2]/div[1]/div/div/div/button/span/i
${DeleteYes}           xpath=//*[@class='swal2-confirm btn btn-success']
${MenuChooseFile}   //*[@id="Uplodeslink"]/div/div/div/div[3]/div[2]/div[3]/button/input
${MenuSubmit}       xpath=//*[@id="Uplodeslink"]/div/div/div/div[3]/div[2]/div[4]/button
${MenuDeleteIcon}   xpath=//*[@id="Uplodeslink"]/div/div/div/div[3]/div[2]/div[1]/div/div/div/button/span/i
${MenuDelYes}       xpath=/html/body/div[3]/div/div[3]/button[1]



                                ####   MENU UPLOAD ####
${uploadButton}     xpath=/html/body/app-my-app/app-layout/div/div[2]/app-menu/div/div[1]/div/div/div/div[2]/div[1]/div[2]/button
${UploadFile}       xpath=//*[@id="UploadMenuModal"]/div/div/div[2]/div/div/div/div/div[1]/button/input
${UploadIcon}       xpath=//*[@id="UploadMenuModal"]/div/div/div[3]/button[1]
${CloseButton}     //*[@id="uploadFile-cancel-btn"]/span
${PreviewSubmit}    xpath=/html/body/app-my-app/app-layout/div/div[2]/app-menu/div/div[1]/div/div/div/div[2]/div[3]/button
${TableEdit}        xpath=//*[@id="menuTable"]/tbody/tr[10]/td[7]/a[1]/i
${ItemChoose}       xpath=//*[@id="AddMenuModal"]/div/div/div[2]/form/div[7]/div/div[3]/button/input
${EditSubmit}       id=menuItemsubmit
                                ####  ADD MENU ITEM ####

${AddMenuItemIcon}      xpath=/html/body/app-my-app/app-layout/div/div[2]/app-menu/div/div[1]/div/div/div/div[2]/div[1]/div[1]/button
${Item Name}     //*[@id="mat-input-0"]

${ItemNameLBValidation}  //div/mat-hint[contains(text()," 20 / 20")]
${Item Display Sequence}    //*[@id="mat-input-1"]
${ItemPrice}    //*[@id="mat-input-2"]
${Description}     //*[@id="mat-input-3"]
${DescriptionLBValidation}  //div/mat-hint[contains(text(),"/ 100")]
${ItemCategory}     //*[@id="mat-select-0"]
${Appetizers}   //*[@id="mat-option-2"]
${Soups}        //*[@id="mat-option-3"]
${Salads}       //*[@id="mat-option-4"]
${Main-Course}  //*[@id="mat-option-5"]
${Tiffins}      //*[@id="mat-option-6"]
${SeaFood}      //*[@id="mat-option-7"]
${Curries}      //*[@id="mat-option-8"]
${Entrees}      //*[@id="mat-option-9"]
${Desserts}     //*[@id="mat-option-10"]
${Recommended}  //*[@id="mat-option-11"]
${Category Display Sequence}    //*[@id="mat-input-4"]
${Calories}        //*[@id="mat-input-5"]
${Ingredients}      //*[@id="mat-input-6"]
${MenuType}             //*[@id="mat-select-1"]
${Breakfast}                 //*[@id="mat-option-12"]
${Brunch}                   //*[@id="mat-option-13"]
${Lunch}                   //*[@id="mat-option-14"]
${Dinner}                   //*[@id="mat-option-15"]
${Full Menu}                   //*[@id="mat-option-16"]
${Special Menu}                   //*[@id="mat-option-17"]
${Buffet Menu}                   //*[@id="mat-option-18"]
${Classification}       //*[@id="mat-select-2"]
${Vegetarian}                  //*[@id="mat-option-19"]
${Non-Vegetarian}                //*[@id="mat-option-20"]
${In stock}             //*[@id="mat-select-3"]
${Yes}                 //*[@id="mat-option-0"]
${No}                //*[@id="mat-option-1"]
${MenuImageUpload}      //*[@id="AddMenuModal"]/div/div/div[2]/form/div[8]/div/div[3]/button
${MenuItemSubmit}          //*[@id="AddMenuModal"]/div/div/div[3]/button[1]/span

${MenuCancel}          //*[@id="menuItemcancel"]/span
${MenuBackgroundPath}  //*[@id="AddMenuModal"]/div/div/div[1]/h4


                        ####  Logout  ####
${Profile}  //a[@href="#pablo"]
${Signout}  //div/a[contains(text(),"Sign Out")]


                ####  Menu File Upload Xpaths  ####
${uploadButton}     xpath=/html/body/app-my-app/app-layout/div/div[2]/app-menu/div/div[1]/div/div/div/div[2]/div[1]/div[2]/button
${UploadFile}       xpath=//*[@id="UploadMenuModal"]/div/div/div[2]/div/div/div/div/div[1]/button/input
${UploadIcon}       xpath=//*[@id="UploadMenuModal"]/div/div/div[3]/button[1]
${PreviewSubmit}    xpath=/html/body/app-my-app/app-layout/div/div[2]/app-menu/div/div[1]/div/div/div/div[2]/div[3]/button




            ####  Food Delivary Page Xpaths  ####

${NewLocAdd}    //input[contains(@placeholder,'Enter a location')]
${NewLoccity}   //div/input[contains(@formcontrolname,'city')]
${NewLocState}  //input[@formcontrolname='state']
${NewLocZip}    //input[@formcontrolname='postal']
${NewCouPath}    //mat-select[contains(@formcontrolname,"countryCode")]
${NewLocPhn}     //input[@formcontrolname='phone']
${FD +1}        //span[@class='mat-option-text'][contains(.,'+1')]
${FD +91}       //span[@class='mat-option-text'][contains(.,'+91')]
${FD +44}       //span[@class='mat-option-text'][contains(.,'+44')]
${FD +33}       //span[@class='mat-option-text'][contains(.,'+33')]
${NewLocPre}    //input[@formcontrolname='preOrderTime']
${NewLocPost}   //input[@formcontrolname='postOrderTime']
${AddLocation ToolTip}  //div[@class='dropdown show-dropdown'][contains(.,'add')]
${NewLocSubmit}     //button[contains(.,'Submit')]

                    ####   Archived orders

${Number of entress list}    //*[@id="orderDetailTable_length"]/label/select

${Selection Drop Down}  //button[contains(@data-toggle,"dropdown")]
${December 2018}        //div/ul/li/a[contains(.,'December-2018')]
${November 2018}        //div/ul/li/a[contains(.,'November-2018')]
${October 2018}         //div/ul/li/a[contains(.,'October-2018')]
${September 2018}       //div/ul/li/a[contains(.,'September-2018')]
${Auguest 2018}         //div/ul/li/a[contains(.,'August-2018')]
${July 2018}            //div/ul/li/a[contains(.,'July-2018')]
${June 2018}            //div/ul/li/a[contains(.,'June-2018')]
${Search records}       //*[@id="orderDetailTable_filter"]/label/input
${Index1}           //*[@id="orderDetailTable"]/tbody/tr[1]/td[7]/a[2]/i
${Index2}           //*[@id="orderDetailTable"]/tbody/tr[2]/td[7]/a[2]/i
${Index3}           //*[@id="orderDetailTable"]/tbody/tr[3]/td[7]/a[2]/i
${Index4}           //*[@id="orderDetailTable"]/tbody/tr[4]/td[7]/a[2]/i
${Cancel Button}    //div/button/span[contains(text(),"Cancel")]

                        ###   Dashboard

${Loyal Customers}      (//div[@data-header-animation='true'])[1]
${Loyal Customers Selection Drop Down}  (//button[@data-toggle='dropdown'])[1]
${Lost Customers Selection Drop Down}  (//button[@data-toggle='dropdown'])[2]
${Popular Food Drop Down}   (//button[@data-toggle='dropdown'])[3]
${Trending Drop Down}   (//button[@data-toggle='dropdown'])[4]
${Loyal 30}     //div/ul/li/a[contains(.,'30')]
${Loyal 60}     //div/ul/li/a[contains(.,'60')]
${Loyal 90}     //div/ul/li/a[contains(.,'90')]
${Lost Customers}       (//div[contains(@data-header-animation,'true')])[2]
${Lost 30}     //div/ul/li/a[contains(.,'30')][2]
${Lost 60}     //div/ul/li/a[contains(.,'60')][2]
${Lost 90}     //div/ul/li/a[contains(.,'90')][2]

${Popular food}         (//div[contains(@data-header-animation,'true')])[3]
${Popular 30}     //div/ul/li/a[contains(.,'30')]
${Popular 60}     //div/ul/li/a[contains(.,'60')]
${Popular 90}     //div/ul/li/a[contains(.,'90')]

${Trending food}      (//div[contains(@data-header-animation,'true')])[4]
${Trending 30}     //div/ul/li/a[contains(.,'30')]
${Trending 60}     //div/ul/li/a[contains(.,'60')]
${Trending 90}     //div/ul/li/a[contains(.,'90')]

${Loyal Refresh}        (//button[@class='btn btn-info btn-link mat-raised-button'][contains(.,'refresh')])[1]
${Loyal Detail Button}  //button[@aria-describedby='cdk-describedby-message-5']

${Lost Refresh}     (//button[@class='btn btn-info btn-link mat-raised-button'][contains(.,'refresh')])[2]
${Lost Details Button}  (//button[@class='btn btn-default btn-link mat-raised-button'][contains(.,'pageview')])[2]

${Popular food Refresh}     (//button[@class='btn btn-info btn-link mat-raised-button'][contains(.,'refresh')])[3]
${Popular Details Button}    //button[@aria-describedby='cdk-describedby-message-3']

${Trending Refresh}     (//button[@class='btn btn-info btn-link mat-raised-button'][contains(.,'refresh')])[4]
${Trending Details Button}  //button[@aria-describedby='cdk-describedby-message-4']

${Backbutton}       //button[contains(@mattooltip,'back')]

                        ### Facebook
${Facebook Button}      //i[contains(@class,'fa fa-facebook-square')]
${Facebook Email}       //*[@id="email"]
${Facebook Password}    //*[@id="pass"]
${Facebook LogIn}       //input[contains(@value,'Log In')]


