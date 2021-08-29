1. Create a Web page with a form like this:

  <div id="media-container-image-task-with-form">
      <div id="media-title-task-with-form">Task With Form</div>
      <img src="http://tech-career-booster-courses.s3.amazonaws.com/01-full-stack-web-developer/sections/01-html-and-css/chapters/27-forms/assets/images/task-with-form.jpg"
        alt="Task With Form" title="Task With Form" style="border:1px solid gray; margin: 10px 5px;"></img>
  </div>
  
2. Here are some things that you need to take care of and some hints to help you develop this page:
    1. We remind you that `form` is a block level element.
    2. `fieldset` is also a block level element.
    3. You may not need divs to divide your page into areas. Since `fieldset` is a block level element, you can use only fieldsets to divide your page.
    4. The required fields are:
        1. departure city
        2. destination city
        3. departure date
        4. email
        5. mobile
        6. number of tickets
        7. first passenger first name
        8. first passenger last name
        9. first passenger passport
        10. first passenger date of birth
    5. Make sure you use the appropriate `type` value when defining your `input` elements.
    6. Number of tickets should take one of the two values: 1, 2. And the initial value is 1.
    7. When page loads the focus should be on the departure city field.
    8. The optional message area cannot be resized. Its height is such that one can type in 5 rows before scrolling is enabled.
    9. Use `title` attribute for all the input elements to further explain what needs to be entered in each field.
    10. For the drop downs with the cities, you can use the following list:
        1. Boston
        2. Los Angeles
        3. New York
        4. Phoenix
        5. San Diego
        6. Santa Barbara
        7. Tijuana
