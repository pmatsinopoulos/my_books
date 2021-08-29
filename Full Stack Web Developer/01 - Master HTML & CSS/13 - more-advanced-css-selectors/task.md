1. Create an invoice template like the one below.

 <div id="media-container-image-Invoice Template">
  <div id="media-title-image-Invoice Template">Invoice Template</div>
  <img src="./images/invoice-template-created-with-tables.png"
      alt="Invoice Template" title="Invoice Template" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
 
2. In order to help you out here, we are providing you with the HTML. But you need to provide the CSS rules inside the corresponding CSS file:

 ``` html
 <!DOCTYPE html>
 <html>
   <head>
     <meta charset="utf-8">
     <title>Invoice Template</title>
     <link rel="stylesheet" href="stylesheets/task.css" type="text/css">
   </head>
 
   <body>
     <table border="0" cellspacing="0">
       <tr>
         <td rowspan="2" colspan="2" id="company-name">Company Name</td>
         <td colspan="2">INVOICE#________________</td>
       </tr>
       <tr>
         <td colspan="2">INVOICE DATE:___________</td>
       </tr>
 
       <tr>
         <td colspan="3"></td>
         <td>BILL TO:</td>
       </tr>
 
       <tr>
         <td colspan="3">Street Address</td>
         <td>Name</td>
       </tr>
 
       <tr>
         <td colspan="3">City, ST ZIP CODE</td>
         <td>Company Name</td>
       </tr>
 
       <tr>
         <td colspan="3">Phone [(000) 00 - 00000]</td>
         <td>Street Address</td>
       </tr>
 
       <tr>
         <td colspan="3">Fax [(000) 00 - 00000]</td>
         <td>Phone</td>
       </tr>
 
       <tr>
         <td colspan="4">Payment Terms: Invoice Date + 30days</td>
       </tr>
 
       <tr>
         <th>LINE</th>
         <th>QTY ORDERED</th>
         <th>PRICE/EXT</th>
         <th>PRICE</th>
       </tr>
 
       <tr>
         <td>1</td>
         <td>1,000.00</td>
         <td>$1.50</td>
         <td>$1,500.00</td>
       </tr>
 
       <tr>
         <td>2</td>
         <td>3,000.00</td>
         <td>$4.00</td>
         <td>$12,000.00</td>
       </tr>
 
       <tr>
         <td>3</td>
         <td>3,000.00</td>
         <td>$2.00</td>
         <td>$6,000.00</td>
       </tr>
 
       <tr>
         <td>4</td>
         <td>500.00</td>
         <td>$1.00</td>
         <td>$500.00</td>
       </tr>
 
       <tr>
         <td>5</td>
         <td>800.00</td>
         <td>$2.00</td>
         <td>$1,600.00</td>
       </tr>
 
       <tr>
         <td colspan="3">Subtotal:</td>
         <td>$21,600.00</td>
       </tr>
 
       <tr>
         <td colspan="3">Tax Rate:</td>
         <td>23%</td>
       </tr>
 
       <tr>
         <td colspan="3">Total:</td>
         <td>$26,568.00</td>
       </tr>
 
       <tr>
         <td colspan="3">Make all checks payable to:</td>
         <td id="company-name-on-footer">Company Name</td>
       </tr>
 
     </table>
 
     <p>Thank you for your business.</p>
 
   </body>
 
 </html>
 ```

3. You will need to pay attention to the following:

    1. Do not write CSS rules inside the HTML document
    2. Use a background color for the body
    3. Use the font family "Arial, Helvetica, sans-serif" for the body
    4. The line items of the invoice have higher height than the other rows of the invoice. You will need to adjust the padding property for those lines.
    5. Use id styling and class styling.
    6. See that the table needs to occupy the whole width of the browser window.
    7. Here is a list of CSS properties that might be handy to solve this exercise:

        1. `background-color`, to set the background color
        2. `font-family`, to set the font set
        3. `text-align`, to align the text within a cell. Takes the values `right`, `left`, `center`, `justify`
        4. `font-size`, to set the font size. Try values like 16px, or 12px or similar.
        5. `width`, to specify the width of an element with regards to its parent. Try 100% if you want to occupy the whole width
        6. `font-weight`, to set the font weight to value like `normal`, `bold`, `bolder`, `light` e.t.c.
        7. `padding-top`, to set the free space between the text/content and its border, in the top direction. Try to set that in pixels, like the font-size.
        8. `padding-bottom`, similar to `padding-top` but for the bottom side of the text/content.
        9. `padding-left`, similar to `padding-top` but for the left side of the text/content.
        10. `padding-right`, similar to `padding-top` but for the right side of the text/content.
        11. `border-bottom` works similar to `border` but attaches a border only at the bottom of an area.
        12. `border-top`, similar to `border` but for the top side of the area.
        13. `border-left`, similar to `border` but for the left side of the area.
        14. `border-right`, similar to `border` but for the right side of the area.
        15. For the color values, you can use values like:
        
            1. `lightblue`
            2. `darkblue`
            3. `white`
            4. `red`
            5. `maroon`
            6. `black`
            7. `lightgray`
        
