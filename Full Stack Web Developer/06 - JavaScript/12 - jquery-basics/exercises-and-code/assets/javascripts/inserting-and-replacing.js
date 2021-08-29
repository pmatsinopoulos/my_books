$(document).on('click', '.add-right-link-container a', function() {
    var $image_container = $(this).parents('.image-container');

    var image_container_content = $image_container[0].outerHTML;

    $image_container.after(image_container_content);

    var $last_image_container_added = $image_container.next(".image-container");

    $last_image_container_added.css('display', 'none').fadeIn();
}).on('click', '.remove-left-link-container a', function() {
    var $image_container = $(this).parents('.image-container');
    $image_container.fadeOut(function() {
        $(this).remove();
    });
});
