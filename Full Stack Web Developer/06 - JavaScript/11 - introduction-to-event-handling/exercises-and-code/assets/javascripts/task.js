window.onload = function(){
    var button1 = document.getElementById('button-1');
    var button2 = document.getElementById('button-2');
    var bigButtonWidth = "300px;";
    var smallButtonWidth = "110px";

    button1.style = "width: " + smallButtonWidth;
    button2.style = "width: " + smallButtonWidth;

    button1.addEventListener('click', function() {
        this.style = "width: 300px;";
        button2.style = "width: 110px;";
    });

    button2.addEventListener('click', function() {
        this.style = "width: " + bigButtonWidth;
        button1.style = "width: " + smallButtonWidth;
    });
};
