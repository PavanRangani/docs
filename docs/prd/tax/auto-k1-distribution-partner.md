# Auto populate K1 Distribution partners

## Overview
- When a partnership tax return is filed, each partner needs to be provided K1 of that Partnership. So the Partnership tax return has a provision to mention the name of such a partner and track its date and notes about when K1 is sent. Until now this was a manual entry. Clarius team was adding it manually. But it was very inaccurate. Sometimes someone misses adding it.
- To get rid of such problems, now K1 distribution partners will be auto populated.


## System Rule
- Applicable to only Partnership forms: `1065` & `1120-S`.
- When a partnership tax return is created, the system adds the names of all owners regardless of legal entity or contacts.
- System will auto populate K1 distribution partners for the tax return for 2022 or later year. Old return still have manual way for entry.
- User can't edit or delete entries manually.
- User can only enter a Date and Notes for each entries. Future date is not allowed.
- Please note, when ownership is changed, system doesn't make any update in exisitng entries. (This decision was taken to reduce complexity)
- Please note, this section data are not carryforward to the next year return after 2022 return. 

## UX Rule
- If partner name is too long, shows full name in multi-line. [See this](https://drive.google.com/file/d/135O6Uu3eW0rae6Bv87zIXSMObvf0K-Ji/view?usp=share_link)
- Shows proper message when no partners available.
- Sorting order: Alphabetical sorted on owner name. [See this](https://drive.google.com/file/d/17_FZ2QjwHJiVD49uBdM6R-9WiGFbgwgz/view?usp=share_link)
- For 2021 and previous year returns, K1 distribution partner section has `+` button from where user can make entries manually. There is an `X` button to delete each distribution partner entries. [See this](https://drive.google.com/file/d/1xW8WofgFWb4soDmmzsd_qZkQxLLhGqSR/view?usp=share_link)
- Date : It is Date input. Shows future data in disabled from the date picker. If user manually enters any future date, system shows error message. [See this](https://drive.google.com/file/d/1e0HhnaQxYVpRTylI2VvcTGs4ukO25Ud0/view?usp=share_link)
- Notes : Multi line text field.

## UI Rule 

[Mockup](https://drive.google.com/file/d/1_-3KAp_VcvZ814D7uP2BT5r3_NQnsjCl/view?usp=share_link)

- Placholder message: `No K1 Distribution Partners Found`. [See this](https://drive.google.com/file/d/1d8SNYtrZUmN5wXXfpq0X9sAsdb3ckHLN/view?usp=share_link)
- Error message for future date: `Future date is not allowed`.