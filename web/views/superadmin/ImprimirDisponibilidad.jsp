<%-- 
    Document   : ImprimirDisponibilidad
    Created on : 3/08/2017, 11:12:01 AM
    Author     : derick
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/layaout/imports.jsp"/>

        <style>
            td {
                height: 50px;
                vertical-align: middle;
                text-align: center;
            }
            .selectors th {
                text-align: center;
            }
            @media print {
                body * {
                    visibility: hidden;
                }
                .print, .print * {
                    visibility: visible;
                }
                .bot{
                    visibility: hidden;
                }
                .print {
                    position: absolute;
                    left: 0;
                    top: 0;
                }
                .ajuste{
                    width: 50%;
                    vertical-align:middle;
                    text-align: center;
                }
            }
        </style>

    </head>
    <body class="common-home">
        <!-- swipe menu -->
        <jsp:include page="/layaout/validaSesion.jsp"/>

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


                    <div id="content" class="col-sm-9 print">

                        <form name="registrarDisponibilidad" id="registrarDisponibilidad" class="form-horizontal" action="registrarDisponibilidad" method="POST" role="form">
                            <br />                                

                            <div class="col-xs-4">
                                <img  align=center  src='${pageContext.request.contextPath}/images/DATIC.png' />
                            </div>
                            <div class="col-xs-4">

                            </div>
                            <div class="col-xs-4">
                                <img  align="right" width="50%" src='${pageContext.request.contextPath}/images/logo.png' />
                            </div>

                            <div class="col-xs-12 ajuste">
                                <img  align="middle" src='${pageContext.request.contextPath}/images/tabla.png' />
                            </div>

                            <div class="col-xs-12">
                                <h4 style="margin-top: 25px;"><u>Por favor lea las indicaciones:</u></h4>
                                <p style="font-size: medium">Marque con una “<img  align=center  src='${pageContext.request.contextPath}/images/ok.png' />” las horas disponibles o
                                    con una  “<img  align=center  src='${pageContext.request.contextPath}/images/no.png' />” las horas no esta disponible.
                                </p>
                                <br />
                                <br />
                                <p>De 7:00 a 16:00 horas <b>TSU</b></p>
                                <p>De 15:00 a 21:00 horas <b>Ingeniería</b></p>
                                <div class="box-body table-responsive">
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
                                                <td class="lunes" id="Lh7" val="1"></td>
                                                <td class="martes" id="Mh7" val="1"></td>
                                                <td class="miercoles" id="Xh7" val="1"></td>
                                                <td class="jueves" id="Jh7" val="1"></td>
                                                <td class="viernes" id="Vh7" val="1"></td>
                                                <td class="sabado" style="border-right: 1.5pt solid black;" id="Sh7" val="0"></td>
                                            </tr>
                                            <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                                <td><b>08:00 - 09:00</b></td>
                                                <td class="lunes" id="Lh8" val="1"></td>
                                                <td class="martes" id="Mh8" val="1"></td>
                                                <td class="miercoles" id="Xh8" val="1"></td>
                                                <td class="jueves" id="Jh8" val="1"></td>
                                                <td class="viernes" id="Vh8" val="1"></td>
                                                <td style="border-top: 1.5pt solid black;border-left: 1.5pt solid black;" class="sabado" id="Sh8" val="1"></td>

                                            </tr>
                                            <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                                <td><b>09:00 - 10:00</b></td>                                                                                                   
                                                <td class="lunes" id="Lh9" val="1"></td>
                                                <td class="martes" id="Mh9" val="1"></td>
                                                <td class="miercoles" id="Xh9" val="1"></td>
                                                <td class="jueves" id="Jh9" val="1"></td>
                                                <td class="viernes" id="Vh9" val="1"></td>
                                                <td style="border-left: 1.5pt solid black;" class="sabado" id="Sh9" val="1"></td>

                                            </tr>
                                            <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                                <td><b>10:00 - 11:00</b></td>
                                                <td class="lunes" id="Lh10" val="1"></td>
                                                <td class="martes" id="Mh10" val="1"></td>
                                                <td class="miercoles" id="Xh10" val="1"></td>
                                                <td class="jueves" id="Jh10" val="1"></td>
                                                <td class="viernes" id="Vh10" val="1"></td>
                                                <td style="border-left: 1.5pt solid black;" class="sabado" id="Sh10" val="1"></td>
                                            </tr>
                                            <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                                <td ><b>11:00 - 12:00</b></td>                                                                                                   
                                                <td class="lunes" id="Lh11" val="1"></td>
                                                <td class="martes" id="Mh11" val="1"></td>
                                                <td class="miercoles" id="Xh11" val="1"></td>
                                                <td class="jueves" id="Jh11" val="1"></td>
                                                <td class="viernes" id="Vh11" val="1"></td>
                                                <td style="border-left: 1.5pt solid black;" class="sabado" id="Sh11" val="1"></td>
                                            </tr>
                                            <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                                <td><b>12:00 - 13:00</b></td>
                                                <td class="lunes" id="Lh12" val="1"></td>
                                                <td class="martes" id="Mh12" val="1"></td>
                                                <td class="miercoles" id="Xh12" val="1"></td>
                                                <td class="jueves" id="Jh12" val="1"></td>
                                                <td class="viernes" id="Vh12" val="1"></td>
                                                <td style="border-left: 1.5pt solid black;" class="sabado" id="Sh12" val="1"></td>
                                            </tr>
                                            <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                                <td><b>13:00 - 14:00</b></td>
                                                <td class="lunes" id="Lh13" val="1"></td>
                                                <td class="martes" id="Mh13" val="1"></td>
                                                <td class="miercoles" id="Xh13" val="1"></td>
                                                <td class="jueves" id="Jh13" val="1"></td>
                                                <td class="viernes" id="Vh13" val="1"></td>
                                                <td style="border-left: 1.5pt solid black;" class="sabado" id="Sh13" val="1"></td>
                                            </tr>
                                            <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                                <td><b>14:00 - 15:00</b></td>
                                                <td class="lunes" id="Lh14" val="1"></td>
                                                <td class="martes" id="Mh14" val="1"></td>
                                                <td class="miercoles" id="Xh14" val="1"></td>
                                                <td class="jueves" id="Jh14" val="1"></td>
                                                <td class="viernes" id="Vh14" val="1"></td>
                                                <td style="border-left: 1.5pt solid black;" class="sabado" id="Sh14" val="1"></td>
                                            </tr>

                                            <tr  style="border-bottom: 1.5pt solid black">
                                                <td style="border-left: 1.5pt solid black;border-top: 1.5pt solid black"><b>15:00 - 16:00</b></td>
                                                <td style="border-top: 1.5pt solid black;" class="lunes" id="Lh15" val="1"></td>
                                                <td style="border-top: 1.5pt solid black;" class="martes" id="Mh15" val="1"></td>
                                                <td style="border-top: 1.5pt solid black;" class="miercoles" id="Xh15" val="1"></td>
                                                <td style="border-top: 1.5pt solid black;" class="jueves" id="Jh15" val="1"></td>
                                                <td style="border-top: 1.5pt solid black;" class="viernes" id="Vh15" val="1"></td>
                                                <td style="border-bottom: 1.5pt solid black;border-left: 1.5pt solid black;border-right: 1.5pt solid black" class="sabado" id="Sh15" val="1"></td>
                                            </tr>
                                            <tr  style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                                <td><b>16:00 - 17:00</b></td>
                                                <td class="lunes" id="Lh16" val="1"></td>
                                                <td class="martes" id="Mh16" val="1"></td>
                                                <td class="miercoles" id="Xh16" val="1"></td>
                                                <td class="jueves" id="Jh16" val="1"></td>
                                                <td style="border-right: 1.5pt solid black;" class="viernes" id="Vh16" val="1"></td>
                                                <td class="sabado" hidden="" id="Sh16" val="0"></td>

                                            </tr>
                                            <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                                <td><b>17:00 - 18:00</b></td>                                                                                                   
                                                <td class="lunes" id="Lh17" val="1"></td>
                                                <td class="martes" id="Mh17" val="1"></td>
                                                <td class="miercoles" id="Xh17" val="1"></td>
                                                <td class="jueves" id="Jh17" val="1"></td>
                                                <td style="border-right: 1.5pt solid black;" class="viernes" id="Vh17" val="1"></td>
                                                <td class="sabado" hidden="" id="Sh17" val="0"></td>

                                            </tr>
                                            <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                                <td><b>18:00 - 19:00</b></td>
                                                <td class="lunes" id="Lh18" val="1"></td>
                                                <td class="martes" id="Mh18" val="1"></td>
                                                <td class="miercoles" id="Xh18" val="1"></td>
                                                <td class="jueves" id="Jh18" val="1"></td>
                                                <td style="border-right: 1.5pt solid black;" class="viernes" id="Vh18" val="1"></td>
                                                <td class="sabado" hidden="" id="Sh18" val="0"></td>
                                            </tr>
                                            <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;">
                                                <td ><b>19:00 - 20:00</b></td>                                                                                                   
                                                <td class="lunes" id="Lh19" val="1"></td>
                                                <td class="martes" id="Mh19" val="1"></td>
                                                <td class="miercoles" id="Xh19" val="1"></td>
                                                <td class="jueves" id="Jh19" val="1"></td>
                                                <td style="border-right: 1.5pt solid black;" class="viernes" id="Vh19" val="1"></td>
                                                <td class="sabado" hidden="" id="Sh19" val="0"></td>
                                            </tr>
                                            <tr style="border-left: 1.5pt solid black;border-right: 1.5pt solid black;border-bottom: 1.5pt solid black">
                                                <td><b>20:00 - 21:00</b></td>
                                                <td class="lunes" id="Lh20" val="1"></td>
                                                <td class="martes" id="Mh20" val="1"></td>
                                                <td class="miercoles" id="Xh20" val="1"></td>
                                                <td class="jueves" id="Jh20" val="1"></td>
                                                <td style="border-right: 1.5pt solid black;" class="viernes" id="Vh20" val="1"></td>
                                                <td class="sabado" hidden="" id="Sh20" val="0"></td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>

                                <label for="notas">Observaciones:</label>
                                <textarea class="form-control" rows="5" id="notas" name="notas"></textarea>
                                <br/>
                                <p><b>Nota.</b> La disponibilidad marcada o número de materias indicadas no significa 
                                    la carga horaria o contratación dentro del cuatrimestre señalado.  Cualquier modificación 
                                    en su disponibilidad deberá ser comunicada por escrito a la DATIC a la brevedad posible.
                                </p>


                                <center>
                                    <button style="margin-top: 25px;text-align: center" type="button" id="btnResgistra" class="btn btn-primary bot" onClick="window.print()">Imprimir</button>
                                </center>
                                <input type="hidden" id="arreglo" value="<s:property value="dis" />"/>
                                <input type="hidden" id="notes" value="<s:property value="notas" />"/>
                                <input type="hidden" name="user" id="user" value="${sessionScope.idUser}"/>
                                <br/>

                        </form>

                    </div>

                </div>
            </div>
        </div>

    </div>
</div>
</div>


<script>
    $(document).ready(function () {

        var dias = $("#arreglo").val().split(",");

        var semana = {
            'lunes': dias[0].split(""),
            'martes': dias[1].split(""),
            'miercoles': dias[2].split(""),
            'jueves': dias[3].split(""),
            'viernes': dias[4].split(""),
            'sabado': dias[5].split("")
        };

        $.each(semana, function (dia, hora) {
            $(document).find('.' + dia).each(function (index) {
                if (hora[index] == '1') {
                    $(this).html("<img  align=center  src='${pageContext.request.contextPath}/images/ok.png' />");
                } else if (hora[index] == '0') {
                    $(this).html("<img  align=center  src='${pageContext.request.contextPath}/images/no.png' />");
                } else {
                    $(this).html("");
                }
            });
        });

        $('#notas').val($('#notes').val());

    });

</script>
</body>
</html>

