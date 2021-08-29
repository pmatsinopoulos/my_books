window.onload = function() {

    var formButton = document.getElementById('save-button');

    formButton.onclick = function() {
        var answer = confirm('Are you sure that you want to save this?');
        if (answer) {
            formButton.innerHTML = "Saved";
            formButton.disabled = true;
        }
        return false; // Does let the event bubble up and does not let run the default handler.
    };

};

