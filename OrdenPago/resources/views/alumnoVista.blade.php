<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<h1>Comprobantes por alumnos</h1>
<form action="" method="GET" enctype="multipart/form-data"> 
@csrf
    <label for="Fecha"> Seleciione una fecha </label>
    <input type="datetime" id="Fecha" name="fecha"/> 
    <input type="hidden" name="Legajo" value="<?=$idLegajo?>">
    <input type="submit" name="Buscar"/>
    
 </form>
<table>
    <thead>
    <th>Apellido y Nombre </th>
    <th>Legajo  </th>
    <th>Fecha  </th>
    <th>Hora  </th>
    <th>Comprobante  </th>
    <th>Nro de comprobante  </th>
    <th>Estado  </th>
    <th>Importe total  </th>
    <th>Coutas  </th>
    </thead>
    <tbody>
<?php foreach($alumnos as $clave =>$alumno ):?>

    <tr>
        <td> 
        <?php echo $alumno['apellido'];?>
        <?php echo $alumno['nombre'];?>
        </td>
        <td>
        <?php echo $alumno['legajo'];?>
        </td>
        <td>
        <?php echo $alumno['fecha'];?>
        </td>
        <td>
        <?php echo $alumno['hora'];?>
        </td>
        <td>
        <?php echo $alumno['comprobante'];?>
        </td>
        <td>
        <?php echo $alumno['nrocomprombante'];?>
        </td>
        <td>
        <?php echo $alumno['estado'];?>
        </td>
        <td>
        <?php echo $alumno['importetotal'];?>
        </td>
        <td>
        <?php echo $alumno['cuotas'];?>
        </td>
        <td>
        
       
        </td>
    </tr>

<?php endforeach;?>
    </tbody>
</table>

</body>
</html>