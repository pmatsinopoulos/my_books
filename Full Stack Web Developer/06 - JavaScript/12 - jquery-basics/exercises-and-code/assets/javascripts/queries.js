$(function() {
    var $pElements = $('p');
    console.log("$pElements: > ");
    console.log($pElements);
    console.log("$pElements.length: " + $pElements.length);
    console.log("$pElements[0]: > ");
    console.log($pElements[0]);
    console.log("$pElements[1]: > ");
    console.log($pElements[1]);

    var $h2Elements = $('h2');
    var firstElement = $h2Elements[0];
    console.log($(firstElement).html());
});

