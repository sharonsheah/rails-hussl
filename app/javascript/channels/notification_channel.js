import consumer from "./consumer";

const initNotificationCable = () => {
  const notificationList = document.getElementById('js-notification-list');
  if (notificationList) {
    const id = notificationList.dataset.user;

    consumer.subscriptions.create({ channel: "NotificationChannel", id: id }, {
      received(data) {
        console.log(data); // called when data is broadcast in the cable
        notificationList.insertAdjacentHTML('afterbegin', data.notification_body);
        
      },
    });
  }
  // const notificationCounter = document.getElementById('');
  // if (notificationCounter) {
  //   const id = notificationCounter.dataset.user;

  //   consumer.subscriptions.create({ channel: "NotificationChannel", id: id }, {
  //     received(data) {
  //       console.log(data); // called when data is broadcast in the cable
  //       notificationList.insertAdjacentHTML('afterbegin', data.notification_body);

  //     },
  //   });
  // }
}

export { initNotificationCable };