$(document).ready(function(){
    var $centralImage = $('#central-image');
    $('a.choose-city').on('click', function() {
        $('.modal').modal('hide');
        var imageSrc = $(this).find('img').attr('src');
        $centralImage.attr('src', imageSrc);
    });
});
