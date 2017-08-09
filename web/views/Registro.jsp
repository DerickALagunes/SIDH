<%-- 
    Document   : Registro
    Created on : 31/07/2017, 10:23:58 AM
    Author     : derick
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
                background-image: url("../images/fondo.jpg");
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
                border: none;
                border-bottom: 2px solid white;
                background-color: rgba(0,0,0,.3);
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
            <div class="col-lg-6 col-xs-12 center-b text-center">
                <div class="panel panel-default bg-50">
                    <div class="panel-body">
                        <img class="img-responsive center-block" width="320" src="${pageContext.request.contextPath}/images/utez.png" alt="Logo" />
                        <h1 ata-caption-animate="fadeInUpSmall" class="fadeInUpSmall animated texto-blanco" style="margin-top: -0px;">
                            <strong>SIDH</strong><br />
                            <small class="texto-blanco">Registro</small>
                        </h1>

                            <form action="RegistrarUsuario" method="post" >
                                <div class="form-group form-group-lg">
                                    <div class="col-lg-6">
                                        <label class="pull-left">Nombre</label>
                                        <input type="text"     class="form-control bg-50-blanco" style="color: white;" placeholder="Nombre" required name="nombre" id="nombre"/>
                                        <label class="pull-left">Email</label>
                                        <input type="email"    class="form-control bg-50-blanco" style="color: white;" placeholder="Correo electrónico" required name="correo" id="correo"/>
                                    </div>
                                    <div class="col-lg-6">
                                        <label class="pull-left">Apellidos</label>
                                        <input type="text"     class="form-control bg-50-blanco" style="color: white;" placeholder="Apellidos" required name="paterno" id="paterno"/>                                        
                                        <label class="pull-left">Contraseña</label>
                                        <input type="password" class="form-control bg-50-blanco" style="color: white;" placeholder="Contraseña" required name="pass" id="password" />
                                    </div>       
                                </div>
                                
                                <input style="margin-top: 25px" type="submit" class="btn-primary btn-lg" value="Registrar" />
                                
                            </form>
                    </div>
                </div>
            </div>
        </div>

    <script>
            if ('<%= request.getParameter("error")%>' == 'true') {
                swal({
                    title: "El Correo electrónico ya esta registrado",
                    text: "Ponte en contacto con el administrador para recuperar tu cuenta",
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
