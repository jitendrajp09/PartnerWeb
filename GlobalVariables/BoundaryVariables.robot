*** Variables ***
                                # input for boundary values and mixed match
${Upper Boundary String}  aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
${Mixed Match String}  Aa1!@#$%^&*()_+?><~`-=';:"[]{}
${Numbers}  1234...ee---+++
${upper boundary number}  9999999999999999999999999
&{a}  a=1  b=2  c=3
                                #data for TC_PD_UR04
&{UserRegData1}  FirstName=test50  LastName=test50  Email=test5023@gmail.com  Phone=9000000001  Password=Asdf@12345  ConfirmPassword=Asdf@12345
&{BusinessRegData1}  LegalName=tester20  ShortName=tester  Address=Housing Board Colony Tadepalligudem West Godavari  City=Tadepalligudem  State=AP  PostalCode=534101  Country=India  WorkPhone=9000000000  Website=https://test.com  SalesTax=1.8  TotalTables=3  TotalOccupancy=10
&{Transaction}  CardNo=4111111111111111  Month=023123  Cvv=2324
&{Test_Logins}  Email=Madhu6@gmail.com  Password=Asdf@1234
&{Test_Logins1}  Email=test53@gmail.com  Password=Asdf@1234
&{TrailXpathDict}  WorkPhoneDict=//div/mat-option/span[contains(text()," +91 ")]
${trail1}  &{TrailXpathDict}
&{Test_FBLogins}  Email=heartbeat9676@gmail.com  Password=Asdf@1234
@{TestData}  boundarytest26@gmail.com  Asdf@1234  9676021673  SriKanya Grand  tester9  2.8  50  90  Rajahmundry Valaki Nagar Cycle Colony  Rajahmundry  AP  533101  India  id=mat-option-182 9000000000  www.srikanya.com  4111111111111111  023123  2324  C:\dev\FullFile\PartnerWeb\Resources\Data\Excel Sheet 1.xlsx  Chicken  2  5.99  Chilli Chicken With Onions Spicy  11  150  All Ingredents  C:/Automation/Menu Items/Idly Vada.jpg  1030  1230  C:/Automation/Images/Indian.png  C:/Automation/Images/Ame.jpg  C:/Automation/Images/Indian.jpg  C:/Automation/Images/Chin.jpg  C:/Automation/Images/Ita.jpg  C:/Automation/Images/Medi.jpg  C:/Automation/Images/Mexican.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-1.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-2.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-3.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-4.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-5.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-6.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-7.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-8.jpg  Madison Ave  NewYork  NY  10128  9676021673  1230  1330  Madison Ave3  ''  Tester  8500984455
