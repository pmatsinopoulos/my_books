1. Make sure the student builds the Web page with the form exactly as requested.
2. Student should respect all the requirements that the task description lists.
3. A sample implementation is the following:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Task with Forms</title>
    <link rel="stylesheet" href="stylesheets/task.css" type="text/css"/>
  </head>

  <body>
      <h2>US Domestic Flights</h2>
      <form>
        <fieldset id="first-row-left-column">
          <legend>Flight Details</legend>
          <div class="input-group">
            <label for="city-from">Departure (*):</label>
            <select id="city-from" required="required" autofocus="autofocus" title="Select Departure City">
              <option>Departure City...</option>
              <option>Boston</option>
              <option>Los Angeles</option>
              <option>New York</option>
              <option>Phoenix</option>
              <option>San Diego</option>
              <option>Santa Barbara</option>
              <option>Tijuana</option>
            </select>
          </div>

          <div class="input-group">
            <label for="city-to">Destination (*):</label>
            <select id="city-to" required="required" title="Select Destination City">
              <option>Destination City...</option>
              <option>Boston</option>
              <option>Los Angeles</option>
              <option>New York</option>
              <option>Phoenix</option>
              <option>San Diego</option>
              <option>Santa Barbara</option>
              <option>Tijuana</option>
            </select>
          </div>

          <div class="input-group">
            <input type="checkbox" id="one-way" title="Is this One Way Flight? If yes, check this one"/>
            <label for="one-way" id="one-way-label" title="Is this One Way Flight? If yes, check this one">One Way</label>
          </div>

          <div class="input-group">
            <label for="dep-date">Dep. Date (*):</label>
            <input type="date" id="dep-date" required="required" title="Select Departure Date"/>
          </div>

          <div class="input-group">
            <label for="return-date">Ret. Date:</label>
            <input type="date" id="return-date" title="Select Return Date"/>
          </div>

        </fieldset>

        <fieldset id="first-row-right-column">
          <legend>Contact Details</legend>
          <div class="input-group">
            <label for="email">Email (*):</label>
            <input type="email" id="email" required="required" title="Fill in with the contact email"/>
          </div>

          <div class="input-group">
            <label for="mobile-phone">Mobile (*):</label>
            <input type="tel" id="mobile-phone" required="required" title="Fill in with the contact mobile number"/>
          </div>

          <div class="input-group">
            <label for="address">Address:</label>
            <input type="text" id="address" title="Fill in with the contact address" />
          </div>

          <div class="input-group">
            <label for="city">City:</label>
            <input type="text" id="city" title="Fill in with the contact city"/>
          </div>

          <div class="input-group">
            <label for="zip-code">Zip Code:</label>
            <input type="text" id="zip-code" title="Fill in with the contact zip code" />
          </div>

          <div class="input-group">
            <label for="country">Country:</label>
            <select id="country" title="Fill in with the contact country">
              <option>Select Country...</option>
              <option>Afghanistan</option>
              <!-- rest of countries go here -->
              <option>Zimbabwe</option>
            </select>
          </div>
        </fieldset>

        <div style="clear: both;"></div>

        <fieldset id="second-row">
          <legend>Ticket Details</legend>

          <div class="input-group">
            <label for="number-of-tickets"># of Tickets (*):</label>
            <input type="number" id="number-of-tickets" placeholder="Number of tickets" min="1" max="2" value="1" required="required" title="Specify Number of Tickets"/>
          </div>

          <fieldset id="second-row-left-column">
            <legend>Passenger #1</legend>

            <div class="input-group">
              <label for="first-name-1">First Name (*):</label>
              <input type="text" id="first-name-1" required="required" title="Specify First Passenger First Name"/>
            </div>

            <div class="input-group">
              <label for="last-name-1">Last Name (*):</label>
              <input type="text" id="last-name-1" required="required" title="Specify First Passenger Last Name"/>
            </div>

            <div class="input-group">
              <label for="passport-1">Passport (*):</label>
              <input type="text" id="passport-1" required="required" title="Specify First Passenger Passport Number"/>
            </div>

            <div class="input-group">
              <label for="date-of-birth-1">DoB (*):</label>
              <input type="date" id="date-of-birth-1" required="required" title="Specify First Passenger Date of Birth"/>
            </div>

            <div class="input-group">
              <label for="male-1" class="gender-label">Male</label>
              <input type="radio" id="male-1" name="gender-1" class="gender-radio"/>
              <label for="female-1" class="gender-label">Female</label>
              <input type="radio" id="female-1" name="gender-1" class="gender-radio"/>
            </div>
          </fieldset>


          <fieldset id="second-row-right-column">
            <legend>Passenger #2</legend>

            <div class="input-group">
              <label for="first-name-2">First Name:</label>
              <input type="text" id="first-name-2" title="Specify Second Passenger First Name"/>
            </div>

            <div class="input-group">
              <label for="last-name-2">Last Name:</label>
              <input type="text" id="last-name-2" title="Specify Second Passenger Last Name"/>
            </div>

            <div class="input-group">
              <label for="passport-2">Passport:</label>
              <input type="text" id="passport-2" title="Specify Second Passenger Passport Number"/>
            </div>

            <div class="input-group">
              <label for="date-of-birth-1">DoB:</label>
              <input type="date" id="date-of-birth-2" title="Specify Second Passenger Date of Birth"/>
            </div>

            <div class="input-group">
              <label for="male-2" class="gender-label">Male</label>
              <input type="radio" id="male-2" name="gender-2" class="gender-radio"/>
              <label for="female-2" class="gender-label">Female</label>
              <input type="radio" id="female-2" name="gender-2" class="gender-radio"/>
            </div>
          </fieldset>

        </fieldset>

        <div style="clear: both;"></div>

        <div class="input-group vertical">
          <label for="message">Your Message To Booking Agent:</label>
          <textarea id="message" rows="5" placeholder="Type in a message to booking agent (optional)"></textarea>
        </div>

        <div class="input-group">
          <input type="submit" value="Search"/>
        </div>

      </form>

  </body>

</html>
```
and the CSS:
``` css
* {
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

html {
    font-size: 62.5%;
}

body {
    font-size: 1.6rem;
    text-align: center;
    margin-top: 20px;
}

fieldset {
    margin-bottom: 10px;
}

legend {
    text-align : left;
    margin: 0 5px 10px;
    padding: 0 10px;
}

/* Divide the page on area blocks */


#first-row-left-column {
    margin-left: 19%;
    margin-right: 1%;
}

#first-row-right-column {
    margin-right: 19%;
    margin-left: 1%;
}

#first-row-left-column,
#first-row-right-column {
    width: 30%;
    float: left;
}

#second-row {
    margin-left: 19%;
    width: 62%;
}

#second-row-left-column,
#second-row-right-column {
    width: 48%;
    float: left;
    margin-left: 1%;
    margin-right: 1%;
}

/* ---- end of dividing the page to areas --- */

.input-group {
    margin-bottom: 10px;
}

h2 {
    margin-bottom: 20px;
}

select, input {
    width: 150px;
}

input[type="number"] {
    text-align: right;
}

input[type="submit"] {
    background-color: maroon;
    color: White;
    padding: 5px 10px;
    font-size: 1.8rem;
}

input[type="submit"]:hover {
    background-color: #000096;
    color: White;
    cursor: pointer;
}

label {
    display: inline-block;
    width: 104px;
    text-align: right;
}

#one-way-label,
.gender-label {
    display: inline;
}

#one-way,
.gender-radio {
    display: inline;
    width: auto;
}

.vertical {
    width: 60%;
    text-align: left;
    margin: 0 20%;
}

.vertical label {
    width: 100%;
    text-align: left;
    margin-bottom: 10px;
}

textarea {
    width: 100%;
    resize: none;
    margin-bottom: 10px;
}
```

