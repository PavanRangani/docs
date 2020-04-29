# Payment

## Edit Payment

- Status, Notes, Payment mode can be changed any time
- `Payment Edit` action can be used instead of `Make Payment` to make the payment. User can change the `Payment Status`  to  `Paid` and fill the other details.

### UI Requirement

[Mockup](https://drive.google.com/file/d/19Vos4OK4XSz9zFghIzlEidef6c4P_9cF/view)

## Make Payment

- Only available for payment with status Pending or Overdue
- Its same as the `Payment edit`, only status will be preset to `Paid`

### UI Requirement

[Mockup](https://drive.google.com/file/d/19Vos4OK4XSz9zFghIzlEidef6c4P_9cF/view)

## Delete Payment

- Payments of `One-time Grant` and `Custom Grant` can be deleted.
- Payments of `Multi-year Grant` can’t be deleted.
- When last payment is deleted its `Grant` will be deleted 
  - For `One-time Grant` only one payment is available. So when that Payment is deleted, Grant will be deleted.
  - For `Custom Grant` when only one payment is available and that payment is deleted, Grant will also be deleted.

### UI Requirement

- For Multi Year Grant payment, Delete action will be disable. On hover it will show tooltip
- Tooltip message: You can't delete payments of Multi-year Grant

## View Amount change history

- Shows history of amount changes for the Payment Terms.
- It’s available only after an amount is change once.

## 