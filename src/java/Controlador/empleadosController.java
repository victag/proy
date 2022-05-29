/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Empleado;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Utils.ConDB;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author AMVM_
 */
@WebServlet(name = "empleadosController", urlPatterns = {"/empleadosController"})
public class empleadosController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String op=request.getParameter("op");
   
        
        if(op.equals("listar"))
        {
            try
            {
               PreparedStatement  sta=ConDB.getConnection().prepareStatement("Select * From empleados");
                ResultSet rs=sta.executeQuery();
                
               ArrayList<Empleado> lista=new ArrayList<>();
                
                while(rs.next())
                {
                   Empleado em=new Empleado(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getInt(4),
                                            rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getDouble(9));
                  lista.add(em);
                }
                
               request.setAttribute("lista", lista);
               request.getRequestDispatcher("Empleados.jsp").forward(request, response);
               
            }
            catch(Exception e)
            {
                System.out.println("error"+e);
            }
        }
        
        else if(op.equals("insertar"))
        {
            int id=Integer.parseInt(request.getParameter("txtId"));
            String nom=request.getParameter("txtNom");
            String apel=request.getParameter("txtApel");
            int edad=Integer.parseInt(request.getParameter("txtEdad"));
            String sexo=request.getParameter("txtSexo");
            String DNI=request.getParameter("txtDNI");
            String tel=request.getParameter("txtTel");
            String fecha=request.getParameter("txtFecha");
            double sueldo=Double.parseDouble(request.getParameter("txtSueldo"));
           
 
            try
            {
                PreparedStatement  sta=ConDB.getConnection().prepareStatement("insert into empleados values(?,?,?,?,?,?,?,?,?)");
                
                sta.setInt(1, id);
                sta.setString(2, nom);
                sta.setString(3, apel);
                sta.setInt(4, edad);
                sta.setString(5, sexo);
                sta.setString(6,DNI);
                sta.setString(7, tel);
                sta.setString(8, fecha);
                sta.setDouble(9, sueldo);
                
                //enviar executeQuery es solo para los select-- para lo demas es Upadte o otro
                sta.executeUpdate();
                request.getRequestDispatcher("Index.jsp").forward(request, response);
            }
            catch(Exception e){
                
            }
               
        }
        else if(op.equals("eliminar"))
        { 
            try 
            {
                 PreparedStatement  sta=ConDB.getConnection().prepareStatement("delete from empleado where id=");
               
            } 
            catch (Exception e) 
            {
                
            }
        }
               
        
    }
     /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
