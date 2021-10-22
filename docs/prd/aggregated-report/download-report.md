# Download aggregated report



## Overview

Aggregated PDF report, which we are building this time is not same as our regular report PDF. This PDF is bigger in size and system needs to gather data from various modules to generate PDF. Our assumption is, It is going to take around 30 seconds to 2 minutes, depending on the reports it will contain. Also it is going to consume more resources of server compared to normal reports especially memory. So system won’t be able to handle more than two or three such request in parallel.

If we keep this process synchronous user needs to wait 1 to 2 minutes and user can not perform any other action. So instead of making download process synchronous, we have made it asynchronous. 

## System Rules

- System maintains queue for aggregated report download requests. System processes each request one by one
- System will process n request concurrently (Currently we will keep this value of n = 1 or 2, so system will handle two requests concurrently). We can increase this number by observing memory usage and increase memory. Currently our server has 1 GB memory. We can increase it, if we want to handle more requests concurrently. (It will increase cost)
- Once user submit Download request, request will be in either WAITING or IN_PROGRESS state
- If queue is empty, status will be IN_PROGRESS. If Download request is in queue, status will be WAITING
- When Download request is failed due to any reason, status will be FAILED
- Once process is completed, status will be set to COMPLETED

## UX Rules

- Shows all download requests in single dialog at bottom right corner of the screen
- This dialog is visible in any screen of the application.
- For IN_PROGRESS request, shows loader
- For WAITING request, shows waiting icon
- For FAILED requests, shows error icon and provides a way to remove that requests
- For COMPLETED requests, UI downloads the PDF file and removes that requests from dialog
- All requests in dialog are shown in the descending order of its submission. Means first submitted request is shown at top.

## UI Rules

Mockup //TODO

Mockup of Failed record //TODO



## Scenario

### Normal case

Given: User has added 3 aggregate reports.

When: User perform the `Download PDF` action for the first report.

Then: UI shows download request dialog with one request in  `In_Progress` state

And: after few seconds or minutes request is completed and file will be downloaded automatically

### System maintains queue for aggregated report download requests

Given: User has added 3 aggregate reports

And: User has performed the download PDF action for the first record

And: Status of the first request is in the `In progress`  state

When: Users performs the download PDF action for the second record

Then: UI shows another download request in WAITING state in download request dialog.

### Rule: 3 Download request queue will be common to all clarius users.

Given: Apexa (First user) has make one download request 

And: That request is still in progress state.

When: Ravi (Second user) has also made a download request for the first time.

Then: Status of Ravi request will still be `Waiting` state.

When: Apexa request is completed.

Then: Ravi request will be changed from Waiting state to In_Progress state.



### Rule: 4 When Download request is failed due to any reason, status will be changed to FAILED

### Rule: 5 Allows to remove failed requests

### Rule: 6 When last request is completed, Download request dialog is closed

Given: User has perform the download request for the 2 reports

And: First request is in progress state 

And: Second request is in waiting state

When: First request is completed

Then: File will be downloaded for the first request

And: Second request state will be changed to In Progress state

When: Second request is also completed

Then: File will be downloaded and dialog will be closed.



### Rule: 7 All requests in dialog are shown in the descending order of its submission

| Seq. No | Report Name                 |
| ------- | --------------------------- |
| 1       | Annual Dossier              |
| 2       | Tax Detail for all entities |
| 3       | IPS Summaries               |

Given: User has 3 {Report Name} reports.

When: User performs download pdf action is in this sequence {seq. No of {2,3,1}}

Then: Download request dialog shows download request is in this  sequence {seq. No of {2,3,1}}.



### Rule: 8 Download request dialog is visible in all browser windows of the same user

| Report Name                 |
| --------------------------- |
| Annual Dossier              |
| Tax Detail for all entities |
| IPS Summaries               |

#### 8.1 in same browser tabs

Given: User has 3 {Report Name} reports.

When: User performs download pdf action is in this sequence {seq. No of {2,3,1}}

Then: Download request dialog shows download request is in this  sequence {seq. No of {2,3,1}}.

When: Same user opens athena from a different tab

Then: It still shows the download request dialog.

#### 8.2 in different browsers

Given: User has 3 {Report Name} reports.

When: User performs download pdf action is in this sequence {seq. No of {2,3,1}}

Then: Download request dialog shows download request is in this  sequence {seq. No of {2,3,1}}.

When: Same user opens athena from a different browser or machine (Another PC)

Then: It still shows the download request dialog.



### Rule 9: When user opens application, any pending download request will be downloaded

Given: User has performed download pdf action for 5 reports. 

And: User close the browser

When: User opens an application after some times.

Then: Any pending request will be downloaded



### Rule 10: Request is expired in 10 minutes

Given: User has performed download pdf action for 5 reports. 

And: User close the browser

When: User opens an application after 11 minutes.

Then: Any pending request will not be downloaded.



### Rule 11: Request is downloaded in any of the browser tab

Given: User has performed download pdf action for 5 reports for one browser. 

When: User login to another browser

And: User can also see the same 5 report download request

Then: Report can also be download in same browser.

