<?php
  session_start();
 ?>
<form action="validarLogin.php" method="post" enctype="application/x-www-form-urlencoded">
  <label for="usuario"><p>Introduzca Nombre Usuario</p>
    <p><input type="text" id="usuario" name="usuario" placeholder="Usuario" required></p>
  </label>
  <input type="submit" value="Iniciar sesion">
</form>
