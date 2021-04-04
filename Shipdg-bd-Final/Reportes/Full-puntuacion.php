<?php


    //1. Connect to database

    $host="localhost";
    $dbname="shipdog_db_2021";
    $username="root";
    $password="";

    $cnx= new PDO("mysql:host=$host;dbname=$dbname",$username,$password);
    
 //2. Construir la sentencia SQL

    $sql="select c.Nombre, d.Lugar, d.Pedido, r.puntuacion from   clientes as c JOIN relacion as r ON c.id_Cliente=r.id_Cliente  JOIN domicilios  as d ON  r.id_Domi=d.id_Domi  JOIN comidas as co ON r.id_Comida=co.id_Comida";

    //3. Preparar la sentencia SQL

    $q=$cnx->prepare($sql);

    //4.Ejecutar sentencia SQL

    $result=$q->execute();

    $puntuaciones=$q->fetchAll();

    

    

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  


    <link rel="stylesheet" href="../Css/Food2.css" type="text/css">
    <title>Lista</title>
</head>
<body>
    <header>
         
        <img src="..\img\Logo.jpg" alt="Logo" width="200" height="200">
        <h1>
            SHIPDOG
         </h1>
         <a href="..\puntuacion.php">
          <button>New Puntuacion</button>
           </a> 

          
           <a href="..\index.html">
            <button style="top: 100px; right: 80px;">Principal</button>
             </a> 
            
        
    </header>
    <main>
    
        <table>
           <tr>
               <td>
                   CLIENTE
               </td>
               <td>
                   LUGAR DOMICILIO
               </td>
               <td>
                   COMIDA
               </td>
               <td>
                  PUNTUACION
               </td>
               
           </tr> 
          
           <?php
    for($i =0; $i<count($puntuaciones); $i++){
?>
  
           <tr>
               <td>
                   <?php echo $puntuaciones[$i]["Nombre"] ?>
               </td>
               <td>
               <?php echo $puntuaciones[$i]["Lugar"] ?>
               </td>
               <td>
               <?php echo $puntuaciones[$i]["Pedido"] ?>
               </td>
               <td>
               <?php echo $puntuaciones[$i]["puntuacion"] ?>
               </td>
               
           </tr> 
<?php
    }

?>
        
    </table>




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