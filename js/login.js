$('document').ready(function (e) {
    $('#submit').click(function (e) {
      var user = $('#email').val();
      var password = $('#password').val();
      loginPag(user, password);
    })
  });
  
  function loginPag(user, pass) {
    var datos = user + ":" + pass ;
    var encodedString = btoa(datos);
    $.ajax({
      url: 'http://localhost:5000/api/token',
      async: false,
      method: 'GET',
      headers: {
        "Authorization": 'Basic ' + encodedString.toString()
      },
      dataType: 'json',
      contentType: 'application/json',
      success: function (data) {
        window.location.href = '../views/students.html';
      },
      error: function (data) {
        alert("Usuario y/o Contraseña Incorrectos");
      }
    });
  }