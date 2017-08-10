<%-- 
    Document   : historial
    Created on : 10/08/2017, 02:40:00 AM
    Author     : USUARIO
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
                                            <button type="button">
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
                        <h1>Historial de Disponibilidades</h1>   
                        <div class="box box-success">

                            <div class="box-header with-border">
                                <h3 class="box-title">Tienes registrada tu disponibilidad en:</h3>
                            </div>

                            <div>
                                <s:if test="listaPeriodos.size()>0"> 
                                    <ul style="font-weight: bold">
                                            <s:iterator value="listaPeriodos"> 

                                                <li><h4><s:property value="periodo" /> <img  align=center  src='${pageContext.request.contextPath}/images/ok.png' /></h4></li>
                                                


                                            </s:iterator>    
                                        </ul>  
                                </s:if>
                                <s:else>
                                    <h2>No tienes nada registrado</h2>
                                </s:else>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <script>
            if ('<%= request.getParameter("error")%>' == 'true') {
                swal({
                    title: "Aun no hay registros",
                    text: "Registra tu Disponibilidad",
                    type: "error",
                    confirmButtonColor: "#c92626",
                    confirmButtonText: "Aceptar",
                    closeOnConfirm: false,
                    html: true
                });
            }
        </script>
    </body>
</html>
