// File: app/assets/javascripts/new_comment.js
//
$(document).ready(function () {
    var $newCommentForm = $('#new_comment_form');

    $newCommentForm.find('input[type=submit]').on('click', function (e) {
        e.preventDefault();

        var $newComment = $newCommentForm.find('#new_comment');
        var $list = $('#comments-list');

        $.ajax({
            url: $newCommentForm.attr('action'),

            method: 'POST',

            headers: {'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')},

            data: {new_comment: $newComment.val().trim() },

            success: function(data, textStatus, jqXHR) {
                $list.prepend(data);
            }
        })
    });
});
