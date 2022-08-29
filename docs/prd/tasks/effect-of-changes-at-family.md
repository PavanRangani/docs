# Effect of Changes at Family

Suppose a family has a Task & a Trigger and a user changes a role in that family, it will affect both the Task and the Trigger of that family. We have mentioned some cases below.

## Ad-hoc tasks
- If the user changes the family role, the ad-hoc task will also be auto-changed. For e.g. Ravi is added as CA for Brown family. It has one ad-hoc task where Ravi is added as a responsible. Now if the user changes Ravi's role from CA to CM, the system will change Ravi's task role to `CM` in ad-hoc tasks.


## Recurring Tasks

- `Ravi` and `Ruchita` is added as CA role for Brown Family. Ravi creates one trigger for a Brown family where CA is added as a Responsible. Suppose one instance of the trigger is Open while other instances are Upcoming. There are some cases mentionedbelow: 

**Case 1**: User change the role of `Ravi` from CA to CM
- In this case, `Ravi` will be removed from all upcoming instance of the trigger while Ravi role in the Open instances will be changed to to CM.

**Case 2**: Removes `Ravi` from CA role for Brown family
- In this case, the system will remove `Ravi` from all Upcoming instances of the trigger while the system changes Ravi's task role to `Other` for Open instances of the trigger.

**Case 3**: Suppose `Trupti` is added as a CA for the Brown family.
- In this case, `Trupti` will be added as a responsible for all upcoming instances. Open instances will remains as it is.

**Case 4**: Suppose `Pavan` is added as Advisor for Brown family.
- In this case,  No updates will occur in any instances of the trigger.