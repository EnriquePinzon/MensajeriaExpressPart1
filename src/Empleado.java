public class Empleado extends Usuario{

    private String antiguedad;
    private String tipoDeSangre;
    private String tipoEmpleado;

    public Empleado(int cedula, String nombre, String apellidos, String celular, String email, String direccionResidencia, String ciudad, String antiguedad, String tipoDeSangre, String tipoEmpleado){
        super(cedula, nombre, apellidos, celular, email, direccionResidencia, ciudad);
        this.antiguedad=antiguedad;
        this.tipoDeSangre=tipoDeSangre;
        this.tipoEmpleado=tipoEmpleado;
    }

    public String getAntiguedad() {
        return antiguedad;
    }

    public String getTipoDeSangre() {
        return tipoDeSangre;
    }

    public String getTipoEmpleado() {
        return tipoEmpleado;
    }
}
