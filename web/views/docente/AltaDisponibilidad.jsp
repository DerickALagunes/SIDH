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
            <div class="toprow-1">
                <a class="swipe-control" href="#"><i class="fa fa-align-justify"></i></a>
            </div>

            <header class="header">
                <div class="container">
                    <div class="box-right">
                        <ul class="social-list">
                            <li>
                                <a href="//www.facebook.com/"><span class="fa fa-facebook"></span></a>
                            </li>
                            <li>
                                <a href="//www.twitter.com/"><span class="fa fa-twitter"></span></a>
                            </li>
                            <li>
                                <a href="//plus.google.com/+"><span class="fa fa-google-plus"></span></a>
                            </li>
                            <li>
                                <a href="//www.youtube.com/"><span class="fa fa-youtube"></span></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4 col-xs-6">
                            <div id="logo" class="logo">
                                <a href="#"><img src="${pageContext.request.contextPath}/images/utez.png" title="Electronics online store" alt="Electronics online store" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="col-sm-5 col-xs-6">
                            <div id="search" class="search">
                                <input type="text" name="search" value="" placeholder="Buscar">
                                <button type="button" class="button-search">Buscar</button>
                                <div class="clear"></div>
                            </div>
                        </div>

                        <!--    <div class="col-sm-3" style="font-size: 19px;line-height: 24px; margin-top:12px">
                        <a href="Login.html"><i class="fa fa-user"></i>
                        <span >Iniciar Sesión</span>
                      </a>
                    </div> POSIBLE LOGIN-->
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
                                            <a href="Index.html"><i class="fa fa-home"></i><span class="hidden-sm">Inicio</span></a>
                                        </li>
                                        <li>
                                            <a href="#" id="wishlist-total" title="Wish List (0)"><i class="fa fa-calendar"></i> <span class="hidden-sm">28/06/2017</span></a>
                                        </li>
                                    </ul>
                                    <div class="box-cart">
                                        <div id="cart" class="cart">
                                            <button type="button" data-toggle="dropdown" data-loading-text="Loading..." class="dropdown-toggle">
                                                <span class="fa fa-user"  href="Login.html"></span>
                                                <a class="cart-total3 hidden-xs"  href="<s:url value='/login.action'/>">${sessionScope.userName}</a>
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
                        <div id="menu-icon">Menú</div>
                        <ul class="menu">
                            <li>
                                <a href="<s:url value='/usuario/altausuario.action'/>">Alta Docentes</a>
                                <i class="fa fa-user-secret "></i>
                            </li>
                            <li>
                                <a  href="<s:url value='/usuario/consultarUsuarios.action'/>">Consulta Docentes</a>
                                <i class="fa fa-users"></i>
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

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div id="content" class="col-sm-9">

                        <form name="registrarDisponibilidad" id="registrarDisponibilidad" class="form-horizontal" action="registrarDisponibilidad" method="POST" role="form">

                            <div class="box-body table-responsive">
                                <ul class="breadcrumb">
                                    <li><a href="#"><i class="fa fa-calendar"></i></a></li>
                                    <li><a href="#">Seleccionar Disponibilidad</a></li>
                                </ul>
                                <p>Selecciona las horas y los días disponibles.</p>
                                <table class=" table-bordered table-hover" style="width: 100%;" id="dispos">                             
                                    <thead class="fondo-verde texto-blanco">
                                        <tr class="selectors">
                                            <th style="width: 90px">Horas/Días</th>
                                            <th style="width: 90px">Lunes</th>
                                            <th style="width: 90px">Martes</th>
                                            <th style="width: 90px">Miércoles</th>
                                            <th style="width: 90px">Jueves</th>
                                            <th style="width: 90px">Viernes</th>
                                            <th style="width: 90px">Sábado</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr>
                                            <td>07:00 - 08:00</td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh7" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh7" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh7" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh7" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh7" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh7" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td>08:00 - 09:00</td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh8" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh8" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh8" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh8" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh8" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh8" val="0"></td>

                                        </tr>
                                        <tr>
                                            <td>09:00 - 10:00</td>                                                                                                   
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh9" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh9" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh9" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh9" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh9" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh9" val="0"></td>

                                        </tr>
                                        <tr>
                                            <td>10:00 - 11:00</td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh10" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh10" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh10" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh10" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh10" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh10" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td >11:00 - 12:00</td>                                                                                                   
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh11" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh11" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh11" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh11" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh11" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh11" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td>12:00 - 13:00</td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh12" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh12" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh12" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh12" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh12" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh12" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td>13:00 - 14:00</td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh13" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh13" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh13" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh13" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh13" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh13" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td>14:00 - 15:00</td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh14" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh14" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh14" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh14" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh14" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh14" val="0"></td>
                                        </tr>

                                        <tr>
                                            <td>15:00 - 16:00</td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh15" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh15" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh15" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh15" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh15" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh15" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td>16:00 - 17:00</td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh16" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh16" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh16" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh16" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh16" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh16" val="0"></td>

                                        </tr>
                                        <tr>
                                            <td>17:00 - 18:00</td>                                                                                                   
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh17" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh17" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh17" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh17" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh17" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh17" val="0"></td>

                                        </tr>
                                        <tr>
                                            <td>18:00 - 19:00</td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh18" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh18" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh18" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh18" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh18" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh18" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td >19:00 - 20:00</td>                                                                                                   
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh19" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh19" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh19" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh19" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh19" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh19" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td>20:00 - 21:00</td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Lh20" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Mh20" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Xh20" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Jh20" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Vh20" val="0"></td>
                                            <td onclick="myFunction(id, this.getAttribute('val'))" id="Sh20" val="0"></td>
                                        </tr>

                                    </tbody>
                                </table>
                                
                            </div>

                            <div class="form-group">
                                <label for="notas">Notas:</label>
                                <textarea class="form-control" rows="5" id="notas" name="notas"></textarea>
                            </div>

                            <button type="button" id="btnResgistra" class="btn btn-primary" onclick="crearArreglo()">Registrar</button>
                            <input type="hidden" name="dispo" id="dispo"/>
                            <input type="hidden" name="user" id="user" value="${sessionScope.idUser}"/>
                            

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

        if (valor == '0') {
            document.getElementById(id).innerHTML = "<img  align=center  src='${pageContext.request.contextPath}/images/ok.png' />";
            document.getElementById(id).setAttribute("val", "1");
        } else if (valor == '1') {
            document.getElementById(id).innerHTML = "<img  align=center  src='${pageContext.request.contextPath}/images/no.png' />";
            document.getElementById(id).setAttribute("val", "0");
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
        $("#dispo").val(todo);
        $('#registrarDisponibilidad').submit();
    }

</script>
</body>
</html>

