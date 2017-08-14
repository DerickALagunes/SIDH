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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/material-design.css" >
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/stylesheet.css" >
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css" >
        <script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/datepicker3.css" >
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
                        <h1>Gestión de Periodos</h1>   
                        <div class="box box-success">


                            <div class="box-header with-border">
                                <h3 class="box-title">Modificar Periodo</h3>
                            </div>

                            <form action="modificarPeriodo" method="post" id="registrarPeriodo" onsubmit="return check()">
                                <legend>Datos del Periodo</legend>

                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="periodo" class="required">Periodo</label>
                                        <div class="input-group">
                                            <select name="periodo" class="form-control" required style="width:405px;"> 
                                                <option value="">Seleccione...</option>
                                                <option value="1">Enero- Abril</option>
                                                <option value="2">Mayo- Agosto</option>
                                                <option value="3">Septiembre- Diciembre</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="form-group" id="inicio">
                                        <label for="inicio" class="required">Fecha de Inicio</label>
                                        <div class="input-group date">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input type='text' name="inicio" class="form-control" autocomplete="off" value="<s:property value="inicioString"/>"/>              
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="form-group" id="fin">
                                        <label for="fin" class="required">Fecha de Fin</label>
                                        <div class="input-group date">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input type='text' name="fin" class="form-control" autocomplete="off" value="<s:property value="finString"/>"/>              
                                        </div>
                                    </div>
                                </div>

                                <input hidden="" type="text" name="id" value="<s:property value="peri.id"/>" />
                                <center>
                                    <button type="submit" class="btn btn-lg btn-success">Registrar</button>
                                    <br/>
                                    <br/>
                                </center>

                            </form>
                        </div>



                    </div>
                </div>
            </div>
            <script>

                function check() {

                    var fecha = /^[0-9][0-9]\/[0-9][0-9]\/[0-9][0-9][0-9][0-9]$/;

                    if (!fecha.test($('#inicio').val())) {
                        swal({
                            title: "Introduce una fecha de inicio valida",
                            text: "Formato: xx/xx/xxxx",
                            type: "error",
                            confirmButtonColor: "#c92626",
                            confirmButtonText: "Aceptar",
                            closeOnConfirm: false,
                            html: true
                        });
                        return false;
                    }

                    if (!fecha.test($('#fin').val())) {
                        swal({
                            title: "Introduce una fecha de fin valida",
                            text: "Formato: xx/xx/xxxx",
                            type: "error",
                            confirmButtonColor: "#c92626",
                            confirmButtonText: "Aceptar",
                            closeOnConfirm: false,
                            html: true
                        });
                        return false;
                    }
                }

                function go() {
                    $('#registrarPeriodo').submit();
                }

                $(document).ready(function () {

                    $.fn.datepicker.dates['es'] = {
                        days: ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"],
                        daysShort: ["Dom", "Lun", "Mar", "Mie", "Jue", "Vie", "Sáb"],
                        daysMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sá"],
                        months: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
                        monthsShort: ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"],
                        today: "Hoy",
                        clear: "Limpiar",
                        format: "dd/mm/yyyy",
                        titleFormat: "MM yyyy", /* Leverages same syntax as 'format' */
                        weekStart: 1
                    };

                    $('#inicio .input-group.date').datepicker({
                        format: " dd/mm/yyyy",
                        ignoreReadonly: true,
                        todayBtn: "linked",
                        keyboardNavigation: false,
                        forceParse: false,
                        calendarWeeks: false,
                        autoclose: true,
                        language: 'es'
                    }).on('changeDate', function (selected) {
                        var minDate = new Date(selected.date.valueOf());
                        $('#fin .input-group.date').datepicker('setStartDate', minDate);
                    });


                    $('#fin .input-group.date').datepicker({
                        format: " dd/mm/yyyy",
                        ignoreReadonly: true,
                        todayBtn: "linked",
                        keyboardNavigation: false,
                        forceParse: false,
                        calendarWeeks: false,
                        autoclose: true,
                        language: 'es'
                    }).on('changeDate', function (selected) {
                        var minDate = new Date(selected.date.valueOf());
                        $('#inicio .input-group.date').datepicker('setEndDate', minDate);
                    });



                });

            </script>
    </body>
</html>









