## Overview

Communication module is composed of Meeting, Notes and Project

To track the details of the meeting held with any legal entity  Meeting can be used. Meeting allows to track the details like its subject, date, people involved in meeting, meeting agenda, meeting summary

Notes can be used to take the notes of any kind of communication e.g phone conversation,email etc done with legal entity 

To collect the information related to certain project, meeting or notes can be attached to Project. Project has just name. Its useful to group all meeting or notes taken for any particular project.

## Meeting Entity

//TODO : For mandatory, max length

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

