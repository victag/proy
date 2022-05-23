<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Agregar Categoria</button>
                    
                    <!-- Modal -->                   
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Agregar Catgoria</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-6 form-group">
                                                <label for="recipient-name" class="col-form-label">Categoria</label>
                                                <input type="text" class="form-control" id="recipient-name">
                                            </div>
                                            <div class="col-md-6 form-group">
                                                <label for="message-text" class="col-form-label">Stock</label>
                                                <input type="text" class="form-control" id="message-text">
                                            </div>
                                            <div class="col-md-6 form-group">
                                                <label for="message-text" class="col-form-label">Precio</label>
                                                <input type="text" class="form-control" id="message-text">
                                            </div>
                                        </div>

                                    </form>
                                </div>
                                <!-- Agregar Categoria -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary">Agregar</button>
                                </div>
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
                            <tr>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>Otto</td>
                                <td><%@ include file="button.jsp"%></td>
                            </tr>
                            <tr>
                                <td>Jacob</td>
                                <td>Thornton</td>
                                <td>Otto</td>
                                <td><%@ include file="button.jsp"%></td>
                            </tr>
                            <tr>
                                <td>Larry</td>
                                <td>the Bird</td>
                                <td>Otto</td>
                                <td><%@ include file="button.jsp"%></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

            </div>
        </main>
    </body>
</html>
