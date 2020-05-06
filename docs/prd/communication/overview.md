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

Subject of the meeting

#### Project

Project to which this Meeting is linked

#### Status

Meeting can be  either `Scheduled` or `Completed` state. Any meeting planned in future will have `Scheduled` state. Meeting which is completed will have `Completed` state.

#### Schedule date

Date on which meeting is scheduled

#### Attendees

People who will be present in this meeting. It can be multiple. Any contact of system can be added as attendee. As a attendee, generally, there will be some people from Clarius side and some people from Legal entity side.

#### Completed date

Date on which meeting is completed

#### Summary

Only `Completed` meeting has summary. Conclusion of the meeting should be taken in Summary.

#### Section

Agenda topic of the meeting. One Meeting can have more than one Agenda.  With each agenda, details can be added. 

This agenda can be from master list. For each type of legal entity agenda topics are different. //TODO

#### Related entity

During the meeting if any other legal entity of same family is going to be discussed, then it can be added as Related entity. It can be multiple. 

Each related entity can have one or more agenda topic. Its called Tag. This agenda can be from master list. //TODO (validate for type of related entity)



## Notes entity

#### Date

Date on which this note is taken

#### Project

Project to which this Note is linked

#### Title

Title of the Note

#### Content

Content of the Note

#### Tag

Note can have one or more agenda topic. Its called Tag. This agenda can be from master list.



## Project entity

#### Name

Name of the project

#### isArchived

Project is archived or not



## Master of Agenda topics in Individuals and Joint

- Assets
- Banking & Credit
- Bill Pay
- Cash Flow
- College Savings
- Gifting | Estate Planning | Trusts
- Human Resources
- Insurance
- Investments
- Other
- Personal Financial Statement
- Philanthropy
- Planning
- Tax

## Master of Agenda topics in Partnership

- Accounting & Finance
- Assets
- Balance sheet
- Banking & credit
- Bill pay
- Human resources
- Insurance
- Investments
- Management / strategy
- Other
- Tax

## Master of Agenda topics in Foundation

- Accounting & Finance
- Assets
- Balance sheet
- Banking & credit
- Bill pay
- Grantmaking
- Human resources
- Insurance
- Investments
- Management / strategy
- Other
- Tax

## Master of Agenda topics in Estate

- Accounting & Finance
- Assets
- Balance sheet
- Banking & credit
- Bill pay
- Investments
- Other
- Tax

## Master of Agenda topics in Trust

- Accounting & Finance
- Assets
- Balance sheet
- Banking & credit
- Bill pay
- Insurance
- Investments
- Other
- Tax

|             | Individuals and Joint | Partnership  | Foundation  | Estate   | Trust  |
| ----------- | --------------------- | ------------ | ----------  | -------- | -----  |
| Accounting & Finance            |                       |              |             |          |        |
| Assets            |                       |              |             |          |        |
| Balance sheet            |                       |              |             |          |        |
| Banking & credit            |                       |              |             |          |        |
| Bill Pay            |                       |              |             |          |        |
| Cash Flow            |                       |              |             |          |        |
| College Savings            |                       |              |             |          |        |
| Gifting | Estate Planning | Trusts            |                       |              |             |          |        |
| Grantmaking            |                       |              |             |          |        |
| Human Resources            |                       |              |             |          |        |
| Insurance            |                       |              |             |          |        |
| Investments            |                       |              |             |          |        |
| Management / strategy            |                       |              |             |          |        |
| Other            |                       |              |             |          |        |
| Personal Financial Statement            |                       |              |             |          |        |
| Philanthropy            |                       |              |             |          |        |
| Planning            |                       |              |             |          |        |
| Tax           |                       |              |             |          |        |

// TODO update as per Keith orginal version
