# System Requirement

- There are total 3 types of Insurance and  for each type there are some subtypes.
- Insurance has some common fields and some type specific field.
- Supported actions: `Create`, `Renew`,`Update`, `Delete`,  `Dispose` & `Restore`

## Types & Subtypes

1. Life Insurance
   1. Term Life
   2. Whole Life
   3. Long Term Life
2. Health Insurance
   1. Medicare
   2. Medicare Supplement
3. Property and Casualty
   1. Homeowners
   2. Automobile
   3. Motorcycle
   4. Watercraft
   5. Valuable Articles
   6. Excess Liability
   7. Workers Compensation
   8. Small Business Insurance
   9. Catastrophic Event
   10. Aircraft
   11. Other



## Entity

- See this [page](./insurance-entity.md) for entity documentation

## Create

- When first time insurance is created, system creates entry in history

## Renew

- Should be used when insurance needs to be renewed
- On Renew
  - System prefill `Issue date` as  `last poilicy expiry date + 1 day` and `Expiry date` as `next year date of Issue date` - 1 day. 
  - Allows to change `Issue date` and `Expiry date` if required
  - Asks for `Premium`
  - All other details of policy will be prefilled from last policy
- System maintains history of renewals

## Update

- Current policy or any other policy (renewals) can be updated anytime

## Delete

- Can be deleted anytime

## Dispose

- Can be disposed anytime

## Restore

- Only `Disposed` insurance can be restored.



# UX Requirement

- On 