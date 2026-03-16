
$(document).ready(function(){
    $('#tablaReporteAdminLoad').load('reportesAdmin/tablaReportesAdmin.php');

    
});
function eliminarReporteAdmin(idReporte){
        Swal.fire({
        title: "Estas seguro de eliminar este reporte?",
        text: "Una vez eliminado no se podrá dar solución",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Si, eliminar!"
        }).then((result) => {

            if (result.isConfirmed){
                $.ajax({
                    type:"POST",
                    data:'idReporte=' + idReporte,
                    url:"../procesos/reportesCliente/eliminarReporteCliente.php",
                    success:function (respuesta) {
                        if(respuesta==1){
                            
                            $('#tablaReporteClienteLoad').load("reportesClientes/tablaReporteCliente.php");
                            Swal.fire(":)","Eliminado con exito","success");
                        }else{
                            Swal.fire(":(","Fallo al eliminar" + respuesta ,"error");
                        }    
                    }
                });
            }      
        })  
    return false;
}

function obtenerDatosSolucion(idReporte){
    $.ajax({
        type:"POST",
        data:'idReporte=' + idReporte,
        url: "../procesos/reportesAdmin/obtenerSolucion.php",
        success: function(respuesta){
            console.log(respuesta);

        }
    });


}

