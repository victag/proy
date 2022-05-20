<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
       <div class="container-fluid">
         <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#sidebar" aria-controls="offcanvasExample" >
           <span class="navbar-toggler-icon" data-bs-target="#sidebar"></span>
         </button>
         <a class="navbar-brand me-auto ms-lg-0 ms-3 text-uppercase fw-bold"  href="#">FERRETERIA LILY</a>

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
                   <li><a class="dropdown-item" href="Login.jsp">Cerrar cesión</a></li>
               </ul>
             </li>
           </ul>
         </div>
       </div>
     </nav>

     <div class="offcanvas offcanvas-start sidebar-nav bg-dark" tabindex="-1" id="" >
       <div class="offcanvas-body p-0">
         <nav class="navbar-dark">
           <ul class="navbar-nav">
             <li>
               <div class="text-success small fw-bold text-uppercase px-3"> MENÚ </div>
             </li>
             <li>
               <a href="#" class="nav-link px-3 active">
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
             
          <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingsix">
              <button class="menu accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapsesix" aria-expanded="false" aria-controls="flush-collapsesix">
                USUARIOS
              </button>
            </h2>
            <div id="flush-collapsesix" class="accordion-collapse collapse" aria-labelledby="flush-headingsix" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    <ul>
                        <li class="lista">Chat de Usuarios</li>
                        <li class="lista">Lista de Usuarios</li>
                    </ul>

                </div>
            </div>
          </div>     
        </div>
             
            
         </nav>
       </div>
     </div>
    
        
        
        <main class="mt-5 pt-3">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-12">
                <h4>SISTEMA DE CONTROL DE INVENTARIO</h4>
              </div>
            </div>
           &nbsp; 
            <div class="row">
                
                <div class="trec col-md-3 mb-3">
                  <div class="card bg-primary text-white h-100">
                    <div class="card-body py-3">PROVEDORES</div>
                    <div class="card-footer d-flex">
                      Ver detalles
                      <span class="ms-auto">
                        <i class="bi bi-chevron-right"></i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="trec col-md-3 mb-3">
                  <div class="card bg-warning text-dark h-100">
                    <div class="card-body py-3">VENTAS</div>
                    <div class="card-footer d-flex">
                      Ver detalles 
                      <span class="ms-auto">
                        <i class="bi bi-chevron-right"></i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="trec col-md-3 mb-3">
                  <div class="card bg-success text-white h-100">
                    <div class="card-body py-3">MARCAS DE PRODUCTOS</div>
                    <div class="card-footer d-flex">
                      Ver detalles

                    </div>
                  </div>
                </div>
                <div class="trec col-md-3 mb-3">
                  <div class="card bg-warning text-white h-100">
                    <div class="card-body py-3">PRODUCTOS INGRESADOS</div>
                    <div class="card-footer d-flex">
                      Ver detalles
                    </div>
                  </div>
                </div>

                <div class="trec col-md-3 mb-3">
                  <div class="card bg-danger text-white h-100">
                    <div class="card-body py-3">CAJA</div>
                    <div class="deta card-footer d-flex">
                        <a href="url"> Ver delatalles</a>
                    </div>
                  </div>
                </div>

                <div class="trec col-md-3 mb-3">
                  <div class="card bg-primary text-white h-100">
                    <div class="card-body py-3">APARTADOS</div>
                    <div class="card-footer d-flex">
                      Ver detalles
                    </div>
                  </div>
                </div>
                <div class="trec col-md-3 mb-3">
                  <div class="card bg-primary text-white h-100">
                    <div class="card-body py-3">COTIZACION</div>
                    <div class="card-footer d-flex">
                      Ver detalles
                    </div>
                  </div>
                </div>
                
                <div class="trec col-md-3 mb-3">
                  <div class="card bg-primary text-white h-100">
                    <div class="card-body py-3">ALAMCEN </div>
                    <div class="card-footer d-flex">
                      Ver detalles
                    </div>
                  </div>
                </div>
            </div>    
           
           
           <div class="row">
          <div class="col-md-6 mb-3">
            <div class="card h-100">
              <div class="card-header">
                <span class="me-2"><i class="bi bi-bar-chart-fill"></i></span>
                Area 
              </div>
              <div class="card-body">
                <canvas class="chart" width="400" height="200"></canvas>
              </div>
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <div class="card h-100">
              <div class="card-header">
                <span class="me-2"><i class="bi bi-bar-chart-fill"></i></span>
                EMPLEADO DEL MES 
              </div>
              <div class="card-body">
                <canvas class="chart" width="200" height="50"></canvas>
                <img src="Sets/Imagenes/EJEM.jpg" alt=""/>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 mb-3">
            <div class="card">
              <div class="card-header">
                <span><i class="bi bi-table me-2"></i></span> TRABAJADORES
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table id="example"  class="table table-striped data-table" style="width: 100%">
                    <thead>
                      <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Edad </th>
                        <th>Cargo</th>
                        <th>Fecha ingreso</th>
                        <th>Sueldo</th>
                      </tr>
                    </thead>
                    <tr>
                        <th>     </th>
                        <th>     </th>
                        <th>     </th>
                        <th>     </th>
                        <th>     </th>  
                        <th>     </th>
                    </tr>
                     <tr>
                        <th>     </th>
                        <th>     </th>
                        <th>     </th>
                        <th>     </th>
                        <th>     </th>
                        <th>     </th>
                    </tr>
                    
                      
                    </tfoot>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
           
           
           
          </div>
        </main>
    </body>
</html>