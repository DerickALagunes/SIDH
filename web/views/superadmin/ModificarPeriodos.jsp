<%-- 
    Document   : AltaPeriodos
    Created on : 02-ago-2017, 0:40:55
    Author     : ricar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html ng-app="SIDH">
    <head>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/ut2.png" type="image/x-icon" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" >
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/stylesheet.css" >
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css" >


        <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/moment-with-locales.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/interact.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/angular.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/angular-bootstrap-calendar-tpls.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/datetime-picker.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/rzslider.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/loading-bar.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/angular-animate.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/i18n/angular-locale_es-mx.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/ui-bootstrap-tpls.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/angular-route.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/angular-touch.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/angular-pretty-checkable.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/angularJS/app.js" type="text/javascript"></script>

        <script>
            function validarn(e) { // 1
                key = e.keyCode;
                tecla = String.fromCharCode(key).toLowerCase();
                if (key == 32) {

                }
                if ((key >= 97 && key <= 122) || (key >= 65 && key <= 90) || (tecla == "ñ" || tecla == "Ñ") || (key == 32)) {
                    return true;
                } else {
                    return false;
                }
            }

        </script>


        <script>
            function valor() {
                var inpu = document.getElementById('fecIni').value;
                var inpu2 = document.getElementById('fecFin').value;

                document.getElementById('invisible').value = inpu;
                document.getElementById('invisible2').value = inpu2;
                $('#registrarPeriodo').submit();
                console.log("MIRA!")

            }
        </script>
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
                                <a href="<s:url value='/usuario/altaperiodos.action'/>">Alta Periodos</a>
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
                                            <a href="<s:url value='/usuario/altaperiodos.action'/>">Alta Periodos</a>
                                        </li>
                                        <li>
                                            <a  href="<s:url value='/usuario/consultarPeriodos.action'/>">Consulta Periodos</a>
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
                        <h1>Periodo</h1>      





                        <div class="form-group ">
                            <label class="col-sm-2 control-label" for="input-lastname">Periodo Actual:</label>
                            <div class="col-sm-10">
                                <div class="input-group date">
                                    <input required type="text" class="form-control" value="<s:property value="completa"/>"  readonly  />
                                    <span class="input-group-btn ">
                                        <button type="button" class="btn " ng-click="activar = true" style="color: #19caaf"><i class="fa fa-pencil-square-o" style="color: white"></i></button>
                                    </span>
                                </div>
                            </div>
                        </div>  

                        


                        <form action="modificarPeriodo" method="post"  id="registrarPeriodo" ng-show="activar == true">

                            <input  name="id" value="<s:property value="peri.id"/>" />


                            <legend>Actualizar el Periodo</legend>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label">Periodo</label>
                                <div class="col-sm-10">
                                    <select name="periodo" class="form-control" required="true" >
                                        <option value="">---Selecciona una opción---</option>
                                        <option value="1">Enero- Abril</option>
                                        <option value="2">Mayo- Agosto</option>
                                        <option value="3">Septiembre- Diciembre</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group ">
                                <label class="col-sm-2 control-label" for="input-lastname">Fecha Inicio</label>
                                <div class="col-sm-10">
                                    <div class="input-group date">
                                        <input type="hidden" id="invisible" name="inicio" />
                                        <input required type="text" id="fecIni" onkeypress="valor();" ng-model="fecha"   class="form-control" placeholder="Seleccione Fecha del periodo..." ng-focus="abrirInicio = true" datetime-picker="yyyy-MM-dd" enable-time="false" is-open="abrirInicio" />
                                        <span class="input-group-btn ">
                                            <button type="button" class="btn " ng-click="abrirInicio = true" style="color: #19caaf"><i class="fa fa-calendar" style="color: white"></i></button>
                                        </span>
                                    </div>
                                </div>
                            </div>  


                            <div class="form-group ">
                                <label class="col-sm-2 control-label" for="input-lastname">Fecha Fin</label>
                                <div class="col-sm-10">
                                    <div class="input-group date">
                                        <input type="hidden" id="invisible2" name="fin" />
                                        <input required type="text" id="fecFin" onkeypress="valor();" ng-model="fecha2" class="form-control"  placeholder="Seleccione Fecha Fin del periodo..." ng-focus="abrirFin = true" datetime-picker="yyyy-MM-dd" enable-time="false" is-open="abrirFin" />
                                        <span class="input-group-btn ">
                                            <button type="button" class="btn " ng-click="abrirFin = true" style="color: #19caaf"><i class="fa fa-calendar" style="color: white"></i></button>
                                        </span>
                                    </div>
                                </div>
                            </div> 


                            <button onclick="valor()" class="btn btn-sm btn-success">Guardar cambios <i class="fa fa-floppy-o"></i> </button>
                            <button class="btn btn-sm btn-success" style="background-color: darkred" >Cancelar <i class="fa fa-times"></i> </button>
                        </form>
                    </div>



                </div>
            </div>
        </div>
    </body>
</html>









