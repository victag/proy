
package Modelo;


public class Empleado 
{
 private int idEmp,edad;
 private String nom,apellido, sexo,DNI,AAAAMMMMDDDD;
 private double telefono, sueldo;

    public Empleado(int idEmp, int edad, String nom, String apellido, String sexo, String DNI, String AAAAMMMMDDDD, double telefono, double sueldo) {
        this.idEmp = idEmp;
        this.edad = edad;
        this.nom = nom;
        this.apellido = apellido;
        this.sexo = sexo;
        this.DNI = DNI;
        this.AAAAMMMMDDDD = AAAAMMMMDDDD;
        this.telefono = telefono;
        this.sueldo = sueldo;
    }

    public int getIdEmp() {
        return idEmp;
    }

    public void setIdEmp(int idEmp) {
        this.idEmp = idEmp;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
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

    public String getAAAAMMMMDDDD() {
        return AAAAMMMMDDDD;
    }

    public void setAAAAMMMMDDDD(String AAAAMMMMDDDD) {
        this.AAAAMMMMDDDD = AAAAMMMMDDDD;
    }

    public double getTelefono() {
        return telefono;
    }

    public void setTelefono(double telefono) {
        this.telefono = telefono;
    }

    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }
 
 
 
    
}
