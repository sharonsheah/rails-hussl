// (function () {
//   var Notifications;

//   Notifications = (function () {
//     function Notifications() {
//       this.notifications = $("[data-behavior='notifications']");
//       if (this.notifications.length > 0) {
//         this.setup();
//       }
//     }

//     return Notifications;

//   })();

// }).call(this);

// const searchMovies = (query) => {
//   fetch(`http://www.omdbapi.com/?s=${query}&apikey=adf1f2d7`)
//     .then(response => response.json())
//     .then((data) => {
//       data.Search.forEach((result) => {
//         const movie = `<li class="list-inline-item">
//           <img src="${result.Poster}" alt="">
//           <p>${result.Title}</p>
//         </li>`;
//         results.insertAdjacentHTML("beforeend", movie);
//       });
//     });
// };



// setup: ->
//   $("[data-behavior='notifications-link']").on "click", @handleCl>
//     $.ajax(
//       url: "/notifications.json"

// 	  method: "GET"
//       success: @handleSuccess
//     )

// handleClick: (0) =>
// $.ajax(
//   url: "/notifications/mark_as_reads"

//   handleSuccess: (data) =>
//   items = $.map data, (notification) ->
// "<a id="li" href='#{notification.url}'>"

// 	$("[data-behavior='unread-count']".text(items.length)
// 	$("[data-behavior='notification-items']").html(items)