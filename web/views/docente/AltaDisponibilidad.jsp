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

        <style>
            td {
                height: 50px;
                vertical-align: middle;
                text-align: center;
            }
            .selectors th {
                text-align: center;
            }
        </style>

    </head>
    <body class="common-home">
        <!-- swipe menu -->
        <jsp:include page="/layaout/validaSesionDocente.jsp"/>

        <div id="page">
            <div class="shadow"></div>

            <header class="header">
                <div class="container">
                    <br />
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

        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div id="menu-gadget" class="menu-gadget">
                        <div id="menu-icon">Menú</div>
                        <<ul class="menu">
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
                                            <a  href="<s:url value='/usuario/consultarHistorial.action'/>">Historial</a>
                                            <i class="fa fa-history"></i>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div id="content" class="col-sm-9">

                        <form name="registrarDisponibilidad" id="registrarDisponibilidad" class="form-horizontal" action="registrarDisponibilidad" method="POST" role="form">

                            <div class="box-body table-responsive">
                                <br />                                

                                <h4>Por favor lea las indicaciones:</h4>
                                <p style="font-size: medium">Marque con una “<img  align=center  src='${pageContext.request.contextPath}/images/ok.png' />” las horas disponibles o
                                    con una  “<img  align=center  src='${pageContext.request.contextPath}/images/no.png' />” las horas que sería
                                    preferible no utilizar.
                                </p>
                                <br />
                                <br />
                                <p>De 7:00 a 16:00 horas <b>TSU</b></p>
                                <p>De 15:00 a 21:00 horas <b>Ingeniería</b></p>

                                <table class=" table-bordered table-hover" style="width: 100%;border-collapse: collapse" id="dispos">                             
                                    <thead class="fondo-verde texto-blanco">
                                        <tr class="selectors" style="border:1.5pt solid black">
                                            <th style="width: 90px;border-bottom: 1.5pt solid black">Horas/Días</th>
                                            <th style="width: 90px;border-bottom: 1.5pt solid black">Lunes</th>
                                            <th style="width: 90px;border-bottom: 1.5pt solid black">Martes</th>
                                            <th style="width: 90px;border-bottom: 1.5pt solid black">Miércoles</th>
                                            <th style="width: 90px;border-bottom: 1.5pt solid black">Jueves</th>
                                            <th style="width: 90px;border-bottom: 1.5pt solid black">Viernes</th>
                                            <th style="width: 90px;border-bottom: 1.5pt solid black">Sábado</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;border-top: 1.5pt solid black">
                                            <td><b>07:00 - 08:00</b></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh7" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh7" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh7" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh7" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh7" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-right: 1.5pt solid black;" id="Sh7" val="0"></td>
                                        </tr>
                                        <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                            <td><b>08:00 - 09:00</b></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh8" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh8" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh8" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh8" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh8" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-top: 1.5pt solid black;border-left: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Sh8" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>

                                        </tr>
                                        <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                            <td><b>09:00 - 10:00</b></td>                                                                                                   
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh9" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh9" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh9" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh9" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh9" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-left: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Sh9" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>

                                        </tr>
                                        <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                            <td><b>10:00 - 11:00</b></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh10" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh10" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh10" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh10" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh10" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-left: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Sh10" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                        </tr>
                                        <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                            <td ><b>11:00 - 12:00</b></td>                                                                                                   
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh11" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh11" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh11" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh11" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh11" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-left: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Sh11" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                        </tr>
                                        <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                            <td><b>12:00 - 13:00</b></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh12" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh12" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh12" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh12" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh12" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-left: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Sh12" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                        </tr>
                                        <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                            <td><b>13:00 - 14:00</b></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh13" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh13" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh13" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh13" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh13" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-left: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Sh13" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                        </tr>
                                        <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                            <td><b>14:00 - 15:00</b></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh14" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh14" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh14" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh14" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh14" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-left: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Sh14" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                        </tr>

                                        <tr  style="border-bottom: 1.5pt solid black">
                                            <td style="border-left: 1.5pt solid black;border-top: 1.5pt solid black"><b>15:00 - 16:00</b></td>
                                            <td style="border-top: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Lh15" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-top: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Mh15" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-top: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Xh15" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-top: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Jh15" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-top: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Vh15" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-bottom: 1.5pt solid black;border-left: 1.5pt solid black;border-right: 1.5pt solid black" onclick="myFunction(id, this.getAttribute('val'))" id="Sh15" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                        </tr>
                                        <tr  style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                            <td><b>16:00 - 17:00</b></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh16" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh16" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh16" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh16" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-right: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Vh16" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td hidden="" id="Sh16" val="0"></td>

                                        </tr>
                                        <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                            <td><b>17:00 - 18:00</b></td>                                                                                                   
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh17" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh17" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh17" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh17" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-right: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Vh17" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td hidden="" id="Sh17" val="0"></td>

                                        </tr>
                                        <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                            <td><b>18:00 - 19:00</b></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh18" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh18" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh18" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh18" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-right: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Vh18" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td hidden="" id="Sh18" val="0"></td>
                                        </tr>
                                        <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                            <td ><b>19:00 - 20:00</b></td>                                                                                                   
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh19" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh19" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh19" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh19" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-right: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Vh19" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td hidden="" id="Sh19" val="0"></td>
                                        </tr>
                                        <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;border-bottom: 1.5pt solid black">
                                            <td><b>20:00 - 21:00</b></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh20" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh20" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh20" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh20" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td style="border-right: 1.5pt solid black;" onclick="myFunction(id, this.getAttribute('val'))" id="Vh20" val="0"><img  align=center  src='${pageContext.request.contextPath}/images/no.png' /></td>
                                            <td hidden="" id="Sh20" val="0"></td>
                                        </tr>

                                    </tbody>
                                </table>

                            </div>

                            <div class="" style="margin-top: 25px;">
                                <label for="notas">Observaciones:</label>
                                <textarea class="form-control" rows="5" id="notas" name="notas"></textarea>
                            </div>

                            <center>
                                <button style="margin-top: 25px;text-align: center" type="button" id="btnResgistra" class="btn btn-primary" onclick="crearArreglo()">Registrar</button>
                            </center>
                            <input type="hidden" name="dispo" id="dispo"/>
                            <input type="hidden" name="user" id="user" value="${sessionScope.idUser}"/>
                            <br/>

                            <p><b>Nota.</b> La disponibilidad marcada o número de materias indicadas no significa 
                                la carga horaria o contratación dentro del cuatrimestre señalado.  Cualquier modificación 
                                en su disponibilidad deberá ser comunicada por escrito a la DATIC a la brevedad posible.
                            </p>
                        </form>

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


<script>
    var arreglo = [];
    function myFunction(id, valor) {


        if (valor == '1') {
            document.getElementById(id).innerHTML = "<img  align=center  src='${pageContext.request.contextPath}/images/no.png' />";
            document.getElementById(id).setAttribute("val", "0");
        } else if (valor == '0') {
            document.getElementById(id).innerHTML = "<img  align=center  src='${pageContext.request.contextPath}/images/ok.png' />";
            document.getElementById(id).setAttribute("val", "1");
        }

    }

    function crearArreglo() {

        var Lunes = "";
        var Martes = "";
        var Miercoles = "";
        var Jueves = "";
        var Viernes = "";
        var Sabado = "";

        var dia = 1;

        $('#dispos tr').each(function () {
            $(this).find('td[val]').each(function () {

                switch (dia) {
                    case 1:
                        Lunes += $(this).attr("val");
                        break;
                    case 2:
                        Martes += $(this).attr("val");
                        break;
                    case 3:
                        Miercoles += $(this).attr("val");
                        break;
                    case 4:
                        Jueves += $(this).attr("val");
                        break;
                    case 5:
                        Viernes += $(this).attr("val");
                        break;
                    case 6:
                        Sabado += $(this).attr("val");
                        break;
                }

                dia++;
                if (dia > 6)
                    dia = 1;
            });
        });


        var todo = Lunes + "," + Martes + "," + Miercoles + "," + Jueves + "," + Viernes + "," + Sabado;
        if (todo == '00000000000000,00000000000000,00000000000000,00000000000000,00000000000000,00000000000000') {
            swal({
                    title: "Error",
                    text: "Todas sus horas estan marcadas como NO disponibles",
                    type: "error",
                    confirmButtonColor: "#c92626",
                    confirmButtonText: "Aceptar",
                    closeOnConfirm: false,
                    html: true
                });
        }else{
            $("#dispo").val(todo);
            $('#registrarDisponibilidad').submit();
        }
        
    }

</script>
        <script>
            if ('<%= request.getParameter("error")%>' == 'true') {
                swal({
                    title: "Error",
                    text: "No se pudo registrar la Disponibilidad",
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

