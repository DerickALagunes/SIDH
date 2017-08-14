<%-- 
    Document   : Login
    Created on : 25-jul-2017, 3:26:14
    Author     : ricar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
    <head>
        <title>SIDH</title>
        <meta charset="UTF-8">

        <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/ut.png" type="image/x-icon" />
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href=".${pageContext.request.contextPath}/css/flatly.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/css/app.css" rel="stylesheet" type="text/css" />
        <script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css">

        <style>
            .center-c {
                width: 100%;
                min-height: 100vh;
                position: relative;
                background-image: url("${pageContext.request.contextPath}/images/fondoEfectivo3.png");
                background-position: center center, center center;
                background-size: auto, cover;
                background-repeat: repeat, no-repeat;
            }


            .center-b {
                position: absolute !important;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                -webkit-transform: translate(-50%,-50%);
            }

            .bg-50 {
                border: none;
                background-color: transparent;
            }

            .bg-50-blanco {
                border: black;
                border-bottom: 2px solid #03325e;
                background-color: white;
            }

            .bg-50-blanco:focus {
                background-color: rgba(0,0,0,.3);
            }

            .texto-blanco {
                color: #009376;
            }
        </style>
    </head>
    <body>

        <div class="center-c">
            <div class="col-lg-3 col-xs-12 center-b text-center">
                <div class="panel panel-default bg-50">
                    <div class="panel-body">
                        <img class="img-responsive center-block" width="320" src="${pageContext.request.contextPath}/images/utez.png" alt="Logo" />
                        <h1 ata-caption-animate="fadeInUpSmall" class="fadeInUpSmall animated texto-blanco" style="margin-top: -0px;">
                            <strong>SIDH</strong><br />
                            <small class="texto-blanco">Inicio de ses&#237;on</small>
                        </h1>

                        <form action="loginUsuario" method="post" >
                            <div class="form-group form-group-lg">
                                <div class="col-lg-10 col-lg-offset-1">
                                    <input type="email"    class="form-control bg-50-blanco" style="color: #03325e;" placeholder="Correo"     required name="correo" id="correo"/>
                                    <input type="password" class="form-control bg-50-blanco" style="color: #03325e;" placeholder="Contraseña" required name="pass" id="password" />
                                </div>
                            </div>
                            
                            <input style="margin-top: 17px;" type="submit" class="btn-primary btn-lg" value="Iniciar Sesion" />
                        </form>

                        <br />                        
                        <a class="btn-primary btn-sm" href="/SIDH/views/Registro.jsp">Registrarse</a>

                    </div>
                </div>
            </div>
        </div>

        <script>
            if ('<%= request.getParameter("error")%>' == 'true') {
                swal({
                    title: "",
                    text: "El usuario y la contraseña no coinciden",
                    type: "error",
                    confirmButtonColor: "#c92626",
                    confirmButtonText: "Aceptar",
                    closeOnConfirm: false,
                    html: true
                });
            }
            if ('<%= request.getParameter("error")%>' == 'false') {
                swal({
                    title: "Usuario registrado",
                    text: "Ya puedes iniciar sesión",
                    type: "success",
                    confirmButtonText: "Aceptar",
                    closeOnConfirm: false,
                    html: true
                });
            }
        </script>


    </body>
</html>