# Zip input

## Overview

- Zip input designed to support USA and Canada Zip codes

### USA Zip code format

- Either 5 or 9 digits long
- Only Numeric 
- 5 digits followed by hyphen and four digits
- for e.g. `20521-9000`

### Canada Zip code format

- 6 characters long
- Alphanumeric
- 3 characters followed by space and then after 3 characters
- For e.g. `K1A 0B1`

## Behavior

- Allows alphanumeric characters as input
- Allows maximum 9 characters to input
- If input is only number then it should be either 5 or 9
- If input is alphanumeric then it should be 6 characters long
- On blur performs formating 
  - If input is only numbers and it is 9 numbers long, then adds hyphen after 5 number
  - If input is only alphanumeric and it is 6 characters long adds space at 4th position
- On blur perform validation

