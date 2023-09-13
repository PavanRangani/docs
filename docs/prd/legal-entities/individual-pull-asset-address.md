# Pull Asset address to the Individual Address

### System Rule
- System can pull the address of `Real Estate` type assets of the Individual to the Address.
- System won't auto remove the address from the Individual when an asset is transferred. 

### UX Rule
- Shows `Select Address` as a link with each addresses.
- On click, shows the `Select Address` dropdown with `X` button. On click of `X`, drodown is removed and shows `Select Address` link.
- Dropdown shows the active `Real Estate` type assets of the Individual. (Dispose and Transferred asset isn't shown)
    - It is alphabetical sorted dropdown. 
    - Asset `Nickname` is shown in Primary information and `Address` of the asset is shown in the Secondary information.
    - If Asset has no address, shows `-` in the Secondary information.
- When user selects any asset from the dropdown, address of that asset will be prefills and shown it as disabled.
- Shows the asset nickname as a header of address. User can able to change the address name.
- When user changes the asset from the dropdown, header and address both are changed.
- When user removes the asset from the dropdown, system reset the address. 
- When user saved it and again opens the edit dialog, shows pulled asset name as a link. Format of the link is: `Pulled from {Nickname of asset}`
    - If Asset name is too long, shows link in multiline. (Never shows elipsis)


### UI Rule

Mockup


### Nickname shown as Address header

#### UX Rule
- Shows the nickname of the asset as an address header.
- User can able to change the header name.
- If user change the asset from the dropdown, address header is also changed.


### Auto Change the address from the Address

#### System Rule
- When user change the address from the asset, system will auto change the address of Individual where this asset is pulled.
- When an asset is transferred to another entity, the system will not remove the address from the Individual. 


### Auto remove the address from the Address

#### System Rule
- When user remove the address from the asset, system will reset the address from the Individual address.
- When pulled records are removed from the Asset list, the system will remove addresses from the Individual. 
    - See following cases when pulled records are removed from the list
        - When Individual is removed from the Owner of the Partenship or Trustor or trustee
        - When `Pull to Owners` switched to OFF for Partership or Trust
        - When Ownership or Trustor or trustee is changed.


### Auto delete the Asset Address
#### System Rule
- When a user Deletes the asset, the system will remove the address from the Individual.
- When a user Dispose the asset, it is also removed from the Individual address.

 