window.onload = function() {
    var input1 = document.getElementById('name');
    var input2 = document.getElementById('color');

    var changeBorderOnBlur = function() {
        if (this.value === '') {
            this.style="border: 1px solid red;";
        }
        else {
            this.style="border: 1px solid green;";
        }

    };

    var changeBorderOnFocus = function() {
        this.style = "border: 1px solid blue;";
    };

    var inputs = [input1, input2];
    for (var i = 0; i < inputs.length; i++) {
        inputs[i].addEventListener('blur', changeBorderOnBlur);
        inputs[i].addEventListener('focus', changeBorderOnFocus);
    }
};
