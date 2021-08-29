// File: app/assets/javascripts/cable/subscriptions/chat.js
//
App.chatChannel = App.cable.subscriptions.create({
    channel: "ChatChannel"
}, {
    connected: function() {
        console.log('connected subscription for chat channel');
    },
    received: function(data) {
        var $messagesReceived = $('#messages_received');
        var previousValue = $messagesReceived.val();
        if (previousValue !== '')
            previousValue = previousValue + '\n';
        $messagesReceived.val(previousValue + data['message']);
        $messagesReceived.scrollTop(
            $messagesReceived.prop('scrollHeight') - $messagesReceived.height()
        );
    }
});
