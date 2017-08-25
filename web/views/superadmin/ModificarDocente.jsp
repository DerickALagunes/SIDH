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

                        <form action="actualizarUsuario" method="post" onsubmit="return check()">

                            <legend>Datos Personales</legend>

                            <div class="form-group required col-sm-12">
                                <label class="col-sm-2 control-label" for="input-firstname">Nombre/s</label>
                                <div class="col-sm-10">
                                    <input type="hidden"  name="id" required name="id" id="id" value="<s:property value="usua.id"/>" />
                                    <input type="text"   placeholder="Nombres" required name="nombre" id="nombre" value="<s:property value="usua.nombre"/>"/>
                                </div>
                            </div>


                            <div class="form-group required col-sm-12">
                                <label class="col-sm-2 control-label" for="input-lastname">Apellido Paterno</label>
                                <div class="col-sm-10">
                                    <input type="text"     placeholder="Apellido paterno" required name="paterno" id="paterno" value="<s:property value="usua.apellidoPaterno"/>"/>
                                </div>
                            </div>

                            <div class="form-group required col-sm-12">
                                <label class="col-sm-2 control-label" for="input-lastname">Apellido Materno</label>
                                <div class="col-sm-10">
                                    <input type="text"    placeholder="Apellido materno" required name="materno" id="materno" value="<s:property value="usua.apellidoMaterno"/>"/>
                                </div>
                            </div>  

                            <div class="form-group required col-sm-12">
                                <label class="col-sm-2 control-label" for="ingresa-email">Correo</label>
                                <div class="col-sm-10">
                                    <input type="email"    placeholder="Correo electrónico" required name="correo" id="correo" value="<s:property value="usua.email"/>"/>
                                </div>
                            </div>

                            <div class="form-group required col-sm-12">
                                <label class="col-sm-2 control-label" for="ingresa-tel">Teléfono</label>
                                <div class="col-sm-10">
                                    <input type="text"    placeholder="Teléfono" required name="telefono" id="telefono" value="<s:property value="usua.telefono"/>"/>
                                </div>
                            </div>

                            <div class="form-group required col-sm-12">
                                <label class="col-sm-2 control-label" for="ingresa-contraseña">Contraseña</label>
                                <div class="col-sm-10">
                                    <input type="password"  placeholder="contraseña" required name="pass" id="pass" value="<s:property value="usua.contrasena"/>"/>
                                </div>
                            </div>


                            <center>
                                <input type="submit" value="Editar" class="btn btn-primary">
                            </center>


                        </form>
                    </div>
                </div>



            </div>
        </div>



        <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js" type="text/javascript"></script>
        <script>

            var nombre = /^[a-zA-Z ]+$/;
            var telefono = /^[0-9 \-\+]+$/;

            function check() {

                if (!nombre.test($('#nombre').val())) {
                    swal({
                        title: "Introduce un nombre valido",
                        text: "Solo letras",
                        type: "error",
                        confirmButtonColor: "#c92626",
                        confirmButtonText: "Aceptar",
                        closeOnConfirm: false,
                        html: true
                    });
                    return false;
                }
                if (!nombre.test($('#paterno').val())) {
                    swal({
                        title: "Introduce un apellido paterno valido",
                        text: "Solo letras",
                        type: "error",
                        confirmButtonColor: "#c92626",
                        confirmButtonText: "Aceptar",
                        closeOnConfirm: false,
                        html: true
                    });
                    return false;
                }
                if (!nombre.test($('#materno').val())) {
                    swal({
                        title: "Introduce un apellido materno valido",
                        text: "Solo letras",
                        type: "error",
                        confirmButtonColor: "#c92626",
                        confirmButtonText: "Aceptar",
                        closeOnConfirm: false,
                        html: true
                    });
                    return false;
                }
                if (!telefono.test($('#telefono').val())) {
                    swal({
                        title: "Introduce un telefono valido valido",
                        text: "Solo números",
                        type: "error",
                        confirmButtonColor: "#c92626",
                        confirmButtonText: "Aceptar",
                        closeOnConfirm: false,
                        html: true
                    });
                    return false;
                }

        </script>                            
    </body>
</html>

