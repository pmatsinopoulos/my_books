$(document).ready(function() {
    $("[data-class=change-bg-color-button]").on('click', function() {
        var color = $(this).html();
        var $colorContainer = $('#color-container');
        $colorContainer.css('background-color', color);
        return false;
    });
});
