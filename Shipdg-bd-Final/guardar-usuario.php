<?php
    $Nombre= $_REQUEST["Nombre"];
    $Apellidos = $_REQUEST["Apellidos"];
    $Direccion = $_REQUEST["Direccion"];
    $Telefono = $_REQUEST["Telefono"];

    //1. Connect to database

    $host="localhost";
    $dbname="shipdog_db_2021";
    $username="root";
    $password="";

    $cnx= new PDO("mysql:host=$host;dbname=$dbname",$username,$password);
    
 //2. Construir la sentencia SQL

    $sql="INSERT INTO clientes (id_Cliente,Nombre,Apellidos,Direccion,Telefono) VALUES(NULL,'$Nombre','$Apellidos','$Direccion','$Telefono')";

    //3. Preparar la sentencia SQL

    $q=$cnx->prepare($sql);

    //4.Ejecutar sentencia SQL

    $result=$q->execute();

    if($result){
        
echo '<script language="javascript">alert("Se registro correctamente");</script>';
    }
    else{
        echo"Hubo un error Creando el Cliente $Nombre";
    }

    

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  


    <link rel="stylesheet" href="Css/Food.css" type="text/css">
    <title>SHIPDOG</title>
</head>
<body>
    <header>
         
        <img src="img\Logo.jpg" alt="Logo" width="200" height="200">
        <h1>
            SHIPDOG
         </h1>
         <a href="Reportes\Full-relacion.php">
          <button>Lista</button>
           </a> 

          
           <a href="index.html">
            <button style="top: 100px; right: 80px;">Principal</button>
             </a> 
            
            
        
    </header>
    <main>
        <form action="guardar-usuario.php" method="POST">
           <h2> Nombre <input type="text" name="Nombre"></h2><br/>
            <h2>Apellidos <input type="text" name="Apellidos"></h2><br/>
    
           <h2> Direccion <input type="text" name="Direccion"></h2>
            
            <h2> Telefono <input type="text" name="Telefono"></h2>
            <br/><br/>
         
            <input type="submit"  value="Registrarse" style="font-size: 34px; position: relative;
             left: 580px;">
          
           
      
        </form>




    </main>
    <br/>
    <footer>
        <span class="name" > Manuela Ocampo Giraldo
          <br>
        mocampo77109@umanizales.edu.co 
        <br>
        Codigo: 82201724162
      </span>
      </footer>
  </body>
  </html>