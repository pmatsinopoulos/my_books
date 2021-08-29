// File: app/assets/javascripts/delete_article
//
$(document).ready(function(){
    $('.js-delete-article').on('click', function(event) {
        var $button = $(this);
        event.preventDefault();
        var answer = confirm('Are you sure that you want to delete this article?');
        if (answer) {
            $.ajax({
                url: $button.attr('href'),
                method: 'DELETE',
                headers: {'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')},
                success: function(data, textStatus, jqXHR) {
                    console.log('article ' + article_id + ' deleted!');
                    $button.
                      closest('.article-row-in-list-of-articles').
                      fadeOut(function() {
                        $(this).remove();
                      });
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert('textStatus: ' + textStatus + ', errorThrown: ' + errorThrown);
                }
            });
        }
    });

    $('.article-row-in-list-of-articles a[data-remote][data-method="delete"]').on('ajax:success', function() {
        var $button = $(this);
        $button.
          closest('.article-row-in-list-of-articles').
          fadeOut(function() {
            $(this).remove();
          });
    });
});
