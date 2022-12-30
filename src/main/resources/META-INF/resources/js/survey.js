let queryReserv = document.querySelector("#reserv");
let queryReservHidden = document.querySelector("#reservhidden");

queryReserv.addEventListener("click", (event) => {
  queryReservHidden.innerHTML =
    "<input type='hidden' name='reservID' value=" +
    `${event.target.id}` +
    " />";
});
