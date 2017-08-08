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
            <div class="toprow-1">
                <a class="swipe-control" href="#"><i class="fa fa-align-justify"></i></a>
            </div>

            <header class="header">
                <div class="container">
                    <div class="box-right">
                        <ul class="social-list">
                            <li>
                                <a href="//www.facebook.com/"><span class="fa fa-facebook"></span></a>
                            </li>
                            <li>
                                <a href="//www.twitter.com/"><span class="fa fa-twitter"></span></a>
                            </li>
                            <li>
                                <a href="//plus.google.com/+"><span class="fa fa-google-plus"></span></a>
                            </li>
                            <li>
                                <a href="//www.youtube.com/"><span class="fa fa-youtube"></span></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4 col-xs-6">
                            <div id="logo" class="logo">
                                <a href="#"><img src="${pageContext.request.contextPath}/images/utez.png" title="Electronics online store" alt="Electronics online store" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="col-sm-5 col-xs-6">
                            <div id="search" class="search">
                                <input type="text" name="search" value="" placeholder="Buscar">
                                <button type="button" class="button-search">Buscar</button>
                                <div class="clear"></div>
                            </div>
                        </div>

                        <!--    <div class="col-sm-3" style="font-size: 19px;line-height: 24px; margin-top:12px">
                        <a href="Login.html"><i class="fa fa-user"></i>
                        <span >Iniciar Sesión</span>
                      </a>
                    </div> POSIBLE LOGIN-->
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
                                            <a href="Index.html"><i class="fa fa-home"></i><span class="hidden-sm">Inicio</span></a>
                                        </li>
                                        <li>
                                            <a href="#" id="wishlist-total" title="Wish List (0)"><i class="fa fa-calendar"></i> <span class="hidden-sm">28/06/2017</span></a>
                                        </li>
                                    </ul>
                                    <div class="box-cart">
                                        <div id="cart" class="cart">
                                            <button type="button" data-toggle="dropdown" data-loading-text="Loading..." class="dropdown-toggle">
                                                <span class="fa fa-user"  href="Login.html"></span>
                                                <a class="cart-total3 hidden-xs"  href="<s:url value='/login.action'/>">${sessionScope.userName}</a>
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
                        <div id="menu-icon">Menu</div>
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
                        <h1>Periodos</h1>   
                        <div class="box box-success">
                            <div class="box-header with-border">
                                <h3 class="box-title">Lista de Periodos</h3>
                            </div>
                            <s:if test="listaPeriodos.size() >0"> 
                                <table id="example" class="display">
                                    <thead class="fondo-verde texto-blanco">
                                        <tr>
                                            <th style="width:20%">Nombre</th>
                                            <th style="width:20%">Fecha Inicio</th>
                                            <th style="width:30%">Fecha Fin</th>
                                            <th style="width:5%">Modificar</th>
                                            <th style="width:5%">Eliminar</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <s:iterator value="listaPeriodos"> 

                                            <tr>
                                                <td><s:property value="periodo" ></s:property></td>
                                                <td><s:property value="inicio" ></s:property></td>
                                                <td><s:property value="fin" ></s:property></td>


                                                <s:url id="editar" action="prepararPeriodo">
                                                    <s:param name="peri.id" value="id"/>                               
                                                </s:url>

                                                <s:url id="eliminar" action="eliminarPeriodo" >
                                                    <s:param name="peri.id" value="id"/>
                                                </s:url>

                                                <td><s:a href="%{editar}"><center><i class="fa fa-pencil" style="color:blue"></i></center></s:a></td>
                                        <td><s:a href="%{eliminar}"> <center><i class="fa fa-times" style="color:red"></i> </center></s:a> </td>
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
