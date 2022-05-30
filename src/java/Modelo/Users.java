/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;


public class Users 
{
    private int idUsu;
    private String logeo, pass, nom, apellido,genero;
    private int edad;
    private String perfil;

    public Users(int idUsu, String logeo, String pass, String nom, String apellido, String genero, int edad, String perfil) {
        this.idUsu = idUsu;
        this.logeo = logeo;
        this.pass = pass;
        this.nom = nom;
        this.apellido = apellido;
        this.genero = genero;
        this.edad = edad;
        this.perfil = perfil;
    }

    public int getIdUsu() {
        return idUsu;
    }

    public void setIdUsu(int idUsu) {
        this.idUsu = idUsu;
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

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }
    

}