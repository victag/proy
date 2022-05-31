<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#sidebar" aria-controls="offcanvasExample" >
            <span class="navbar-toggler-icon" data-bs-target="#sidebar"></span>
        </button>
        <a class="navbar-brand me-auto ms-lg-0 ms-3 text-uppercase fw-bold"  href="#">FERRETERIA LILY</a>

        <div class="collapse navbar-collapse">

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
                        <li><a class="dropdown-item" href="logiController?op=cerrar">Cerrar cesi�n</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="offcanvas offcanvas-start sidebar-nav bg-primary" tabindex="-1">
    <div class="offcanvas-body p-0">
        <nav class="navbar-dark">
            <ul class="navbar-nav">
                <li>
                    <div class="text-success small fw-bold text-uppercase px-3 text-light"> Bienvenido <%=usuario%>  </div>
                </li>
                <li>
                    <a href="Index.jsp" class="nav-link px-3 active">
                        <span class="me-2"><i class="bi bi-speedometer2"></i></span>
                        <span class="me-2">INICIO <i class="fa-solid fa-house-chimney "></i></span>
                    </a>
                </li>
            </ul>
        </nav>   

        <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item ">
                <h2 class="accordion-header" id="flush-headingOne">
                    <button class="menu accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                        ALMACEN
                    </button>
                </h2>
                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                        <ul>
                            <li class="lista"> <a href="ProductoController?op=listar">Productos</a></li>
                            <li class="lista"> <a href="CategoriaController?op=listar" >Categorias</a></li>
                            <li class="lista"> <a href="MarcasController?op=listar">Marcas</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingseven">
                    <button class="menu accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseseven" aria-expanded="false" aria-controls="flush-collapseseven">
                        PRODUCTOS PERECEDEROS
                    </button>
                </h2>
                <div id="flush-collapseseven" class="accordion-collapse collapse" aria-labelledby="flush-headingseven" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                        <ul>
                            <li class="lista"> <a href="PerecederosController?op=listar" >Lista de productos</a></li>
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

            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingfive">
                    <button class="menu accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapsefive" aria-expanded="false" aria-controls="flush-collapsefive">
                        INVENTARIOS
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

            <% if (perfil.equals("admin")) { %>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingsix">
                        <button class="menu accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapsesix" aria-expanded="false" aria-controls="flush-collapsesix">
                            TRABAJADORES
                        </button>
                    </h2>
                    <div id="flush-collapsesix" class="accordion-collapse collapse" aria-labelledby="flush-headingsix" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            <ul>
                                <li class="lista"><a class="nav-link text-dark" href="usuariosController?US=listar">Lista de Usuarios</a></li>
                                <li class="lista"><a class="nav-link text-dark" href="empleadosController?op=listar">Trabajadores</a></li>
                            </ul>
                        </div>
                    </div>
                </div>  
                <%
                    }
                %>      


        </div>


    </div>
</div>