
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  session="true" %>
<%
    String usuario="";
    String perfil="";
    
    HttpSession sesionOK=request.getSession();
    if(sesionOK.getAttribute("usuario")==null)
    {
%>        
        <jsp:forward page="Login.jsp">
            <jsp:param name="msg2" value="Iniciar sesion obligatoriamente"/>
        </jsp:forward>
<%  }
    else
    {
       usuario=(String)sesionOK.getAttribute("usuario");
       perfil=(String)sesionOK.getAttribute("perfil");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link href="Sets/CSS/Estilos.css" rel="stylesheet" type=""/>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-success fixed-top">
       <div class="container-fluid">
         <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#sidebar" aria-controls="offcanvasExample" >
           <span class="navbar-toggler-icon" data-bs-target="#sidebar"></span>
         </button>
         <a class="navbar-brand me-auto ms-lg-0 ms-3 text-uppercase fw-bold"  href="Index.jsp">FERRETERIA LILY</a>

         <div class="collapse navbar-collapse" id="">
           <form class="d-flex ms-auto my-3 my-lg-0">
             <div class="input-group">
               <input class="form-control" type="search" placeholder="Buscar" aria-label="Search"/>
               <button class="btn btn-primary" type="submit">
                 <i class="fas fa-search"></i>
               </button>
             </div>
           </form>
           <ul class="navbar-nav">
             <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle ms-2" href="#" role="button" data-bs-toggle="dropdown" >
                 <i class="fas fa-user"></i>
               </a>
               <ul class="dropdown-menu dropdown-menu-end">
                   <li><a class="dropdown-item" href="logiController?op=cerrar">Cerrar cesión</a></li>
               </ul>
             </li>
           </ul>
         </div>
       </div>
     </nav>

     <div class="offcanvas offcanvas-start sidebar-nav bg-success" tabindex="-1" id="" >
       <div class="offcanvas-body p-0">
         <nav class="navbar-dark">
           <ul class="navbar-nav">
             <li>
                <div class="text-success small fw-bold text-light px-3"> BIENVENIDO <%=usuario %> </div>
             </li>
             <li>
               <a href="Index.jsp" class="nav-link px-3 active">
                 <span class="me-2"><i class="bi bi-speedometer2"></i></span>
                 <span>INICIO <i class="fa-solid fa-house-chimney"></i></span>
               </a>
             </li>
             
            
             <div class="accordion accordion-flush" id="accordionFlushExample">
          <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingOne">
              <button class="menu accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                ALMACEN
              </button>
            </h2>
            <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    <ul>
                        <li class="lista"> <a href="url" >Categorias</a></li>
                        <li class="lista"> <a href="url">Marcas</a></li>
                        <li class="lista"> <a href="url">Productos</a></li>
                    </ul>
                </div>
            </div>
          </div>
                 
          <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingseven">
              <button class="menu accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseseven" aria-expanded="false" aria-controls="flush-collapseseven">
                Productos Perecederos
              </button>
            </h2>
            <div id="flush-collapseseven" class="accordion-collapse collapse" aria-labelledby="flush-headingseven" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    <ul>
                        <li class="lista">Pinturas </li>
                        <li class="lista">Desinfectantes</li>
                   
                    </ul>

                </div>
            </div>
          </div>         
                 
          <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingTwo">
              <button class="menu accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                COTIZACION
              </button>
            </h2>
            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    <ul>
                        <li class="lista">Generar cotizaion</li>
                        <li class="lista">Ver cotizaciones</li>
                    </ul>

                </div>
            </div>
          </div>
                 
           <% if(perfil.equals("admin")){ %>       
          <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingThree">
              <button class="menu accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                VENTAS
              </button>
            </h2>
            <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    <ul>
                        <li class="lista">Ventas diarias </li>
                        <li class="lista">Ventas del Mes</li>
                        <li class="lista">ventas Realizadas</li>
                    </ul>

                </div>
            </div>
          </div>
          <%
             }
             %>
             
                 
        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingfour">
              <button class="menu accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapsefour" aria-expanded="false" aria-controls="flush-collapsefour">
                APARTADOS
              </button>
            </h2>
            <div id="flush-collapsefour" class="accordion-collapse collapse" aria-labelledby="flush-headingfour" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    <ul>
                        <li class="lista">Apartar productos</li>
                        <li class="lista">Apartados por fecha</li>
                        <li class="lista">consultar</li>
                    </ul>

                </div>
            </div>
          </div>
          
                 
        </div>
             
        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingfive">
              <button class="menu accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapsefive" aria-expanded="false" aria-controls="flush-collapsefive">
                INVETARIOS
              </button>
            </h2>
            <div id="flush-collapsefive" class="accordion-collapse collapse" aria-labelledby="flush-headingfive" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    <ul>
                        <li class="lista">Abrir nuevo inventario</li>
                        <li class="lista">Eliminar inventarion</li>
                    </ul>

                </div>
            </div>
          </div>
             
           <% if(perfil.equals("admin")){ %>  
           <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingsix">
              <button class="menu accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapsesix" aria-expanded="false" aria-controls="flush-collapsesix">
                TRABAJADORES
              </button>
            </h2>
            <div id="flush-collapsesix" class="accordion-collapse collapse" aria-labelledby="flush-headingsix" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    <ul>
                       <li class="lista"><a class="nav-link text-dark" href="usuariosController?US=listar"> Lista de Usuarios</a></li>
                        <li class="lista"><a class="nav-link text-dark" href="empleadosController?op=listar">Trabajadores</a></li>
                    </ul>
                </div>
            </div>
            </div> 
           <%
             }
             %>
             
               
        </div>
             
            
         </nav>
       </div>
     </div>
    
        
        
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