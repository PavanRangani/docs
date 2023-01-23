# Dependencies

## Overview
Dependency means other tax returns which needs to be filed before this. Mostly this dependency is for K1 of partnership. In Athena, any type of legal entity can be the owner in partnership. When any legal entity is owner in partnership, partnership tax return needs to be filed first and then legal entity tax return should be filed. Till now Clarius team was adding dependency entries manually but it was very in-accurate. To get rid of it, system auto populates dependency section in tax return of legal entity based on the ownership of legal entity in any other partnership. 

## System Rule
- System auto generates dependencies section of tax return of each legal entity.
- Dependency section is not applicable to 709 form of Individual and Disregarded tax return.
- Dependencies are generated on the fly at the time of browsing tax return detail page. 
- Dependency shows partnership name, tax return status and expected filing date.
- Dependency is generated based on year. Means for the 2022 return, it shows only those partnerships where legal entity was/is owner for atleast one day in 2022 return
  - Even if a user is added to the partnership as an owner for only 1 day, it will still appear as a partnership dependency on the user's tax return.
  - For e.g If `Keith` is an owner of the partnership `P1` from `01/02/2022` to `02/02/2022`. So `P1` Dependency will be shown in the Keith 1040 tax return for 2022.
- System will auto-populate dependencies for the  tax return for 2022 or later years. Old return still have manual way for entry. (This decision was taken to avoid any changes in historical tax returns which are filed)
- If partenrship has more than 1 tax return available for same year, system will auto add dependencies for each tax return. 
  - For e.g. `Keith` is the owner of the partnership `P1`. `Keith` has 1041 return. Now, Clarius user adds `1065` return for year `2022` to `P1`. So Keith's 1041 return shows one dependency for P1. Now, the Clarius user adds another 2 `1120-S` and `Disregarded entity` returns for `2022` to `P1`. So the system will add a total of 3 dependencies to Keith's 1041 return.
- System auto add dependency based on the ownership date of partenrship.
  - For e.g. `Keith` is an owner of the partnership `P1` from `01/05/2020` to current year. System will auto adds dependency to Keith 1040 returns from `2020` to Current year.



## UX Rule
- If partnership has no tax return available, shows only partenship name and status is shown `N/A`.
- If parternship has tax return, shows the `partnership name`, `Form` and `Filling Date` sepereated by pipe.
  - If tax return has no `Filling Date`, date isn't shown.
- Shows status of tax return of same year of that dependency.
- When `Dependency` status is N/A, it should not be link. In case of any other status, it should be link. On click, it opens the tax return of the same year for that legal entity in the new tab.
- Sorting: Primary sorted on partnership name and secondary sorting on form in order of 1065, 1120-S & Disregarded entity.
- Shows proper message when no depedencies available.


## UI Rule
[Mockup](https://drive.google.com/file/d/1g28iui7wwi-KFovgnsHARNl5c6ORRVH0/view?usp=share_link)
- If status is `Extended` or `Pending`, shows it in the orange color.
- If status is `Filed`, shows it in the green color.
- If dependecy name is too long, shows it in multiline. 
- Placeholder message: `Not Available` [See this](https://drive.google.com/file/d/1vbn7-sZ9cP50rvn2aOPJNWa8RSNtrh2x/view?usp=share_link)


## Technical notes
Dependency section data are generated on the fly at the time of browsing tax return detail page through separate API. System doesn't maintain dependency data reactively. 