# Pull Bankings of Associated Revocable Trust

## System Rule
- Bank accounts of [associated Revocable Trust](../legal-entities/associated-entities.md) is pulled to the Trust's Trustor
    - When the switch for Revocable Trust is ON in the [Associated Entities](../legal-entities/associated-entities.md) tab for Individual and Joint, the system will auto-pull the banking accounts of that Revocable Trust into its Trustor.
- Both `Active` and `Disposed` banking records can be pulled.
- Bank account will be pulled only if the Trustor is added to the current trust. If the Trustor is added to Historical trust, accounts will not be pulled
- When an Individual is part of the Joint, bank accounts will be pulled into the Individual and its Joint.

## UI notes
- [Mockup of Banking tab when Trust bank account is pulled to the Trustor](https://drive.google.com/file/d/12jL1qhMskkFu2YVs4WxMUvputVqv5kvH/view?usp=sharing)
