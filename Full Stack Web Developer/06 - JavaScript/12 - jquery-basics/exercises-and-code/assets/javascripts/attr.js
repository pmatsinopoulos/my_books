$(document).ready(function() {
    $('#set-value').on('click', function() {
        var $inputBox = $('#name');
        $inputBox.attr('value', 'George');
        return false;
    });
    $('#clear-value').on('click', function() {
        var $inputBox = $('#name');
        $inputBox.attr('value', '');
        var $valueContainer = $('#value-container');
        $valueContainer.html('');
        return false;
    });
    $('#read-value').on('click', function() {
        var $inputBox = $('#name');
        var value = $inputBox.attr('value');
        var $valueContainer = $('#value-container');
        $valueContainer.html(value);
        return false;
    });
    $('#remove-input-box-button').on('click', function() {
        var $inputBox = $('#name');
        $inputBox.remove();
        return false;
    });
    $('#add-input-box-button').on('click', function(){
        var $form = $('form');
        $form.prepend('<input type="text" id="name" placeholder="Give your name" value=""/>');
        return false;
    });
});
