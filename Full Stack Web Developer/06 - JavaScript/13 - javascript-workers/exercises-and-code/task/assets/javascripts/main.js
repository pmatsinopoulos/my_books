(function($) {
  $(document).ready(function() {
    var worker = new Worker('assets/javascripts/worker.js');

    $(worker).on('message', function(event) {
      var data = event.originalEvent.data;
      if(data.done) {
        $('#reverse').attr('disabled', null);
      }
      $('#result').html(data.reversedInput);
    });

    $('#reverse').on('click', function() {
      // take the input
      var userInput = $('#user-input').val().trim();

      if (userInput === '') {
        return false;
      }

      $(this).attr('disabled', 'disabled');

      worker.postMessage({userInput: userInput});

      return false;
    });
  });
})(jQuery);

