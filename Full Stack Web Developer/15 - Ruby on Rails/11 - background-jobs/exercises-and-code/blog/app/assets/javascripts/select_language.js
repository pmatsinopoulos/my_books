// File: app/assets/javascripts/select_language.js
//
$(document).ready(function () {
    $('select#locale').on('change', function () {
        var $selectLanguageForm = $(this).closest('form');
        $selectLanguageForm.submit();
    });
});
