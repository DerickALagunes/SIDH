<%-- 
    Document   : InicioSuperAdmin
    Created on : 26-jul-2017, 0:44:51
    Author     : ricar, Derick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/layaout/imports.jsp"/>
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
                            <li>
                                <a href="/xml.action">Exportar info </a>
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
                                        <li>
                                            <a href="<s:url value='/usuario/xml.action'/>">Exportar info </a>
                                            <i class="fa fa-table"></i>
                                        </li>
                                        <li>
                                            <a href="<s:url value='/usuario/notificar.action'/>">Recordatorio </a>
                                            <i class="fa fa-table"></i>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>





                    <div id="content" class="col-sm-9">
                        <div class="fluid_container">
                            <div class="camera_container">
                                <div id="camera_wrap_0" class="camera_wrap" style="display: block; height: 345px;">
                                    <div class="camera_fakehover">
                                        <div class="camera_target">
                                            <div class="cameraCont">
                                                <div class="cameraSlide cameraSlide_0 cameracurrent" style="visibility: visible; display: block; z-index: 999;">
                                                    <img src="${pageContext.request.contextPath}/images/jeff.jpg" class="imgLoaded" data-alignment="" data-portrait="" width="870" height="345" style="visibility: visible; height: 345px; margin-left: 0px; margin-top: 0px; position: absolute; width: 870px;">
                                                    <div class="camerarelative" style="width: 870px; height: 345px;"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>

