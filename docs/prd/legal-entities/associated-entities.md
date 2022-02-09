# Associated Entities

## Overview

While looking at the Entity tasks or Entity Tax Status tab, we want to show the data of related entities. Related entities means entities which are associated with given Individuals. 

While looking at the Entity tasks or Entity status(Tax) data of Individuals, we want to show the data of their family members like Children, Father, Mother.  Also when Children becomes Adults, we don't want to show their data. So system allows to manually select association. Clarius team will define the association and system will use that to pull data of associated entities.

Association can be defined only for Individual and Joint. 

Sometimes Individuals are single,so association will be defined at Individual level. When Individual is part of any Joint, association will be only defined at the Joint level. There won't be any own association of Individual in such case.

## System Rule

- If Individual is single, shows own association. 

- If Individual is associated in any Joint, shows association of Joint.

- Suppose Individual is single, so it will have its own association defined. Now Joint is created for that Individual, so now own association of that Individual won't be used anymore. System will only use association of Joint. 

## UX Rules

- Associated Entities tab is applicable only for Individual and Joint.
- The default value will be set to `False`. If the user wants to add an association, set its value to `Yes`.
- For Joint, both Individuals of the Joint are auto associated. No way to disable that association. System shows lock icon for that. On hover, shows tooltip message.

## UI Rules

- Tooltip message: `Change is not allowed for Individuals associated with this Joint`



## TODO

- Our assumption is Individual will always associated in one Joint. It won't have more than one Joint. We need to check this in database about data inconsistency.

Query: 

```
SELECT 
    id, Name, type, individual1_id, individual2_id
FROM
    legal_entity
WHERE
    individual1_id IN (SELECT 
            individual2_id
        FROM
            legal_entity
        WHERE
            type = 'JOINT')
        OR individual2_id IN (SELECT 
            individual1_id
        FROM
            legal_entity
        WHERE
            type = 'JOINT');
```

