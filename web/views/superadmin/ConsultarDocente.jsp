<%-- 
    Document   : ConsultarDocente
    Created on : 26-jul-2017, 13:06:13
    Author     : ricar
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/ut2.png" type="image/x-icon" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" >
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/material-design.css" >
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/stylesheet.css" >
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css" >
        <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js" type="text/javascript"></script>


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

        <script>
            /* When the user clicks on the button, 
             toggle between hiding and showing the dropdown content */
            function myFunction() {
                document.getElementById("myDropdown").classList.toggle("show");
            }

            // Close the dropdown if the user clicks outside of it
            window.onclick = function (event) {
                if (!event.target.matches('.dropbtn')) {

                    var dropdowns = document.getElementsByClassName("dropdown-content");
                    var i;
                    for (i = 0; i < dropdowns.length; i++) {
                        var openDropdown = dropdowns[i];
                        if (openDropdown.classList.contains('show')) {
                            openDropdown.classList.remove('show');
                        }
                    }
                }
            }
        </script>

    </head>
    <body class="common-home">
        <!-- swipe menu -->

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
                            <h1>SIDH</h1>
                            <h3>Sistema de Disponibilidad de Horarios</h3>
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
                                    <div class="box-cart">
                                        <div id="cart" class="cart">
                                            <button type="button" data-loading-text="Loading...">
                                                <span class="fa fa-user"></span>
                                                <a class="cart-total3"  href="<s:url value='/logout.action'/>">Salir</a>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </nav>
                        </div>

                    </div>
                </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div id="menu-gadget" class="menu-gadget">
                        <div id="menu-icon">Menú</div>
                        <ul class="menu">
                            <li>
                                <a href="/usuario/altausuario.action">Alta Docentes</a>
                                <i class="fa fa-user-secret  "></i>
                            </li>
                            <li>
                                <a href="/usuario/consultarUsuarios.action">Consulta Docentes</a>
                                <i class="fa fa-users"></i>
                            </li>
                            <li>
                                <a href="#">Horas Libres </a>
                            </li>
                            <li>
                                <a href="#">Horarios General </a>
                            </li>
                            <li>
                                <a href="Formulario.html">Formularios </a>
                                <i class="fa fa-list"></i>
                            </li>
                            <li>
                                <a href="Tablas.html">Consultar Horarios Profesores </a>
                                <i class="fa fa-table"></i>
                            </li>

                        </ul>
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
                            <div class="box-heading"><h3><i class="fa fa-home"></i>Menu</h3></div>
                            <div class="box-content">
                                <div class="box-category">
                                    <ul class="menu">
                                        <li>
                                            <a href="/usuario/altausuario.action">Alta Docentes</a>
                                            <i class="fa fa-file-text  "></i>
                                        </li>
                                        <li>
                                            <a href="/usuario/getUsuarios.action">Consulta Docentes</a>
                                            <i class="fa fa-users"></i>
                                        </li>
                                        <li>
                                            <a href="#">Horas Libres </a>
                                        </li>
                                        <li>
                                            <a href="#">Horarios General </a>
                                        </li>
                                        <li>
                                            <a href="Formulario.html">Formularios </a>
                                            <i class="fa fa-list"></i>
                                        </li>
                                        <li>
                                            <a href="Tablas.html">Consultar Horarios Profesores </a>
                                            <i class="fa fa-table"></i>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="content" class="col-sm-9">
                        <ul class="breadcrumb">
                            <li><a href="#"><i class="fa fa-home"></i></a></li>
                            <li><a href="#">Registrar</a></li>
                            <li><a href="#">Guardar</a></li>
                        </ul>
                        <h1>Docente</h1>   
                        <div class="box box-success">
                            <div class="box-header with-border">
                                <h3 class="box-title">Lista de Profesores</h3>
                            </div>
                            <s:if test="listaUsuarios.size() >0"> 
                                <table id="example" class="display">
                                    <thead class="fondo-verde texto-blanco">
                                        <tr>
                                            <th style="width:20%">Nombre</th>
                                            <th style="width:20%">Apellidos</th>
                                            <th style="width:30%">Email</th>
                                            <th style="width:5%">Modificar</th>
                                            <th style="width:5%">Eliminar</th>
                                            <th style="width:5%">EliminarDisp</th>
                                            <th style="width:5%">ImprimirDisp</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <s:iterator value="listaUsuarios"> 

                                            <tr>
                                                <td><s:property value="nombre" ></s:property></td>
                                                <td><s:property value="apellidoPaterno" ></s:property><s:property value="apellidoMaterno" ></s:property></td>
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

                                                <td><s:a href="%{editar}"><i class="fa fa-pencil" style="color:blue"></i></s:a></td>
                                                <td><s:a href="%{eliminar}"><i class="fa fa-times" style="color:red"></i></s:a> </td>

                                                    <td>
                                                    <s:if test="estado == true">
                                                        <s:a href="%{disponibilidad}"><i class="fa fa-times" style="color:red"></i></s:a>
                                                        <td><s:a href="%{print}"><i class="fa fa-times" style="color:red"></i></s:a> </td>
                                                    </s:if><s:else>                                                        
                                                        <p>Registro pendiente</p>
                                                        <p>Registro pendiente</p>
                                                    </s:else>
                                                    
                                                    </td>



                                                </tr>

                                            </tbody>
                                    </s:iterator>  
                                </table>        
                            </s:if>      
                        </div>

                        <div class="box-footer clearfix text-center">
                            <ul class="pagination pagination-sm no-margin">
                                <li><a href="#">&lt;</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">&gt;</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
