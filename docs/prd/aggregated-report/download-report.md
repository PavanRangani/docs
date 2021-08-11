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

### Rule: 1 First time a user performs a `Download PDF` action, the system will set that request to `IN_PROGRESS`.

Given: I have added 3 aggregate reports.

When: I perform the `Download PDF` action for the first record.

Then: System will continue to download the pdf for that report.

And: Show one dialog of download request with `In_Progress` state at bottom of the screen.

### Rule: 2 One download request is in the queue and user makes another request, the system will set the status of the second request to Waiting.

Given: I have added 3 aggregate reports.

And: User has already performed the download PDF action for the first records.

And: Status of the first request is in the `In progress`  mode.

When: Users performs the download pdf action for the second records.

Then: System will add a new record after the first records in the download request dialog.

And: System will set that request to `Waiting`.

### Rule: 3 Download request queue will be common to all clarius users.

#### Scenario 3.1 One of the Clarius users has already requested a PDF download and is still in progress mode. At that time another Clarius user also requested a PDF download. So the system will set another user's download request in waiting mode.

Scenario 3.2

### Rule: 4 When Download request is failed due to any reason, status will be changed to FAILED

### Rule: 5 On hover of failed request, shows `X` icon. On click, requests are removed from the dialog.

### Rule: 6 Once the request is completed, file will be downloaded and records will be remove from the dialog.

### Rule: 7 All requests in dialog are shown in the descending order of its submission. Means first submitted request is shown at top.

Scenario 7.1 