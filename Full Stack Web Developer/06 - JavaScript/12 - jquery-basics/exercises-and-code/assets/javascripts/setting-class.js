$(document).ready(function() {
    $('button').on('click', function() {
        var $textContainer = $('#text-container');
        var classToApply = $(this).html();
        var classToRemove = $textContainer.attr('data-class-to-remove');
        if ( classToRemove !== '' && classToRemove !== undefined) {
            $textContainer.removeClass(classToRemove);
        }
        $textContainer.addClass(classToApply);
        $textContainer.attr('data-class-to-remove', classToApply);
        return false;
    });
});
