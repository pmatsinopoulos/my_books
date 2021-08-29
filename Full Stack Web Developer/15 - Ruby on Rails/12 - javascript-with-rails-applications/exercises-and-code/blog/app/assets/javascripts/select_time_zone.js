// File: app/assets/javascripts/select_timezone.js
//
$(document).ready(function () {
    $('select#time_zone').on('change', function () {
        var $selectTimeZoneForm = $(this).closest('form');
        $selectTimeZoneForm.submit();
    });
});
