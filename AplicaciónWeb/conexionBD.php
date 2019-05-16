<?php
  $con=mysqli_connect('212.231.6.7','proyectonuestratablaperiodica','root00','id9607239_tablaperiodicadb')
  or die('Error en la conexión de la base de datos');
  $sql="insert into usuario(nombre_usuario,nombre_tabla_periodica) values('".$_POST["nombre"]."',
  '".$_POST["oid_tabla_periodica"]."')";
  $result=mysqli_query($con,$sql) or die('Error en el query database');
  mysqli_close($con);

  echo 'El nombre de usuario es: '.$_POST["nombre"].'<br/>';
 ?>
 <html>
 <form action="principal.html" method="post">
   <input type="submit" name="aceptar" value="Aceptar">
 </form>
</html>
