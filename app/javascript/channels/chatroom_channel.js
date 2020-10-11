import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        messagesContainer.innerHTML = data;
        const messages = messagesContainer.querySelectorAll('.message-container');
        messages.forEach(message => {
          if (message.dataset.user === messagesContainer.dataset.user) {
            message.classList.add('blue');
          };
        })
      }
    });
  }
}
  
export { initChatroomCable };