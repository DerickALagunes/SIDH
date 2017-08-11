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
                        <div class="fluid_container">
                            <h1>Bienvenido Administrador</h1>
                            <hr>
                            <br />
                            <h3>Utilice el menú para:</h3>
                            <ul>
                                <li><h4>Gestionar los periodos</h4></li>
                                <li><h4>Gestionar los usuarios docentes</h4></li>
                                <li><h4>Descargar la información del sistema en un archivo XML compatible con aSc</h4></li>
                                <li><h4>Mandar un correo electrónico a los docentes que aun no registrado su disponibilidad</h4></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>

