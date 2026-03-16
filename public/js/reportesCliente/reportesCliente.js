$(document).ready(function(){
    $('#tablaReporteClienteLoad').load("reportesClientes/tablaReporteCliente.php");   
});

function agregarNuevoReporte(){
    $.ajax({
        type:"POST",
        data:$('#frmNuevoReporte').serialize(),
        url:"../procesos/reportesCliente/agregarNuevoReporte.php",
        success:function(respuesta){
            respuesta=respuesta.trim();
            if (respuesta==1){
                 $('#tablaReporteClienteLoad').load("reportesClientes/tablaReporteCliente.php");
                $('#frmNuevoReporte')[0].reset();
                Swal.fire("Agregado con exito", "success");
            }else{
                Swal.fire("Error al agregar "+ respuesta, "error");
            }
        }
    });

    return false;
}