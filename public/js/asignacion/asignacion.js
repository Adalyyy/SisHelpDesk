$(document).ready(function(){
    $('#tablaAsignacionLoad').load("asignacion/tablaAsignacion.php");
    

});

function asignarEquipo(){
    $.ajax({
        type: "POST",
        data: $('#frmAsigaEquipo').serialize(),
        url:"../procesos/asignacion/asignar.php",
        success:function(respuesta){
            //console.log(respuesta);
            respuesta=respuesta.trim();

            if(respuesta==1){
                $('#frmAsigaEquipo')[0].reset();
                Swal.fire(":)","Asignado con exito","success");
            }else{
                Swal.fire(":(","No se pudo asignar,fallo" + respuesta ,"error");
            }

        }
     
    });
    return false;
}