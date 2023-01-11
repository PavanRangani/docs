# Disregarded Entity tax return

## Add Tax Return

- For Grantor trust and Partnership sometimes it doesn't have own tax return. But it tax return is filed under Grantor or Owner. 
- For Grantor trust, there are two possibilities. Separate tax return for Trust is filed or Tax return is filed under Grantor's tax return. So at the time of creating tax return for any year, system allows user to choose any one option and based on that tax return is created.
  - When user selects `Filed on Grantor’s Tax Return`, it will not ask any information. 
  - When the user selects `Filed under 1041 Trust Return`, it will only show fields related to  `Preparation` section. Payment fields are not shown as payment is not applicable for this.
- For Partnership whose Tax ID type is SSN, separate Tax return can not be filed. Instead it is always filed under any of its owner. So it will not ask any information.
- For Partnership, If a individual's of SSN tax return is already filed, disregarded entities tax return can't be added for that year otherwise system show error message.
  - Shows error: `Individual's Tax return is already filed for this year`
- For Trust, If a grantor's tax return is already filed, disregarded entities tax return can't be added for that year otherwise system show error message.
  - Shows error: `Grantor's Tax return is already filed for this year` 
- Signer is not applicable for the Disregarded Entity tax return.