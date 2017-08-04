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
        <jsp:include page="/layaout/validaSesion.jsp"/>

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
                                            <td  id="Lh7" val="0"></td>
                                            <td  id="Mh7" val="0"></td>
                                            <td  id="Xh7" val="0"></td>
                                            <td  id="Jh7" val="0"></td>
                                            <td  id="Vh7" val="0"></td>
                                            <td  id="Sh7" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td>08:00 - 09:00</td>
                                            <td  id="Lh8" val="0"></td>
                                            <td  id="Mh8" val="0"></td>
                                            <td  id="Xh8" val="0"></td>
                                            <td  id="Jh8" val="0"></td>
                                            <td  id="Vh8" val="0"></td>
                                            <td  id="Sh8" val="0"></td>

                                        </tr>
                                        <tr>
                                            <td>09:00 - 10:00</td>                                                                                                   
                                            <td  id="Lh9" val="0"></td>
                                            <td  id="Mh9" val="0"></td>
                                            <td  id="Xh9" val="0"></td>
                                            <td  id="Jh9" val="0"></td>
                                            <td  id="Vh9" val="0"></td>
                                            <td  id="Sh9" val="0"></td>

                                        </tr>
                                        <tr>
                                            <td>10:00 - 11:00</td>
                                            <td  id="Lh10" val="0"></td>
                                            <td  id="Mh10" val="0"></td>
                                            <td  id="Xh10" val="0"></td>
                                            <td  id="Jh10" val="0"></td>
                                            <td  id="Vh10" val="0"></td>
                                            <td  id="Sh10" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td >11:00 - 12:00</td>                                                                                                   
                                            <td  id="Lh11" val="0"></td>
                                            <td  id="Mh11" val="0"></td>
                                            <td  id="Xh11" val="0"></td>
                                            <td  id="Jh11" val="0"></td>
                                            <td  id="Vh11" val="0"></td>
                                            <td  id="Sh11" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td>12:00 - 13:00</td>
                                            <td  id="Lh12" val="0"></td>
                                            <td  id="Mh12" val="0"></td>
                                            <td  id="Xh12" val="0"></td>
                                            <td  id="Jh12" val="0"></td>
                                            <td  id="Vh12" val="0"></td>
                                            <td  id="Sh12" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td>13:00 - 14:00</td>
                                            <td  id="Lh13" val="0"></td>
                                            <td  id="Mh13" val="0"></td>
                                            <td  id="Xh13" val="0"></td>
                                            <td  id="Jh13" val="0"></td>
                                            <td  id="Vh13" val="0"></td>
                                            <td  id="Sh13" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td>14:00 - 15:00</td>
                                            <td  id="Lh14" val="0"></td>
                                            <td  id="Mh14" val="0"></td>
                                            <td  id="Xh14" val="0"></td>
                                            <td  id="Jh14" val="0"></td>
                                            <td  id="Vh14" val="0"></td>
                                            <td  id="Sh14" val="0"></td>
                                        </tr>

                                        <tr>
                                            <td>15:00 - 16:00</td>
                                            <td  id="Lh15" val="0"></td>
                                            <td  id="Mh15" val="0"></td>
                                            <td  id="Xh15" val="0"></td>
                                            <td  id="Jh15" val="0"></td>
                                            <td  id="Vh15" val="0"></td>
                                            <td  id="Sh15" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td>16:00 - 17:00</td>
                                            <td  id="Lh16" val="0"></td>
                                            <td  id="Mh16" val="0"></td>
                                            <td  id="Xh16" val="0"></td>
                                            <td  id="Jh16" val="0"></td>
                                            <td  id="Vh16" val="0"></td>
                                            <td  id="Sh16" val="0"></td>

                                        </tr>
                                        <tr>
                                            <td>17:00 - 18:00</td>                                                                                                   
                                            <td  id="Lh17" val="0"></td>
                                            <td  id="Mh17" val="0"></td>
                                            <td  id="Xh17" val="0"></td>
                                            <td  id="Jh17" val="0"></td>
                                            <td  id="Vh17" val="0"></td>
                                            <td  id="Sh17" val="0"></td>

                                        </tr>
                                        <tr>
                                            <td>18:00 - 19:00</td>
                                            <td  id="Lh18" val="0"></td>
                                            <td  id="Mh18" val="0"></td>
                                            <td  id="Xh18" val="0"></td>
                                            <td  id="Jh18" val="0"></td>
                                            <td  id="Vh18" val="0"></td>
                                            <td  id="Sh18" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td >19:00 - 20:00</td>                                                                                                   
                                            <td id="Lh19" val="0"></td>
                                            <td  id="Mh19" val="0"></td>
                                            <td  id="Xh19" val="0"></td>
                                            <td  id="Jh19" val="0"></td>
                                            <td  id="Vh19" val="0"></td>
                                            <td  id="Sh19" val="0"></td>
                                        </tr>
                                        <tr>
                                            <td>20:00 - 21:00</td>
                                            <td  id="Lh20" val="0"></td>
                                            <td  id="Mh20" val="0"></td>
                                            <td  id="Xh20" val="0"></td>
                                            <td  id="Jh20" val="0"></td>
                                            <td  id="Vh20" val="0"></td>
                                            <td  id="Sh20" val="0"></td>
                                        </tr>

                                    </tbody>
                                </table>

                            </div>

                            <div class="form-group">
                                <label for="notas">Notas:</label>
                                <textarea class="form-control" rows="5" id="notas" name="notas"></textarea>
                            </div>

                            <button type="button" id="btnResgistra" class="btn btn-primary">Registrar</button>
                            <input type="hidden" name="dis" id="dis" value="<s:property value="dis"/>"/>
                            <input type="hidden" name="user" id="user" value="${sessionScope.idUser}"/>


                        </form>

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


<script>

    $(document).ready(function () {
        $(this).find('td[val]').each(function () {
            if ($(this).attr('val')==0) {
                $(this).html("<img  align=center  src='${pageContext.request.contextPath}/images/no.png' />");
            }else{
                $(this).html("<img  align=center  src='${pageContext.request.contextPath}/images/ok.png' />")
            }
        });
        
        
        var dispo = $('#dis').val + '';
        var dias = dispo.split(',');
        console.log(dispo);
        
        
    });

</script>
</body>
</html>

