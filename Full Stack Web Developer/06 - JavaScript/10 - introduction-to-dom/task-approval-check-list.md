A. Your student should answer the following questions. Note that the correct answers in bold:

### Question #1 - What does DOM stand for?
*Multiple Choice*

1. Data On the Motherboard
2. **Document Object Model**
3. Disk On Module
4. Date Of Manufacture

### Question #2 - Which is the variable that allows you to have access to DOM programmatically?
*Fill In The Blanks*

`______document___`

### Question #3 - Which is the method that we use to select an element by id?
*Multiple Choice*

1. `document.getElementsByIds()`
2. `document.getFirstElementById()`
3. `getElementsById()`
4. **`document.getElementById()`**

### Question #4 - Which is the method that we use to select elements by tag?
*Multiple Choice*

1. **`document.getElementsByTagName()`**
2. `document.getElementByTagNames()`
3. `document.getElementByTagsName()`
4. `document.getElementByTagsNames()`

### Question #5 - Which is the method that we use to select elements by class name?
*Multiple Choice*

1. `document.getElementByClassName()`
2. **`document.getElementsByClassName()`**
3. `document.getElementsByClassNames()`
4. `document.getElementByClassNames()`

### Question #6 - Which is the method that we use to select elements by a CSS selector?

1. `document.querySelectByCSS()`
2. `document.getSelectorAll()`
3. **`document.querySelectorAll()`**
4. `document.queryByCSS()`

### Question #7 - The method `document.getElementById()` returns...
*Multiple Choice*

1. An array of elements matching the id given as argument.
2. **A specific element matching the id given as argument.**
3. An array of elements matching the ids given as argument.

### Question #8 - The method `document.getElementsByTagName()` returns...
*Multiple Choice*

1. **An array of elements matching the tag name given as argument.**
2. A specific element matching the tag name given as argument.
3. An array of elements matching the tag names given as argument.

### Question #9 - The method `document.getElementsByClassName()` returns...
*Multiple Choice*

1. **An array of elements matching the class name given as argument.**
2. A specific element matching the class name given as argument.
3. An array of elements matching the class names given as argument.

### Question #10 - The method `document.querySelectorAll()` returns...
*Multiple Choice*

1. **An array of elements matching the CSS selector given as argument.**
2. A specific element matching the CSS selector given as argument.
3. An array of elements matching the CSS selectors given as argument.

B. The student should create the necessary content inside the `assets/javascripts/task.js` file so that the final
page displays, dynamically, the content required. A sample implementation is given here:
``` javascript
var form = document.getElementById('form-with-countries-select-box');
form.innerHTML = "<select><option>USA</option><option>Germany</option><option>Italy</option><option>Spain</option></select><button type='submit'>Save</button>";
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.
