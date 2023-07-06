# Template Selection dialog

## UX Rule
- Allows to select template from the Task or Trigger dialog.
- When user clicks on the template field or Icon, opens the template selection dialog. 
- Shows proper message in the `Family` and `Template name` section until Frequency & Section isn't selected.
    - Frequency section: It shows type of frequency. Like `One-Time`, `Recurring` & `Family`
    - Family: Applicable only when Fmaily frequency is selected. It shows all families in alphabetical order having family frequency template.
    - Section: Its shows type of section.
    - Template Name: Applicable only when Frequency and Section is selected. It shows template name. If template name is too long, shows it in multiline. (Never shows elipsis)
- Shows proper message in Family or Template name when no records available for selected criteria.

## UI Rule

- Placeholder message when no records available for selected criteria:
    - Family: `No Family Avaialble`
    - Template name: `No Template Available`
- When section has no template avaialable, show section as disaled. Doesn't allows to click on it.
- Message for default template selection dialog: [See Default template selection dialog](https://drive.google.com/file/d/1PujHHkSQJeD2etYUjvqKI5yGug0ni2sz/view?usp=drive_link)
    - Family: `Applicable only for Family frequency`
    - Template Name: `Select Frequency and Section`

[One-time frequency and Section](https://drive.google.com/file/d/1DV1ipmxtOokSjKm5k873yyGt_DatDa91/view?usp=drive_link)

[Custom frequency & Section](https://drive.google.com/file/d/109rLzrR0agbGTRULDk6I5fXXewt1NarE/view?usp=drive_link)