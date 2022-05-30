<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="user.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link href="Sets/CSS/Estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!-- Navegador y Sidebar -->
        <%@ include file="nav.jsp"%>
            
        <main class="mt-5 pt-3">
            <div class="container-fluid">
                <div class="row">
                  <div class="col-md-12">
                    <h4 align="center">Agegar nuevo usuario</h4>
                  </div>
                </div>
               &nbsp; 
               
                <div class="row">
      
                        <div class="col-md-12 mb-3">
                          <div class="card">
                            <div class="card-body">
                                 <div class="conteiner">
                                     <form action="usuariosController" >
                                          <table class="table ">
                                              <tr>
                                                  <td >Ingrese ID: </td>
                                                  <td><input type="text" name="txtId" class="form-control" required></td>
                                                  <td class="texto">Ingrese Usuario: </td>
                                                  <td><input type="text" name="txtLog" class="form-control" required></td>
                                              </tr>&nbsp; &nbsp; 
                                              <tr>
                                                  <td>Ingrese Contraseña: </td>
                                                  <td><input type="text" name="txtPass" class="form-control" required></td>
                                                  <td class="texto">Ingrese Nombre: </td>
                                                  <td><input type="text" name="txtNom" class="form-control" required></td>
                                              </tr>&nbsp; &nbsp; 
                                              <tr>
                                                  <td>Ingrese Apellido: </td>
                                                  <td><input type="text" name="txtApe" class="form-control"required></td>
                                                  <td>Ingrese Genero: </td>
                                                  <td><input type="text" name="txtGenero" class="form-control" required></td>
                                              </tr>&nbsp; &nbsp; 
                                              <tr>
                                                  <td>Ingrese Edad: </td>
                                                  <td><input type="text" name="txtEdad" class="form-control" required></td>
                                                  <td>Ingrese Perfil: </td>
                                                  <td><input type="text" name="txtPerfil" class="form-control" required></td>
                                              </tr>&nbsp; &nbsp; 

                                              <tr>
                                                  <td><input type="submit" name="btn" value="Registrar" class="form-control btn-success mb-3"></td>
                                              </tr>
                                              <!-- dato oculto -->
                                              <input type="hidden" name="US" value="insertar"/>
                                          </table>
                                       </form>   
                                </div>

                            </div>
                          </div>
                        </div>
        
                </div>
            </div>
        </main>
    </body>
</html>
