import java.time.LocalTime;

public class Main {
    public static void main(String[] args) {
        int cedulaCliente1 = GeneradorNumero.generarCedulaCliente(); //Generando cedula aleatoria para cliente
        int cedulaEmpleado1 = GeneradorNumero.generarCedulaEmpleado(); //Generando cedula aleatoria para empleado.
        String numeroGuia1 = GeneradorNumero.generarNumeroGuia(); //Generando numero de guia aleatorio.
        String idPaquete1= GeneradorNumero.generarIdPaquete(); //Generando id de paquete.
        LocalTime hora = LocalTime.now(); //Generando hora actual mediante metodo estatico .now();

        Cliente cliente1 = new Cliente(cedulaCliente1,"Enrique","Pinzon","3005434344","enrique@gmail.com", "Calle 1E # 16-16", "Tokyo");
        Empleado empleado1 = new Empleado(cedulaEmpleado1, "Andres","Gomez", "3153371063","andres@gmail.com","KR N 13 -105","Tunja","6 meses","O+","CONDUCTOR");

        Paquete paquete1 = new Paquete(idPaquete1, "MEDIANO", 5323,12550);
        Envio envio1 = new Envio(numeroGuia1, cliente1, "Bucaramanga",cliente1.getCiudad(),cliente1.getDireccionResidencia(), cliente1.getNombre(), hora ,"RECIBIDO",15550,paquete1);
        System.out.println("================================");
        System.out.println("Hola, gracias por usar Mensajeria Express!");
        System.out.println("La informacion del envio es: " + "numero de guia: " + envio1.getIdGuia() + " datos del cliente, nombres y apellidos: " + envio1.getNombreDestinatario() + " el paquete va dirigido a  " + envio1.getCiudadDestino() + " " + envio1.getDireccionDestino());
        System.out.println("Informacion adicional: " + "valor envio: " + envio1.getValorEnvio() );
        System.out.println("Informacion del paquete: " + "tipo de paquete " + paquete1.getTipoPaquete() + " valor declarado: " + paquete1.getValorDeclarado() + " peso del paquete: " + paquete1.getPeso());
        System.out.println("Esta informacion sera enviada al correo registrado: " + cliente1.getEmail());
        System.out.println("Datos de la persona que entrega el paquete: " + empleado1.getNombre() + " " + empleado1.getApellidos() + " con numero celular: " + empleado1.getCelular());
        System.out.println("======================");

    }
}