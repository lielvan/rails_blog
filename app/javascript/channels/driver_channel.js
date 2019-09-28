import consumer from "./consumer"

consumer.subscriptions.create("DriverChannel", {
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
    const element = document.getElementById("drivers").getElementsByTagName('tbody')[0];
    const newRow = element.insertRow(-1);
    const cell0 = newRow.insertCell(0);
    const cell1 = newRow.insertCell(1);
    const cell2 = newRow.insertCell(2);
    const cell3 = newRow.insertCell(3);
    cell0.innerHTML = `${data["name"]}`;
    cell1.innerHTML = `${data["email"]}`;
    cell2.innerHTML = `${data["date_of_birth"]}`;
    cell3.innerHTML = `<a href='/drivers/${data["id"]}' class='btn btn-info'>Show</a>`;

  },
});
