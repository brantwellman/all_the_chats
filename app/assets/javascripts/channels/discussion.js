App.discussion = App.cable.subscriptions.create("DiscussionChannel", {
  connected: function() {
  // Called when the subscription is ready for use on the server
},
  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },
  received: function(data) {
    $('.all-messages').append(data.message);
  },
  chat: function(data) {
    this.perform('chat', data);
  }
});

(function() {
  $(document).on('click', '.submit-button', function() {
    const input = $('.message-input');
    const text = input.val();
    const userId = input.data().userId;
    
    App.discussion.chat({
      text: text,
      user_id: userId
    });
    input.val('');
  });
}).call(this);
