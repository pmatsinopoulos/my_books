$(function(){
    $('#profile-details-form button[type=submit]').on('click', function() {
        var invalidForm = false;
        var $firstInvalidField = null;
        $('.mandatory').each(function() {
            var $input = $(this);
            var value = $input.val();
            if (value.trim() === '') {
                if (!$input.hasClass('has-error')) {
                    $input.addClass('has-error');
                }

                // We save the first invalid field, so that we can move the focus on it.
                if ($firstInvalidField === null) {
                    $firstInvalidField = $input;
                }

                // We flag the form as invalid, so that we do not submit it.
                invalidForm = true;
            }
            else {
                $input.removeClass('has-error');
            }
        });

        if (invalidForm) {
            alert('Please, fill in the mandatory form fields');

            // give the focus on the first invalid field
            if ($firstInvalidField !== null) {
                $firstInvalidField.focus();
            }
            return false; // do not submit the form, since we prevent default handler from running
        }
    });
});

