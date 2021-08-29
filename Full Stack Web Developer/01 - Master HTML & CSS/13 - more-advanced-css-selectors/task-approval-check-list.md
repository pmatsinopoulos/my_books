1. The student needs to keep the HTML clean from styling.
2. Needs to use classes to style any part of the table.
3. A sample HTML and CSS implementation is given here. So, compare student's work with this sample. 
We are trying to use here techniques that the student has learned in the chapters so far, even if 
same styling could be achieved with other techniques.

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Invoice Template</title>
    <link rel="stylesheet" href="stylesheets/task.css" type="text/css">
  </head>

  <body>
    <table class="whole-width" border="0" cellspacing="0">
      <tr>
        <td rowspan="2" colspan="2" id="company-name">Company Name</td>
        <td colspan="2">INVOICE#________________</td>
      </tr>
      <tr>
        <td colspan="2">INVOICE DATE:___________</td>
      </tr>

      <tr class="billing-details">
        <td colspan="3"></td>
        <td class="bold-text bottom-border">BILL TO:</td>
      </tr>

      <tr class="billing-details">
        <td colspan="3">Street Address</td>
        <td>Name</td>
      </tr>

      <tr class="billing-details">
        <td colspan="3">City, ST ZIP CODE</td>
        <td>Company Name</td>
      </tr>

      <tr class="billing-details">
        <td colspan="3">Phone [(000) 00 - 00000]</td>
        <td>Street Address</td>
      </tr>

      <tr class="billing-details">
        <td colspan="3">Fax [(000) 00 - 00000]</td>
        <td>Phone</td>
      </tr>

      <tr>
        <td colspan="4">Payment Terms: Invoice Date + 30days</td>
      </tr>

      <tr>
        <th class="column-header">LINE</th>
        <th class="column-header">QTY ORDERED</th>
        <th class="column-header">PRICE/EXT</th>
        <th class="column-header">PRICE</th>
      </tr>

      <tr class="odd order-item">
        <td class="row-index">1</td>
        <td class="number">1,000.00</td>
        <td class="number">$1.50</td>
        <td class="number">$1,500.00</td>
      </tr>

      <tr class="even order-item">
        <td class="row-index">2</td>
        <td class="number">3,000.00</td>
        <td class="number">$4.00</td>
        <td class="number">$12,000.00</td>
      </tr>

      <tr class="odd order-item">
        <td class="row-index">3</td>
        <td class="number">3,000.00</td>
        <td class="number">$2.00</td>
        <td class="number">$6,000.00</td>
      </tr>

      <tr class="even order-item">
        <td class="row-index">4</td>
        <td class="number">500.00</td>
        <td class="number">$1.00</td>
        <td class="number">$500.00</td>
      </tr>

      <tr class="odd order-item last-row">
        <td class="row-index">5</td>
        <td class="number">800.00</td>
        <td class="number">$2.00</td>
        <td class="number">$1,600.00</td>
      </tr>

      <tr class="even order-item">
        <td colspan="3" class="text-align-right">Subtotal:</td>
        <td class="number">$21,600.00</td>
      </tr>

      <tr class="odd order-item">
        <td colspan="3" class="text-align-right">Tax Rate:</td>
        <td class="text-align-right">23%</td>
      </tr>

      <tr class="even order-item">
        <td colspan="3" class="text-align-right">Total:</td>
        <td class="number">$26,568.00</td>
      </tr>

      <tr class="odd order-item">
        <td colspan="3" class="text-align-right">Make all checks payable to:</td>
        <td id="company-name-on-footer">Company Name</td>
      </tr>

    </table>

    <p class="thank-you">Thank you for your business.</p>

  </body>

</html>
```

``` css
body {
    background-color: lightblue;
    font-family: Arial, Helvetica, sans-serif;
}

.text-align-right {
    text-align: right;
}

#company-name {
    font-size: 24px;
}

#company-name-on-footer {
    color: darkblue;
    text-decoration: underline;
}

.whole-width {
    width: 100%;
}

.billing-details {
    background-color: darkblue;
    color: white;
}

.bold-text {
    font-weight: bold;
}

.column-header {
    color: white;
    background: red;
}

.row-index {
    text-align: center;
}

.number {
    text-align: right;
}

.odd {
    background-color: White;
    color: Maroon;
}

.even {
    background-color: lightgray;
    color: Black;
}

th, td {
    padding-top: 5px;
    padding-bottom: 5px;
    padding-left: 5px;
    padding-right: 5px;
}

tr.order-item td {
    padding-top: 10px;
    padding-bottom: 10px;
}

.thank-you {
    text-align: right;
    font-size: 32px;
    color: Green;
}

.last-row td {
    border-bottom: 1px solid black;
}

.bottom-border {
    border-bottom: 1px solid white;
}
```
