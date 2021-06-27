<h1>Comprobantes por alumnos</h1>
<table>
    <thead>
    <th>Apellido y Nombre  </th>
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
        <?php echo $alumno->apellido;?>
        <?php echo $alumno->nombre;?>
        </td>
        <td>
        <?php echo $alumno->legajo;?>
        </td>
        <td>
        <?php echo $alumno->fecha;?>
        </td>
        <td>
        <?php echo $alumno->hora;?>
        </td>
        <td>
        <?php echo $alumno->comprobante;?>
        </td>
        <td>
        <?php echo $alumno->nrocomprombante;?>
        </td>
        <td>
        <?php echo $alumno->estado;?>
        </td>
        <td>
        <?php echo $alumno->importetotal;?>
        </td>
        <td>
        <?php echo $alumno->cuotas;?>
        </td>
        <td>
        <a href="alumn/<?php echo $alumno->legajo;?>">Detalle</a>
       
        </td>
    </tr>

<?php endforeach;?>
    </tbody>
</table>