// File: app/assets/javascript/send_message.js
//
$(document).ready(function() {
    $('#btn-send-message').on('click', function(event) {
        event.preventDefault();

        var $textWithMessage = $('#message_to_send');
        var messageToSend = $textWithMessage.val().trim();
        if (messageToSend !== '') {
            App.chatChannel.send({message: messageToSend});
            $textWithMessage.val('');
        }
    });
});
