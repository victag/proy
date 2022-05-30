<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.categoria"%>
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

                <!-- Titulo-->
                <div class="row">
                    <div class="col-md-12">
                        <h4>CATEGORIAS</h4>
                    </div>
                </div> 

                <!-- Buscador y Ventana Modal -->
                <div class="d-flex align-items-center justify-content-between">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Modal">Agregar Categoria</button>

                    <!-- Modal -->                   
                    <div class="modal fade" id="Modal" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <form method="post" action="CategoriaController?op=insertar">

                                    <!-- Titulo del modal --> 
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="ModalLabel">Agregar Categoria</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>

                                    <!-- Cuerpo del modal --> 
                                    <div class="modal-body">                                   
                                        <div class="row">
                                            <div class="col-md-6 form-group">
                                                <label for="categoria" class="col-form-label">Categoria</label>
                                                <input type="text" class="form-control" id="categoria" name="txtCat">
                                            </div>
                                            <div class="col-md-6 form-group">
                                                <label for="stock" class="col-form-label">Stock</label>
                                                <input type="text" class="form-control" id="stock" name="txtStock">
                                            </div>
                                            <div class="col-md-6 form-group">
                                                <label for="precio" class="col-form-label">Precio</label>
                                                <input type="text" class="form-control" id="precio" name="txtPrecio">
                                            </div>
                                        </div>

                                        <!-- Agregar Categoria -->
                                        <div class="form-group mt-3">
                                            <button type="submit" class="btn btn-primary">Agregar</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Buscador -->
                    <div class="input-brand input-group mt-3">
                        <input type="text" class="form-control" placeholder="Buscar" aria-label="Buscar" aria-describedby="button-addon2">
                        <button class="btn btn-outline-secondary" type="button" id="button-addon2">Buscar</button>
                    </div>
                </div>

                <!-- Tabla de categorias -->
                <div class="tabla row text-center">
                    <table class="table">
                        <thead class="table-light">
                            <tr>
                                <th scope="col">CATEGORÍA</th>
                                <th scope="col">STOCK</th>
                                <th scope="col">PRECIO</th>
                                <th scope="col">ACCIÓN</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ArrayList<categoria> lista = (ArrayList<categoria>) request.getAttribute("lista");
                                for (int i = 0; i < lista.size(); i++) {
                                    categoria cat = lista.get(i);

                            %>
                            <tr>
                                <td><%=cat.getNombre()%></td>
                                <td><%=cat.getStock()%></td>
                                <td><%=cat.getPrecio()%></td>
                                <td>
                                    <!-- Toolbar --> 
                                    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                        <div class="btn-group mr-2" role="group" aria-label="Basic example">

                                            <!-- Button trigger modal - Editar-->
                                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#modalEditar<%=i%>">Editar</button>

                                            <div class="modal fade" id="modalEditar<%=i%>" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">
                                                        <form method="post" action="CategoriaController?op=editar&idC=<%=cat.getCodigo()%>">

                                                            <!-- Titulo del modal -->
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="ModalLabel">Editar Categoria</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>

                                                            <!-- Cuerpo del modal -->
                                                            <div class="modal-body">                                   
                                                                <div class="row">
                                                                    <div class="col-md-6 form-group">
                                                                        <label for="categoria" class="col-form-label">Categoria</label>
                                                                        <input type="text" class="form-control" id="categoria" name="txtCatEdit" value="<%=cat.getNombre()%>">
                                                                    </div>
                                                                    <div class="col-md-6 form-group">
                                                                        <label for="stock" class="col-form-label">Stock</label>
                                                                        <input type="text" class="form-control" id="stock" name="txtStockEdit" value="<%=cat.getStock()%>">
                                                                    </div>
                                                                    <div class="col-md-6 form-group">
                                                                        <label for="precio" class="col-form-label">Precio</label>
                                                                        <input type="text" class="form-control" id="precio" name="txtPrecioEdit" value="<%=cat.getPrecio()%>">
                                                                    </div>
                                                                </div>

                                                                <!-- Editar Categoria -->
                                                                <div class="form-group mt-3">
                                                                    <button type="submit" class="btn btn-primary">Actualizar</button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Button trigger modal - Eliminar-->
                                            <button type="button" class="btn btn-danger" data-bs-target="#modalEliminar<%=i%>">Eliminar</button> 

                                            <div class="modal fade" id="modalEliminar<%=i%>" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <form method="post" action="CategoriaController?op=eliminar&idE=<%=cat.getCodigo()%>">

                                                            <!-- Titulo del modal -->
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="ModalLabel">Editar Categoria</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>

                                                            <!-- Cuerpo del modal -->
                                                            <div class="modal-body">  
                                                                ¿Desea eliminar este registro?

                                                                <!-- Eliminar Categoria -->
                                                                <div class="form-group mt-3">
                                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                                                    <button type="submit" class="btn btn-primary">Eliminar</button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                           
                                    </div>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </body>

    <script type="text/javascript">
        function Confirm(b) {
            var mensaje = confirm("¿Desea eliminar este registro?");
            if (mensaje) {
                document.getElementById("formEliminar"+b).submit();                        
            }

            else {              
            }
        }
    </script>
</html>
