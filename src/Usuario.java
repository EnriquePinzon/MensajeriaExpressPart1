
public  class Usuario {

    private int cedula;
    private String nombre;
    private String apellidos;
    private String celular;
    private String email;
    private String direccionResidencia;
    private String ciudad;

    public Usuario(int cedula, String nombre, String apellidos, String celular, String email, String direccionResidencia, String ciudad){
        this.cedula =cedula;
        this.nombre =nombre;
        this.apellidos=apellidos;
        this.celular=celular;
        this.email=email;
        this.direccionResidencia=direccionResidencia;
        this.ciudad=ciudad;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public String getCelular() {
        return celular;
    }

    public String getEmail() {
        return email;
    }

    public String getDireccionResidencia() {
        return direccionResidencia;
    }

    public String getCiudad() {
        return ciudad;
    }

    public int getCedula() {
        return cedula;
    }
}
