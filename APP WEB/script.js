function UserAction() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
         if (this.readyState == 4 && this.status == 200) {
             alert(this.responseText);
         }
    };
    xhttp.open("POST", "https://localhost:8090/usuario", true);
    xhttp.setRequestHeader("Content-type", "application/json");
    xhttp.send("{
      "nombre_usuario": "prueba1",
      "nombre_tabla_periodica": "tabla01"
    }");
}
