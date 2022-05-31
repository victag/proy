/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Users;
import Utils.ConDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AMVM_
 */
public class usuariosController extends HttpServlet {

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
         
       String US=request.getParameter("US");
   
        
        if(US.equals("listar"))
        {
            try
            {
               PreparedStatement  sta=ConDB.getConnection().prepareStatement("Select * From usuario");
                ResultSet rs=sta.executeQuery();
                
               ArrayList<Users> lista=new ArrayList<>();
                
                while(rs.next())
                {
                   Users user=new Users(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4),
                                            rs.getString(5),rs.getString(6),rs.getInt(7),rs.getString(8));
                  lista.add(user);
                }
                
               request.setAttribute("lista", lista);
               request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
            }
            catch(Exception e)
            {
                System.out.println("error"+e);
            }
        }
        
        else if(US.equals("insertar"))
        {
            int id=Integer.parseInt(request.getParameter("txtId"));
            String log=request.getParameter("txtLog");
            String pass=request.getParameter("txtPass");
            String nom=request.getParameter("txtNom");
            String ape=request.getParameter("txtApe");
            String genero=request.getParameter("txtGenero");
            int edad=Integer.parseInt(request.getParameter("txtEdad"));
            String perfil=request.getParameter("txtPerfil");
 
            try
            {
                PreparedStatement  sta=ConDB.getConnection().prepareStatement("insert into usuario values(?,?,?,?,?,?,?,?)");
                
                sta.setInt(1, id);
                sta.setString(2, log);
                sta.setString(3, pass);
                sta.setString(4, nom);
                sta.setString(5, ape);
                sta.setString(6, genero);
                sta.setInt(7, edad);
                sta.setString(8, perfil);
                
                //enviar executeQuery es solo para los select-- para lo demas es Upadte o otro
                sta.executeUpdate();
                request.getRequestDispatcher("Index.jsp").forward(request, response);
               
                
               
              
            }
            catch (Exception e) 
            {
                System.out.println("error insert" +e );
            }
        }
        else if(US.equals("eliminar"))
        {
            
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
