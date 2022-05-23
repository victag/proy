
package Modelo;
import Utils.ConDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import Modelo.Usuarios;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class UsuarioDao 
{
    
    public boolean auntentificacion(String logeo,String pass)
    {
        Usuarios us=new Usuarios();
        Connection con=null;
        PreparedStatement pstm=null;
        ResultSet rs=null;
        
        try 
        {
           con=ConDB.getConnection();
           String sql="select * from usuario where usu_Login=? and usu_Password=?";
           pstm=con.prepareStatement(sql);
           pstm.setString(1, logeo);
           pstm.setString(2, pass);
           
           rs=pstm.executeQuery();
           
           if(rs.absolute(1))
           return true;
           
           
        } 
        catch (Exception e) 
        {
            System.out.println("Error" +e);
        }
        //cerrar las conexiones
        finally
        {
            try
            {
             if(con !=null) con.close();
             if(pstm !=null) pstm.close();
             if(rs !=null) rs.close();
            } 
            catch (Exception e) 
            {
                System.out.println("Error" +e);
            }
 
        }
        return false;
    }
    
}
