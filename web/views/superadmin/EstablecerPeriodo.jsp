<%-- 
    Document   : EstablecerPeriodo
    Created on : 31/07/2017, 10:08:07 AM
    Author     : derick
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
                                <a href="<s:url value='/usuario/altausuario.action'/>">Alta Docentes</a>
                                <i class="fa fa-user-secret "></i>
                            </li>
                            <li>
                                <a  href="<s:url value='/usuario/consultarUsuarios.action'/>">Consulta Docentes</a>
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
                                            <a href="<s:url value='/usuario/altausuario.action'/>">Alta Docentes</a>
                                            <i class="fa fa-user-secret "></i>
                                        </li>
                                        <li>
                                            <a  href="<s:url value='/usuario/consultarUsuarios.action'/>">Consulta Docentes</a>
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


                        <s:form action="createUsuario" method="post" >
                            <fieldset id="account">
                                <legend>Datos Personales</legend>

                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-firstname">Nombre/s</label>
                                    <div class="col-sm-10">
                                        <s:textfield name="usua.nombre" id="user.nombre" label="Nombre" placeholder="Nombre..." type="text" />

                                    </div>
                                </div>


                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-lastname">Apellido Paterno</label>
                                    <div class="col-sm-10">
                                        <s:textfield name="usua.apellidoPaterno" id="user.apellidoPaterno" label="Apellido Paterno" placeholder="Apellido Paterno..." type="text" />
                                    </div>
                                </div>

                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-lastname">Apellido Materno</label>
                                    <div class="col-sm-10">
                                        <s:textfield name="usua.apellidoMaterno" id="user.apellidoMaterno" label="Apellido Materno" placeholder="Apellido Materno..." type="text" />
                                    </div>
                                </div>  

                                <!--     </fieldset>
                                     <fieldset>
                                         <legend>Usuario</legend>-->

                                <s:div cssClass="form-group required">
                                    <s:label cssClass="col-sm-2 control-label" for="ingresa-email">Correo</s:label>
                                        <div class="col-sm-10">
                                        <s:textfield name="usua.email" id="user.email" label="email" placeholder="Correo..." type="text" cssClass="form-control"/>
                                    </div>
                                </s:div>



                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="ingresa-contraseña">Contraseña</label>
                                    <div class="col-sm-10">
                                        <s:textfield name="usua.contrasena" id="user.contrasena" label="Contraseña" placeholder="Contraseña..." type="password"  />
                                    </div>
                                </div>

                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="ingresa-contraseña">Confirmar Constraseña</label>
                                    <div class="col-sm-10">
                                        <s:textfield  id="user.contrasena" label="Contraseña" placeholder="Contraseña..." type="password" />
                                    </div>
                                </div>


                            </fieldset>

                            <s:submit value="Registrar" />

                            <div class="buttons">
                                <div class="pull-right"><span class="mg-add">Estas a punto de registrarte estas seguro?<a href="#" class="agree"><b>Politicas de Provacidad</b></a></span>
                                    <input type="checkbox" name="agree" value="1">
                                    &nbsp;
                                    <input type="submit" value="Registrar" class="btn btn-primary">
                                </div>
                            </div>
                        </s:form>
                    </div>



                </div>
            </div>
        </div>
    </body>
</html>


