# State and country dropdown

## State

- User isn’t allowed to type text, so it’s a Select control by spec. User has to choose one of the state from the available options.
- For the USA & Canada country, State drop-down shows pre-defined states for that particular country.
- For other countries, state dropdown will be disabled
- Short Name of the State
  - System will have predefined short-name for the USA & Canada states. This name is shown in the auto-suggestion/select drop-down list in the Braces. e.g. “Washington (WA)”
  - At some places, we will show Short Name only for the State representation. e.g. Address of Individual, contact or company
  - Note:: Edit dialog will always show full-name + short-name at both places: Selected Value & Drop-down suggestions.

### States of USA

| State/Possession               | Abbreviation |
| ------------------------------ | ------------ |
| Alabama                        | AL           |
| Alaska                         | AK           |
| American Samoa                 | AS           |
| Arizona                        | AZ           |
| Arkansas                       | AR           |
| California                     | CA           |
| Colorado                       | CO           |
| Connecticut                    | CT           |
| Delaware                       | DE           |
| District of Columbia           | DC           |
| Federated States of Micronesia | FM           |
| Florida                        | FL           |
| Georgia                        | GA           |
| Guam                           | GU           |
| Hawaii                         | HI           |
| Idaho                          | ID           |
| Illinois                       | IL           |
| Indiana                        | IN           |
| Iowa                           | IA           |
| Kansas                         | KS           |
| Kentucky                       | KY           |
| Louisiana                      | LA           |
| Maine                          | ME           |
| Marshall Islands               | MH           |
| Maryland                       | MD           |
| Massachusetts                  | MA           |
| Michigan                       | MI           |
| Minnesota                      | MN           |
| Mississippi                    | MS           |
| Missouri                       | MO           |
| Montana                        | MT           |
| Nebraska                       | NE           |
| Nevada                         | NV           |
| New Hampshire                  | NH           |
| New Jersey                     | NJ           |
| New Mexico                     | NM           |
| New York                       | NY           |
| North Carolina                 | NC           |
| North Dakota                   | ND           |
| Northern Mariana Islands       | MP           |
| Ohio                           | OH           |
| Oklahoma                       | OK           |
| Oregon                         | OR           |
| Palau                          | PW           |
| Pennsylvania                   | PA           |
| Puerto Rico                    | PR           |
| Rhode Island                   | RI           |
| South Carolina                 | SC           |
| South Dakota                   | SD           |
| Tennessee                      | TN           |
| Texas                          | TX           |
| Utah                           | UT           |
| Vermont                        | VT           |
| Virgin Islands                 | VI           |
| Virginia                       | VA           |
| Washington                     | WA           |
| West Virginia                  | WV           |
| Wisconsin                      | WI           |
| Wyoming                        | WY           |

### States of Canada

| State/Possession          | Abbreviation |
| ------------------------- | ------------ |
| Alberta                   | AB           |
| British Columbia          | BC           |
| Manitoba                  | MB           |
| New Brunswick             | NB           |
| Newfoundland and Labrador | NL           |
| Northwest Territories     | NT           |
| Nova Scotia               | NS           |
| Nunavut                   | NU           |
| Ontario                   | ON           |
| Prince Edward Island      | PE           |
| Quebec                    | QC           |
| Saskatchewan              | SK           |
| Yukon                     | YT           |

## Country

- Default value of the country will be USA always. User can change when required.
- Available countries in dropdown

```
[
    "Aland Islands",
    "Austria",
    "Canada",
    "Germany",
    "India",
    "Italy",
    "Korea",
    "Netherlands",
    "Norway",
    "Puerto Rico",
    "Switzerland",
    "USA"
  ]


```



- User isn’t allowed to type text, so it’s a Select control by spec. User has to choose one of the Country from the available options.



## State and Country inter relation

- When country is other than USA and Canada state dropdown will be disabled
- When state is already selected and User change the country, state will be reset first and then state will be disabled.
  - For e.g. While adding contact, default `USA` is selected under country. So user can select any state of the USA. Now after selecting any state of `USA`, if user change the country to `India`, state will be reset first (empty) and then it will be disabled.



## Home Country

- Wherever we show the Address as a Text (By combining address fields into a Single String), Do not show Country, if it’s USA (home country).
- For e.g. In Contact/Individual view, system doesn't show the Country of the Contact if it’s USA. 

## Note

- List of states of USA are retrieved from this [link](https://pe.usps.com/text/pub28/28apb.htm) and Canada state retrieved from this [link](https://www.ups.com/worldshiphelp/WS14/ENU/AppHelp/Codes/State_Province_Codes.htm
  )
- We have Copied data of above link to this [worksheet](https://docs.google.com/spreadsheets/d/1PYNWC6xSOsJT1WT5jxOUXHEFTkASSV4x-7H0FCkPF-g/edit#gid=0) to keep reference of old data (As it is possible that in future above links can be updated)

