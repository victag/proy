package Controlador;

import Modelo.marca;
import Utils.ConDB;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MarcasController extends HttpServlet {

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
        String op = request.getParameter("op");       
        if (op.equals("listar")) {
            try {

                PreparedStatement sta = ConDB.getConnection().prepareStatement("select * from marca");
                ResultSet rs = sta.executeQuery();

                ArrayList<marca> lista = new ArrayList<>();

                while (rs.next()) {
                    marca marc = new marca(rs.getInt(1), rs.getString(2), rs.getString(3));
                    lista.add(marc);
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("marcas.jsp").forward(request, response);
            } catch (Exception e) {
                System.out.println("Error al mostrar elmentos");
            }
        }
        else if (op.equals("eliminar")) {
            try {
                int id = Integer.parseInt(request.getParameter("idE"));
                PreparedStatement sta = ConDB.getConnection().prepareStatement("delete from marca where id_Marca=?");
                sta.setInt(1, id);
                sta.executeUpdate();
                request.getRequestDispatcher("MarcasController?op=listar").forward(request, response);
            } catch (IOException | SQLException | ServletException e) {
                 System.out.println("Error al mostrar elmentos");
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
        String op = request.getParameter("op");

        if (op.equals("editar")) {
            int id = Integer.parseInt(request.getParameter("idC"));
            String marca = request.getParameter("txtMarcaEdit");
            String descrip = request.getParameter("txtDescripEdit");
            try {
                PreparedStatement sta = ConDB.getConnection().prepareStatement("update marca set marca=?, descripcion=? where id_Marca=?");
                sta.setString(1, marca);
                sta.setString(2, descrip);
                sta.setInt(3, id);
                sta.executeUpdate();
                request.getRequestDispatcher("MarcasController?op=listar").forward(request, response);

            } catch (IOException | SQLException | ServletException e) {
                System.out.println("Error al actualizar elemento");
            }
        } else if (op.equals("listar")) {
            try {

                PreparedStatement sta = ConDB.getConnection().prepareStatement("select * from marca");
                ResultSet rs = sta.executeQuery();

                ArrayList<marca> lista = new ArrayList<>();

                while (rs.next()) {
                    marca marc = new marca(rs.getInt(1), rs.getString(2), rs.getString(3));
                    lista.add(marc);
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("marcas.jsp").forward(request, response);
            } catch (IOException | SQLException | ServletException e) {
                System.out.println("Error al mostrar elmentos");
            }
        }    
        
        else if (op.equals("insertar")) {
            String marca = request.getParameter("txtMarca");
            String descrip = request.getParameter("txtDescripcion");
            try {
                PreparedStatement sta = ConDB.getConnection().prepareStatement("insert into marca (marca,descripcion) values(?,?)");
                sta.setString(1, marca);
                sta.setString(2, descrip);
                sta.executeUpdate();
                request.getRequestDispatcher("MarcasController?op=listar").forward(request, response);

            } catch (IOException | SQLException | ServletException e) {
                System.out.println("Error al insertar elemento");
            }
        }
        
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
