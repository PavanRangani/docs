# Session expires dialog

## Problem

Client (Keith) experienced a few times where he is actively working in Athena and it appears that he has worked past the "daily limit". Due to this he get weird experiences where things don't save.

To avoid this, he wants all instances to "time-out" at 4am. Everyone will be forced to log-in each morning, but we won't have any variability (or conflict) when the system will require another log-in.

## Solution

As a solution we planned to show session expired dialog to user at 4:00 AM. There will be one button in dialog `RELOGIN`. On its click user will be sent to the microsoft login screen.



## Planning

Our requirement is that, whenever an access-token is issued it’s expiry should be set to the 4 AM next day, in user's timezone. But, oauth2-server doesn’t have any such feature. There we can specify expiry/validity of the token in a number of hours only. e.g. AccessToken will be valid for next 12 hours from the issue time.

So, we will implement this requirement as follows:

- oauth2-server will issue token with validity of 24 hours.
- UI app will not use 24 expiry. But it will set token expiry to 4 AM of next day.
- UI app will run one timer at each 3 seconds to check the expiry Time. 
- When UI app will found that session is expire it will present dialog on screen.

[Mockup of Session expire dialog](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCGtL3P7FkbUOTzzCZcN6zxX)

## Technical Implementation notes

- UI app doesn't use the token expiry time given by oauth-server. It will always use session expiry time to 4:00 AM of next day.
- UI app will run one timer at each 3 seconds to check the expiry Time.  When token is found expired it will show session expired dialog on screen
- Also whenever UI app found 401 as response code of any API call, at that time also same dialog will be present. (Technically such case won't happen due to 3 second timer)