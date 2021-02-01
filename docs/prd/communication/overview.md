## Overview

Communication module is composed of Meeting, Notes and Project

To track the details of the meeting held with any legal entity  Meeting can be used. Meeting allows to track the details like its subject, date, people involved in meeting, meeting agenda, meeting summary

Notes can be used to take the notes of any kind of communication e.g phone conversation,email etc done with legal entity 

To collect the information related to certain project, meeting or notes can be attached to Project. Project has just name. Its useful to group all meeting or notes taken for any particular project.

## Meeting Entity

#### Legal entity

Legal entity for which this meeting is added.

#### Subject

Subject of the meeting. Its a mandatory field.

#### Project

Project to which this Meeting is linked.

#### Status

Meeting can be  either `Scheduled` or `Completed` state. Any meeting planned in future will have `Scheduled` state. Meeting which is completed will have `Completed` state. 

#### Schedule date

Date on which meeting is scheduled. Its a mandatory field.

#### Attendees

People who will be present in this meeting. It can be multiple. Its a mandatory field. Any contact of system can be added as attendee. As a attendee, generally, there will be some people from Clarius side and some people from Legal entity side.

#### Completed date

Date on which meeting is completed. Its a mandatory field.

#### Summary

Only `Completed` meeting has summary. Conclusion of the meeting should be taken in Summary.

#### Section

Agenda topic of the meeting. One Meeting can have more than one Agenda.  With each agenda, details can be added. 

This agenda can be from master list. For each type of legal entity [agenda topics](#master-of-agenda-topics) are different. 

#### Related entity

During the meeting if any other legal entity of same family is going to be discussed, then it can be added as Related entity. It can be multiple. 

Each related entity can have one or more agenda topic. Its called Tag. This agenda can be from [master list](#master-of-agenda-topics). 



## Non-Profit Entity Notes

### System rules

- In Add/Edit and View dialog of the Meeting, shows all Philanthropy notes of particular legal entities.
- It shows only those notes whose date is matching with the meeting schedule/completed date.
- Allows to add/edit/delete notes from Meeting add/edit/view page.
- When the user changes the date of Meeting, notes will be refreshed.

### UX rules

- Shows a separate section for Notes in the meeting page.
- When no notes are available it shows a proper message.
- For each Philanthropy note, it shows “Non-Profit Organization Name” and “Notes”. On the overflow of Notes column, it shows in multiple lines.
- Notes are shown in alphabetical order of Organization name.
- On click of + button, it opens the “Add Note” dialog. 
  - Here date is prefilled with schedule/complete date of meeting and its disabled field.
  - Non-Profit Organization is Mandatory field. It's an auto complete company dropdown which shows all Non-Profit type companies & Other family foundations. 
  - Notes is mandatory and its multi-line text input field.

- Shows hover effect on each record.
- On hover, it shows vertmore actions: Edit & Delete.
  - On Edit, opens Edit note dialog.
  - On Delete, opens Delete confirmation dialog.
  - Delete confirmation dialog shows Date and Organization name so that the user can get an idea about which note is being deleted.

### UI Requirement

[Mockup](https://drive.google.com/drive/folders/10QucKhdQxlUJ4VMHfVFEr40t7krYCKrd)



## Notes entity

#### Date

Date on which this note is taken. 

#### Project

Project to which this Note is linked

#### Title

Title of the Note. Its a mandatory field.

#### Content

Content of the Note

#### Tag

Note can have one or more agenda topic. Its called Tag. This agenda can be from [master list](#master-of-agenda-topics). 



## Project entity

#### Project Name

Name of the project. Its mandatory field.

#### Active

Show all active project.

#### Archived

Show all archived project. General project is not archived.




## Master of Agenda topics

|             | Individuals and Joint | Partnership  | Foundation  | Estate   | Trust  |
| ----------- | --------------------- | ------------ | ----------  | -------- | -----  |
| Accounting & Finance            |                       | Yes             | Yes            | Yes         | Yes       |
| Assets            | Yes                     | Yes             | Yes            | Yes         | Yes       |
| Balance sheet            |                       | Yes             | Yes            | Yes         | Yes       |
| Banking & credit            | Yes                    | Yes              | Yes            | Yes         | Yes       |
| Bill Pay            | Yes                     | Yes             | Yes            | Yes         | Yes       |
| Cash Flow            | Yes                      |              |             |          |        |
| College Savings            | Yes                      |              |             |          |        |
| Gifting / Estate Planning / Trusts            |  Yes                     |              |             |          |        |
| Grantmaking            |                       |              | Yes            |          |        |
| Human Resources            | Yes                      | Yes             | Yes            |          |        |
| Insurance            | Yes                      | Yes             | Yes            |          | Yes       |
| Investments            | Yes                      | Yes             | Yes            | Yes         | Yes       |
| Management / strategy            |                       | Yes             | Yes            |          |        |
| Other            | Yes                      | Yes             | Yes            | Yes         | Yes       |
| Personal Financial Statement            | Yes                      |              |             |          |        |
| Philanthropy            | Yes                      |              |             |          |        |
| Planning            | Yes                      |              |             |          |        |
| Tax           | Yes                      | Yes             | Yes            | Yes         | Yes       |

