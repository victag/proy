
package Modelo;


public class Empleado 
{
 private int idEmp;
 private String nom,apellido;
 private int edad;
 private String sexo,DNI,telefono,fecha;
 private double sueldo;

    public Empleado(int idEmp, String nom, String apellido, int edad, String sexo, String DNI, String telefono, String fecha, double sueldo) {
        this.idEmp = idEmp;
        this.nom = nom;
        this.apellido = apellido;
        this.edad = edad;
        this.sexo = sexo;
        this.DNI = DNI;
        this.telefono = telefono;
        this.fecha = fecha;
        this.sueldo = sueldo;
    }

    public int getIdEmp() {
        return idEmp;
    }

    public void setIdEmp(int idEmp) {
        this.idEmp = idEmp;
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

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }

 
 
}
