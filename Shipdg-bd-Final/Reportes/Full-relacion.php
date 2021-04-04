<?php




 $where='';

    if(isset($_REQUEST['TiempoEstimado'])){
        $TiempoEstimado=$_REQUEST['TiempoEstimado'];
        if($TiempoEstimado != ""){
           
                $where= "WHERE d.TiempoEstimado='$TiempoEstimado'";
           
         }
     }
        
    
   
     if(isset($_REQUEST['Pedido'])){
        $Pedido=$_REQUEST['Pedido'];
        $Y="";
        $O="";
        if(isset($_REQUEST['Y'])){
            $Y=$_REQUEST['Y'];
        }
        if(isset($_REQUEST['O'])){
            $O=$_REQUEST['O'];
        }
        if($Pedido!=""){
            if($where==""){
                $where= "WHERE d.Pedido='$Pedido'";
            }
            
            if($O != ""){
               
                $where= "$where OR d.Pedido='$Pedido' ";
            }
            else {
               
                $where= "$where AND d.Pedido='$Pedido'";
            }
    
    
        }
    
    }
    

    if(isset($_REQUEST['puntuacion'])){
        $puntuacion=$_REQUEST['puntuacion'];
        $Y="";
        $O="";
        if(isset($_REQUEST['Y'])){
            $Y=$_REQUEST['Y'];
        }
        if(isset($_REQUEST['O'])){
            $O=$_REQUEST['O'];
        }
        if($puntuacion!=""){
            if($where==""){
                $where= "WHERE r.puntuacion='$puntuacion'";
            }
            
            if($O != ""){
               
                $where= "$where OR r.puntuacion='$puntuacion' ";
            }
            else {
               
                $where= "$where AND r.puntuacion='$puntuacion'";
            }
    
    
        }
    
    }
    

 
 

    
   
    //1. Connect to database

    $host="localhost";
    $dbname="shipdog_db_2021";
    $username="root";
    $password="";

    $cnx= new PDO("mysql:host=$host;dbname=$dbname",$username,$password);
    
 //2. Construir la sentencia SQL

$sql="select c.Nombre, c.Apellidos, d.N_Contacto,d.Lugar,d.Pedido,  d.TiempoEstimado,r.puntuacion from clientes as c JOIN relacion as r ON c.id_Cliente=r.id_Cliente  JOIN domicilios  as d ON  r.id_Domi=d.id_Domi  JOIN comidas as co ON r.id_Comida=co.id_Comida $where ";

    //3. Preparar la sentencia SQL

    $q=$cnx->prepare($sql);

    //4.Ejecutar sentencia SQL

    $result=$q->execute();

    $relaciones=$q->fetchAll();

    
    var_dump($sql);
    

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
         <a href="..\usuarios.php">
          <button>New User</button>
           </a> 

          
           <a href="..\index.html">
            <button style="top: 100px; right: 80px;">Principal</button>
             </a> 
            
        
    </header>
    <main>
    <form action="Full-relacion.php" method="POST" >
    

        <br/><br/>
        
        <div>Tiempo Estimado</div>
        <br/>
         <input type="text"  name="TiempoEstimado"  value="<?php if(isset($_REQUEST['TiempoEstimado'])) echo  $_REQUEST['TiempoEstimado']; ?>">

        <br/><br/>
        <div>Pedido</div>
        <br/>
        <input type="text"  name="Pedido"  value="<?php if(isset($_REQUEST['Pedido'])) echo  $_REQUEST['Pedido']; ?>">
        <br/><br/>
        <div>Puntuación</div> 
        
        <select name="puntuacion">
        <option value="">Seleccione</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        </select>
        <br/><br/>
        <input type="submit" name="O" value="Buscar O "/>
        <input type="submit" name="Y" value="Buscar Y "/>
       
        <hr/>
    </form>
        <table>
           <tr>
               <td>
                  NOMBRE CLIENTE
               </td>
               <td>
                   APELLIDOS CLIENTE
               </td>
               <td>
                   NUMERO DE CONTACTO
               </td>
               <td>
                   LUGAR
               </td>
               <td>
                  PEDIDO
               </td>
               <td>
                  TIEMPO ESTIMADO
               </td>
               <td>
                  PUNTUACION
               </td>
           </tr> 
          
 <?php
    for($i =0; $i<count($relaciones); $i++){
?>
  
           <tr>
               <td>
                   <?php echo $relaciones[$i]["Nombre"] ?>
               </td>
               <td>
               <?php echo $relaciones[$i]["Apellidos"] ?>
               </td>
               <td>
               <?php echo $relaciones[$i]["N_Contacto"] ?>
               </td>
               <td>
               <?php echo $relaciones[$i]["Lugar"] ?>
               </td>
               <td>
               <?php echo $relaciones[$i]["Pedido"] ?>
               </td>
               <td>
               <?php echo $relaciones[$i]["TiempoEstimado"] ?>
               </td>
               <td>
               <?php echo $relaciones[$i]["puntuacion"] ?>
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