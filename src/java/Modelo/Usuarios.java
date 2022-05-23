
package Modelo;


public class Usuarios 
{ 
    private int idUsu, edad;
    private String logeo, pass, nom, apellido, correo, genero;

    public Usuarios() {
    }

    public Usuarios(int idUsu, int edad, String logeo, String pass, String nom, String apellido, String correo, String genero) {
        this.idUsu = idUsu;
        this.edad = edad;
        this.logeo = logeo;
        this.pass = pass;
        this.nom = nom;
        this.apellido = apellido;
        this.correo = correo;
        this.genero = genero;
    }

    public int getIdUsu() {
        return idUsu;
    }

    public void setIdUsu(int idUsu) {
        this.idUsu = idUsu;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getLogeo() {
        return logeo;
    }

    public void setLogeo(String logeo) {
        this.logeo = logeo;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

  
    
}
