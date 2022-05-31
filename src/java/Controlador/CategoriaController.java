package Controlador;

import java.io.IOException;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Utils.ConDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Modelo.categoria;
import static java.lang.System.out;

public class CategoriaController extends HttpServlet {

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
        //Parametro que elige la operacion a realizar
        String op = request.getParameter("op");
            
        //Opcion listar
        if (op.equals("listar")) {
            try {
                
                PreparedStatement sta = ConDB.getConnection().prepareStatement("select * from categoria");
                ResultSet rs = sta.executeQuery();

                ArrayList<categoria> lista = new ArrayList<>();

                while (rs.next()) {
                    categoria cat = new categoria(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4));
                    lista.add(cat);
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("categoria.jsp").forward(request, response);
            } catch (IOException | SQLException | ServletException e) {
                 System.out.println("Error al mostrar elmentos");
            }
        }  
        else if (op.equals("eliminar")) {
            try {
                int id = Integer.parseInt(request.getParameter("idE"));
                log(""+id);
                PreparedStatement sta = ConDB.getConnection().prepareStatement("delete from categoria where id_Categoria=?");
                sta.setInt(1, id);
                sta.executeUpdate();
                request.getRequestDispatcher("CategoriaController?op=listar").forward(request, response);
            } catch (IOException | SQLException | ServletException e) {
                 System.out.println("Error al eliminar elemento");
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
        //Parametro que elige la operacion a realizar
        String op = request.getParameter("op");   
        
        //Opcion editar
        if(op.equals("editar")){
            int id = Integer.parseInt(request.getParameter("idC"));
            String categoria = request.getParameter("txtCatEdit");
            int stock = Integer.parseInt(request.getParameter("txtStockEdit"));
            double precio = Double.parseDouble(request.getParameter("txtPrecioEdit"));
            try {
                PreparedStatement sta = ConDB.getConnection().prepareStatement("update categoria set categoria=?,stock=?, precio=? where id_Categoria=?");
                sta.setString(1, categoria);
                sta.setInt(2, stock);
                sta.setDouble(3, precio);
                sta.setInt(4, id);
                sta.executeUpdate();
                request.getRequestDispatcher("CategoriaController?op=listar").forward(request, response);

            } catch (IOException | SQLException | ServletException e) {
                System.out.println("Error al actualizar elemento");
            }
        }
        
        //Opcion listar
        else if (op.equals("listar")) {
            try {
                
                PreparedStatement sta = ConDB.getConnection().prepareStatement("select * from categoria");
                ResultSet rs = sta.executeQuery();

                ArrayList<categoria> lista = new ArrayList<>();

                while (rs.next()) {
                    categoria cat = new categoria(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDouble(4));
                    lista.add(cat);
                }
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("categoria.jsp").forward(request, response);
            } catch (IOException | SQLException | ServletException e) {
                 System.out.println("Error al mostrar elmentos");
            }
        } 
        
        else if (op.equals("insertar")) {
            String categoria = request.getParameter("txtCat");
            int stock = Integer.parseInt(request.getParameter("txtStock"));
            double precio = Double.parseDouble(request.getParameter("txtPrecio"));
            try {
                PreparedStatement sta = ConDB.getConnection().prepareStatement("insert into categoria (categoria,stock,precio) values(?,?,?)");
                sta.setString(1, categoria);
                sta.setInt(2, stock);
                sta.setDouble(3, precio);
                sta.executeUpdate();
                request.getRequestDispatcher("CategoriaController?op=listar").forward(request, response);

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
