# Testamentary Trust

## Overview

- There is 2 types of trust available : `Regular Trust(Trust Legal Entity)` & `Testamentary Trust`. 
- Testamentary trusts are totally different from regular trust.
- Testamentary trust is available only in `Will`. When a person dies it becomes a regular trust of the Testamentary Trust.

## Entity

| Field Name     | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| Trust Name     | Dropdown field. It shows all the testamentary trusts of same family.<br/>When user enter new name in `Trust Name` field, system will create new Testamentary trust. |
| First Trustee  | Multivalue field. At least one records always available.<br />Auto complete dropdown of `Contact` and `Company` where type of company is `For-Profit | Professional Services | Legal` and `For-Profit | Professional Services | Banking/Credit`. |
| Second Trustee | Multivalue field.<br />Auto complete dropdown of `Contact` and `Company` where type of company is `For-Profit | Professional Services | Legal` and `For-Profit | Professional Services | Banking/Credit`. |
| Beneficiary    | Multivalue field. At least one records always available. Allows to select contact, All Client Entity and company where type of company is `Non-Profit`. <br />In percentage decimal is not allowed. Allows to enter text (Name directly) also. This will not create contact but it will remain only text. Its useful when you want to add name of the person which is not contact or Individual (for e.g. Grandchildren)<br />Regular trust have some types of Beneficiary like Primary, Secondary, Income, Reminder. But testamentary trust has not any types available. |
| Notes          | Free form text input field.                                  |



## System Rule

- When Testamentary trust is available in current will that means that testamentary trust is `Active Testamantary Trust` otherwise its `Inactive Testamantory trust`.

- When Testamentary trust is not linked with any of the Will, that testamentary trust is auto delete.

- Both the `Testamentary  Trust` and the `Regular Trust` are different. And there is nothing unique between the two different trust.

  - For ex. Both Tom and Moody have a testamentary trust like `Trust1`. If Tom dies, his testamentary trust will become the regular trust of `Trust 1`. But when you open moody's will, `Trust 1` shows you as a testamentary trust.

- Testamentary trusts are unique across all the testamentary trust in whole application. 

  

## UX Rule

- User can not able to Edit/Delete of testamentary trust.
- When the user selects any existing testamentary trust and makes any changes to it. So the existing records of that testamentary trust will also be updated.
- One testamentary trust is available in current Will and same trust is also available in Will history, that means this trust is active `Testamentary trust`.



