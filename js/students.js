$('document').ready(function (e) {
  var element = document.getElementById("name");
  var nameU = localStorage.getItem('username');
  element.innerHTML = nameU;
  //insertName(nameU);
  });

  /*
function insertName(user){
  $.ajax({
    url: 'http://35.225.18.238:5000/api/token',
    async: false,
    method: 'GET',
    headers: {
      "Authorization": 'Basic ' + localStorage.getItem('credentials').toString()
    },
    dataType: 'json',
    contentType: 'application/json',
    success: function (data) {
      var element = document.getElementById("name");
      element.innerHTML = completeName;
    },
    error: function (data) {
      alert("Problema con el nombre");
    }
  });
}*/

function createTable(){

}