<%-- 
    Document   : AltaDisponibilidad
    Created on : 30-jul-2017, 18:04:08
    Author     : ricar, Derick
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


    </head>
    <body class="common-home">
        <!-- swipe menu -->
        <jsp:include page="/layaout/validaSesionDocente.jsp"/>

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
                                            <a href="<s:url value='/docente/capturaDisponibilidad.action'/>">Disponibilidad</a>
                                            <i class="fa fa-calendar"></i>
                                        </li>
                                        <li>
                                            <a  href="<s:url value='/docente/consultarHistorial.action'/>">Historial</a>
                                            <i class="fa fa-history"></i>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div id="content" class="col-sm-9">
                        <h3>Ya has registrado tu disponibilidad. <img src="${pageContext.request.contextPath}/images/ok.png" alt=""/></h3>

                        <hr/>
                        <h4>Si deseas cambiarla, contacta con el encargado de los horarios de DATIC.</h4>

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<script>
    if ('<%= request.getParameter("error")%>' == 'true') {
        swal({
            title: "Disponibilidad ya registrada",
            text: "Si necesita cambiarla, favor de contactar al encargado de los horarios escolares de DATIC",
            type: "error",
            confirmButtonColor: "#c92626",
            confirmButtonText: "Aceptar",
            closeOnConfirm: false,
            html: true
        });
    }
    if ('<%= request.getParameter("error")%>' == 'false') {
        swal({
            title: "Disponibilidad registrada",
            text: "Gracias por registrar tu disponibilidad",
            type: "success",
            confirmButtonText: "Aceptar",
            closeOnConfirm: false,
            html: true
        });
    }
</script>
</body>
</html>

