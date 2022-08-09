# Pull Gift to Trust

## System Rule

- Shows all lifetime gifting data given to Split-Interest trusts from the Gifting app.
    - For e.g. Assume that Athena has a `CRUT` trust. Now 2 different individuals make gifts to this CRUT trust. So the total gift given by both individuals to the CRUT Trust is pulled here.
- Following data will be pulled from Gifting
    - Total Gift FMV: It pulled the total FMV amount of the gifts given to the trust
    - Total Charitable Gift: It pulled the total Charitable amount of the gifts given to the trust
    - Total Gift Value: It pulled the total GTV amount of the gifts given to the trust
    - Total Discount: Formula will be the same as Gifting. Consider only gifts having a Discount.  


## UI Rule

- Applicable only for `CRUT`, `CLAT`, `CRAT`, `GRAT` & `QPRT` type trust
- Pulled gifts are visible in the `Gift Summary` section on the View page of only.
- When trust doesn't have any received Gifts, shows `0` in all above fields.
- `Total Charitable Gift` are applicable for `CRUT`, `CLAT` & `CRAT` trusts.


## UX Rule
Mockups