# Overview

Individual Athena users should have a clear idea of what is time-sensitive for their various families, over the next 2 weeks and beyond.



## Tasks

There are total 3 types of tasks at higher level

1. Meeting/Notes tasks
   These will come from client meetings, where issues or opportunities that need to be addressed are identified.

   Examples might include: “arrange plane tickets”, or “check on construction status at winery.”

2. Ad-hoc tasks

   Ad Hoc Tasks don’t conform to any rule or pattern, and represent an arbitrary collection of work items for a particular entity.  Its not applicable to all entities of the application. It can be applied to only some of the entities. 

   TODO// In one of the attachment Keith has provided basic idea for introducing this type of tasks

   Examples can be :

   - Send financial report to client each quarter
   - Send philanthropy report to client each month
   - Send personal financial statement to client each year
   - Send financial planning analysis to client each year
   - Send financials to bank to support client loan each quarter

3. Systematic tasks
   This tasks can not be entered manually in the sytem by any user. Rules for such tasks can be defined in a configuration file that applies to all entities. System will create such tasks automatically based on rules defined in the system.



## RACI Role

For each task tracked in Athena, the following roles are defined. For Meeting/Notes and Ad-hoc tasks, roles is defined by user id. While for systematic tasks role is not defined by specific user ID, e.g. keith@clarius, but by professional title, e.g. “Advisor” or “Assistant Client Manager”.

**Responsible**: required, 1 or more people.

For the `Recurring` trigger, it will be the families roles dropdown..

This person is expected to get the task done; the task will show up in their work queue.

**Accountable**: Optional, 1 person only

For the `Recurring` trigger, it will be the families roles dropdown.

He is ultimately responsible for making sure the work gets done. He will push the Responsible person if task doesn’t start or end on time

**Consulted**: optional, 1 or more people.

For the `Recurring` trigger, it will be the families roles dropdown.

They are expected to contribute to the work, and so the task will appear in their work queues as well so they can anticipate being called upon. 

**Informed**: optional, 1 or more people.

For the `Recurring` trigger, it will be the families roles dropdown.

They are informed when a work completes successfully or fails.

## Dates

**Notification Date**.

The date at which tasks appear in the work queues of those Responsible for them. It is used to provide advance notice for tasks that may require preparation, e.g. tasks related to tax filings.

For one time tasks, Notification date is exact date. For recurring tasks, Notification Date is defined as an offset of “N days before Start Date.”

**Start Date**.

The date by which the task is expected to start to avoid risks: e.g. start a passport renewal 6 months before expiry.

For one time tasks, Start date is exact date. For recurring tasks, Start Date is defined as an offset of “N days before Due Date.”

**Due Date**.

The date by which the task must be successfully completed. 

## Status

The lifecycle of Athena tasks is similar to that of Kerika tasks, and is noted as a Status value:

**Pending**: The Notification Date is still ahead.

**Notified**: The Notification Date has elapsed but the Start Date is still ahead.

**Ready**: the recommended Start Date has elapsed, so the task should get picked by the Responsible person(s) soon. (System will mark tasks as Ready on the Start Date.)

E.g. start renewal process for passport since it takes 6 months.

**In Progress**: task is being worked on by the Responsible people. Marked as In Progress by the Responsible people: this could happen even before the Ready state.

E.g. ACM is working with the client on getting the application signed, or application has been submitted and we are waiting on the passport office to act upon it.

**Blocked**: task cannot proceed, even though the Start Date has elapsed, for insurmountable reasons.

E.g. The client is in quarantine and can’t sign any papers or government shutdown.

**Done**: task has been successfully completed.

E.g. new passport received.

**Deleted**: Task is deleted 

Note: A task that has not succeeded will be marked as Overdue and In Progress, because the Due Date will have elapsed but the task has not reached a successful conclusion.

## Priority

**Critical**: Task whose priority is too high

**High Priority:** Task whose priority is high

**Normal:** Task whose priority is normal