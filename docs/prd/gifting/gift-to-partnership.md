# Gift to Partnership

**Note** : This feature was previously implemented but it was removed based on the suggestion from Keith. (Keith said that in real life Gift can't be given to Partnership)

### System Requirement

- Gift will be allocated to the owners of that partnership. Allocation will be done based on the % share of  current owners. 

- Partnership can have another Partnership  as owner. In this case, System retrieves owners recursively and allocates gift based on their % share.

- Example case

  - We have two Partnerships. P1 & P2.  

    - P1 has two owners: Chirag (50%) & P2(50%). 
    - P2 has three owners: Ajay (40%), Chirag(30%), Chetan (30%)
    - When gift of 25000 given to P1, it will be allocated to Ajay, Chetan and Chirag as follows

    | Owners | Gift amount they will receive            |
    | ------ | ---------------------------------------- |
    | Chirag | 16250 ( 12500 `(50% from P1)` + 3750 `(30% of 12500 from P2)`) |
    | Chetan | 3750 (30% of 12500 from P2)              |
    | Ajay   | 5000 (40% of 12500 from P2)              |

- If the gift is going to a Partnership, the percentage distribution is determined at the time the gift is made. If the ownership of Partnership changes subsequently, the original Gift’s distribution is not changed.

#### UI Requirement

[Mockup of Direct Partners](https://drive.google.com/file/d/1bihtGs23aWZWSpRf_xkqB2RsCYbYAg8B/view) & [Mockup of Indirect Partner](https://drive.google.com/file/d/1u2r4rb8f2ruuhIATi-cTbeYJGNgWCgLo/view)

- When partnership has direct partners, allocation table will show % share and amount both.
- When partnership has inner level partners (in case of one partnership has other partnership), allocation table shows only amount allocated to that partners. In this case it shows info icon with amount.
- On hover of info icon it shows tooltip. Tooltip shows detail about how amount is calculated.
- [Tooltip](https://drive.google.com/file/d/18DVsjeZyEag28dc4hrvTJ0u6AouXw9hU/view) 
  - Two columns: Via & Received Amount
  - Via: Shows name of the partnership. As secondary information shows % and total amount of that partnership
  - Received Amount:  Shows amount received from that partnership



## View Gift

- On click of any row of browse page opens Gift view in dialog.

### UI requirements

[Mockup](https://drive.google.com/file/d/1mSDTqLI-gxzevV3GAS1HMUq1sU3uWlgI/view)

- If Recipient is Partnership and Partnership has inner level partners, allocation table shows only amount allocated to that partners. In this case it shows info icon with amount. 