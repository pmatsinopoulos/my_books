1. Student needs to implement that page exactly as requested.
2. You need to make sure that it complies to all the requirements that the task sets and that the student is using the techniques learned in this chapter.
3. Here is a sample implementation:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Task with Advanced Selectors</title>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="stylesheets/task.css" type="text/css"/>
  </head>

  <body>

    <h2 class="text-center">Global Population</h2>

    <table>
      <thead>
        <tr><th>&nbsp;</th><th colspan="4">Years</th></tr>
        <tr><th>Country Name</th>
            <th>2011</th>
            <th>2012</th>
            <th>2013</th>
            <th>2014</th>
        </tr>
      </thead>
      <tbody>

        <tr>
          <th>Afghanistan</th>
          <td>28,809,167</td>
          <td>29,726,803</td>
          <td>30,682,500</td>
          <td>31,627,506</td>
        </tr>

        <tr>
          <th>Bahamas, The</th>
          <td>366,711</td>
          <td>372,388</td>
          <td>377,841</td>
          <td>383,054</td>
        </tr>

        <tr>
          <th>Cabo Verde</th>
          <td>495,159</td>
          <td>500,870</td>
          <td>507,258</td>
          <td>513,906</td>
        </tr>

        <tr>
          <th>Denmark</th>
          <td>5,570,572</td>
          <td>5,591,572</td>
          <td>5,614,932</td>
          <td>5,639,565</td>
        </tr>

        <tr>
          <th>Ecuador</th>
          <td>15,177,280</td>
          <td>15,419,493</td>
          <td>15,661,312</td>
          <td>15,902,916</td>
        </tr>

        <tr>
          <th>Faeroe Islands</th>
          <td>48,492</td>
          <td>48,393</td>
          <td>48,292</td>
          <td>48,221</td>
        </tr>

        <tr>
          <th>Gabon</th>
          <td>1,577,298</td>
          <td>1,613,489</td>
          <td>1,650,351</td>
          <td>1,687,673</td>
        </tr>

        <tr>
          <th>Haiti</th>
          <td>10,144,890</td>
          <td>10,288,828</td>
          <td>10,431,249</td>
          <td>10,572,029</td>
        </tr>

        <tr>
          <th>Iceland</th>
          <td>319,014</td>
          <td>320,716</td>
          <td>323,764</td>
          <td>327,589</td>
        </tr>

        <tr>
          <th>Jamaica</th>
          <td>2,699,838</td>
          <td>2,707,805</td>
          <td>2,714,734</td>
          <td>2,721,252</td>
        </tr>

      </tbody>
    </table>

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
    font-family: 'Montserrat', sans-serif;
}

body {
    font-size: 1.6rem;
    margin-top: 20px;
}

.text-center {
    text-align: center;
}

h2 {
    margin-bottom: 10px;
}

table {
    margin: 0 auto;
    border-collapse: collapse;
}

table,
table th,
table td {
    border: 1px solid maroon;
    padding: 5px 10px;
}

table thead th {
    background-color: #FFE4B5;
}

table tbody tr:nth-child(odd) {
    background-color: #000096;
    color: white;
}

table tbody tr:nth-child(even) {
    background-color: lightgray;
    color: black;
}

table thead tr:first-child th:first-child{
    border-right: 0;
}

table thead tr:first-child th:nth-child(2) {
    border-left: 0;
}

table tbody tr th {
    text-align: left;
}
table tbody tr td {
    text-align: right;
}

table tbody tr th::before {
    content: "";
    display: inline-block;
    width: 5px;
    height: 5px;
    margin-right: 5px;
    border: 1px solid red;
    border-radius: 50%;
    vertical-align: middle;
    background-color: red;
}
```
