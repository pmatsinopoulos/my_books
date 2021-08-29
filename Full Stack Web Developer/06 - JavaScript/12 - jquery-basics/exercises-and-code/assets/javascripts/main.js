$(document).ready(function() {
    // Install a handler for the click event on the
    // submit form button.
    $('#submit-form-button').on('click', function(){
        // get access to the input control
        var $inputControl = $('#first-name');
        // get the value of the input control
        var value = $inputControl.val();
        if (value.trim() === "") {
            alert("You need to provide your first name");
            return false; // this "return false" here will prevent the default button "click" handler from being fired
        }
    });
});

