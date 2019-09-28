import consumer from "./consumer"

consumer.subscriptions.create("CarChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("WebSocket Client Connected!");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log(`Received data:`, data);
    this.appendTable(data);
  },

  appendTable(data) {
    const element = document.getElementById("cars").getElementsByTagName('tbody')[0];
    const newRow = element.insertRow(-1);
    const cell0 = newRow.insertCell(0);
    const cell1 = newRow.insertCell(1);
    const cell2 = newRow.insertCell(2);
    const cell3 = newRow.insertCell(3);
    const cell4 = newRow.insertCell(4);
    cell0.innerHTML = `${data["title"]}`;
    cell1.innerHTML = `${data["car_type"]}`;
    cell2.innerHTML = `${data["color"]}`;
    cell3.innerHTML = `${data["drivers"]}`;
    cell4.innerHTML = `<a href='/cars/${data["id"]}' class='btn btn-info'>Show</a>`;

  },
});
