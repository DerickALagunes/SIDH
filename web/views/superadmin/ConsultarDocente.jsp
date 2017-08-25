<%-- 
    Document   : ConsultarDocente
    Created on : 26-jul-2017, 13:06:13
    Author     : ricar
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/ut2.png" type="image/x-icon" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" >
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/material-design.css" >
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/stylesheet.css" >
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css" >
        <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css">


        <style>
            .dropbtn {
                background-color: #4CAF50;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
                cursor: pointer;
            }

            .dropbtn:hover, .dropbtn:focus {
                background-color: #3e8e41;
            }

            .dropdown {
                float: right;
                position: relative;
                display: inline-block;

            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                overflow: auto;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                right: 0;
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown a:hover {background-color: #f1f1f1}

            .show {display:block;}
        </style>

    </head>
    <body class="common-home">
        <jsp:include page="/layaout/validaSesion.jsp"/>

        <div id="page">
            <div class="shadow"></div>

            <header class="header">
                <div class="container">
                    <br/>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4 col-xs-6">
                            <div id="logo" class="logo">
                                <a href="#"><img src="${pageContext.request.contextPath}/images/utez.png" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="col-sm-5 col-xs-6">
                            <center>
                                <h1>SIDH</h1>
                                <h3>Sistema de Disponibilidad de Horarios</h3>
                            </center>
                        </div>
                    </div>
                </div>


                <div class="container">
                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-9">
                            <nav id="top" class="top_panel">
                                <div id="top-links" class="nav">
                                    <ul class="list-inline">
                                        <li class="first">
                                            <a href="#"><span>${sessionScope.userName}</span></a>
                                        </li>
                                    </ul>
                                    <a href="<s:url value='/logout.action'/>">
                                        <div class="box-cart">                                  
                                            <div id="cart" class="cart">
                                                <button type="button">
                                                    <p class="cart-total3"><span class="fa fa-user">-Salir</span></p>                                                    
                                                </button>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </nav>
                        </div>

                    </div>
                </div>
        </div>

        <div class="header_modules"></div>

        <div id="container">
            <div class="container">
                <div class="row">

                    <div id="column-left" class="col-sm-3 ">
                        <div class="box category">
                            <div class="box-heading"><h3><i class="fa fa-home"></i>Menú</h3></div>
                            <div class="box-content">
                                <div class="box-category">
                                    <ul class="menu">
                                        <li>
                                            <a href="<s:url value='/consultarPeriodos.action'/>">Periodos</a>
                                            <i class="fa fa-calendar"></i>
                                        </li>
                                        <li>
                                            <a  href="<s:url value='/consultarUsuarios.action'/>">Docentes</a>
                                            <i class="fa fa-users"></i>
                                        </li>
                                        <li>
                                            <a href="<s:url value='/xml.action'/>">Exportar información</a>
                                            <i class="fa fa-download"></i>
                                        </li>
                                        <li>
                                            <a href="<s:url value='/notificar.action'/>">Recordatorio</a>
                                            <i class="fa fa-mail-forward"></i>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>




                    <div id="content" class="col-sm-9">
                        <h1>Gestión de Docente</h1>   
                        <div class="box box-success">
                            <div class="box-header with-border">
                                <h3 class="box-title">Lista de Docentes</h3>
                            </div>
                            <s:if test="listaUsuarios.size() >0"> 
                                <table id="example" class="table table-bordered">
                                    <thead class="fondo-verde texto-blanco">
                                        <tr>
                                            <th style="width:11%;text-align: center">Nombre</th>
                                            <th style="width:15%;text-align: center">Apellidos</th>
                                            <th style="width:10%;text-align: center">Teléfono</th>
                                            <th style="width:10%;text-align: center">Email</th>                                            
                                            <th style="width:10%;text-align: center">Modificar Docente</th>
                                            <th style="width:10%;text-align: center">Eliminar Docente</th>                                            
                                            <th style="width:10%;text-align: center">Cambiar Permiso</th>                                            
                                            <th style="width:10%;text-align: center">Imprimir Disponibilidad</th>
                                            <th style="width:10%;text-align: center">Eliminar Disponibilidad</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <s:iterator value="listaUsuarios"> 

                                            <tr>
                                                <td><s:property value="nombre" ></s:property></td>
                                                <td><s:property value="apellidoPaterno" ></s:property> <s:property value="apellidoMaterno" ></s:property></td>
                                                <td><s:property value="telefono" /></td>
                                                <td><s:property value="email" ></s:property></td>

                                                <s:url id="disponibilidad" action="borrarDisp">
                                                    <s:param name="usua.id" value="id"/>                               
                                                </s:url>

                                                <s:url id="print" action="printDispo">
                                                    <s:param name="usua.id" value="id"/>                               
                                                </s:url>

                                                <s:url id="editar" action="editarUsuario">
                                                    <s:param name="usua.id" value="id"/>                               
                                                </s:url>

                                                <s:url id="eliminar" action="eliminarUsuario" >
                                                    <s:param name="usua.id" value="id"/>
                                                </s:url>

                                                <s:url id="asignar" action="asignarAdmin" >
                                                    <s:param name="usua.id" value="id"/>
                                                </s:url>





                                                <td style="text-align: center">
                                                    <s:a href="%{editar}">
                                                        <div>
                                                            <i class="fa fa-pencil fa-lg" style="color:blue"></i>
                                                        </div>
                                                    </s:a>
                                                </td>
                                                <td style="text-align: center">
                                                    <s:a href="%{eliminar}" onclick = "return confirm('Esta seguro que desea eliminar?');">
                                                        <div>
                                                            <i class="fa fa-times fa-lg" style="color:red"></i>
                                                        </div>
                                                    </s:a> 
                                                </td>



                                                <td style="text-align: center">
                                                    <s:if test="tipoUsuario == 1">
                                                        <s:a href="%{asignar}"> 
                                                            <div>
                                                                <i class="fa fa-user fa-lg" style="color:darkgreen"></i>
                                                            </div>
                                                        </s:a>
                                                    </s:if>
                                                    <s:else>
                                                        <s:a href="%{asignar}" onclick = "return confirm('Esta seguro que desea hacer administrador?');">
                                                            <div>
                                                                <i class="fa fa-user fa-lg" style="color:grey"></i>
                                                            </div>
                                                        </s:a> 
                                                    </s:else>
                                                </td>

                                                <td style="text-align: center">
                                                    <s:if test="estado == true">
                                                        <s:a href="%{print}">
                                                            <div>
                                                                <i class="fa fa-print fa-lg" style="color:blue"></i>
                                                            </div>
                                                        </s:a>
                                                    </s:if>
                                                    <s:else>                                                        
                                                        <p style="text-align: center">Registro pendiente</p>
                                                    </s:else>
                                                </td>

                                                <td style="text-align: center"> 
                                                    <s:if test="estado == true">
                                                        <s:a href="%{disponibilidad}" onclick = "return confirm('Esta seguro que desea eliminar?');">
                                                            <div>
                                                                <i class="fa fa-times fa-lg" style="color:red"></i>
                                                            </div>
                                                        </s:a>
                                                    </s:if>
                                                    <s:else>                                                        
                                                        <p style="text-align: center">Registro pendiente</p>
                                                    </s:else>
                                                </td>

                                            </tr>

                                        </tbody>
                                    </s:iterator>  
                                </table>        
                            </s:if>
                            <s:else>
                                <h2>No hay Docentes registrados</h2>
                            </s:else>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <script>
            if ('<%= request.getParameter("borrar")%>' == 'true') {
                swal({
                    title: "",
                    text: "Se ha borrado la disponibilidad",
                    type: "success",
                    confirmButtonText: "Aceptar",
                    closeOnConfirm: false,
                    html: true
                });
            }
            if ('<%= request.getParameter("borrarDocente")%>' == 'true') {
                swal({
                    title: "",
                    text: "Se ha borrado el docente",
                    type: "success",
                    confirmButtonText: "Aceptar",
                    closeOnConfirm: false,
                    html: true
                });
            }
            if ('<%= request.getParameter("borrarDocente")%>' == 'user') {
                swal({
                    title: "",
                    text: "No puedes borrar tu propio usuario",
                    type: "error",
                    confirmButtonColor: "#c92626",
                    confirmButtonText: "Aceptar",
                    closeOnConfirm: false,
                    html: true
                });
            }
            if ('<%= request.getParameter("borrarDocente")%>' == 'user') {
                swal({
                    title: "",
                    text: "No puedes borrar tu propio usuario",
                    type: "error",
                    confirmButtonColor: "#c92626",
                    confirmButtonText: "Aceptar",
                    closeOnConfirm: false,
                    html: true
                });
            }
            if ('<%= request.getParameter("editarDocente")%>' == 'error') {
                swal({
                    title: "Error",
                    text: "No se puede editar el usuario",
                    type: "error",
                    confirmButtonColor: "#c92626",
                    confirmButtonText: "Aceptar",
                    closeOnConfirm: false,
                    html: true
                });
            }
            if ('<%= request.getParameter("editarDocente")%>' == 'true') {
                swal({
                    title: "",
                    text: "Se ha cambiado la información del usuario",
                    type: "success",
                    confirmButtonText: "Aceptar",
                    closeOnConfirm: false,
                    html: true
                });
            }
            if ('<%= request.getParameter("self")%>' == 'true') {
                swal({
                    title: "",
                    text: "No puedes cambiar tu propio permiso",
                    type: "error",
                    confirmButtonColor: "#c92626",
                    confirmButtonText: "Aceptar",
                    closeOnConfirm: false,
                    html: true
                });
            }
            if ('<%= request.getParameter("change")%>' == 'false') {
                swal({
                    title: "",
                    text: "No se pudo cambiar el permiso",
                    type: "error",
                    confirmButtonColor: "#c92626",
                    confirmButtonText: "Aceptar",
                    closeOnConfirm: false,
                    html: true
                });
            }
            if ('<%= request.getParameter("change")%>' == 'true') {
                swal({
                    title: "",
                    text: "El permiso se ha cambiado",
                    type: "success",
                    confirmButtonText: "Aceptar",
                    closeOnConfirm: false,
                    html: true
                });
            }






        </script>

    </body>
</html>
