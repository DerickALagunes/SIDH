<%-- 
    Document   : newjsp
    Created on : 10/08/2017, 03:00:32 AM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>error 404</title>		
                <link href="${pageContext.request.contextPath}/css/style (2).css" rel="stylesheet" type="text/css"  media="all" />
	</head>
	<body>
		<!--start-wrap--->
		<div class="wrap">
			<!---start-header---->
				<div class="header">
					<div class="logo">
						<img src="${pageContext.request.contextPath}/images/utezAplicacionEncabezado.png"  height="100" title="error" />
					</div>
				</div>
			<!---End-header---->
			<!--start-content------>
			<div class="content">
				<img src="${pageContext.request.contextPath}/images/error-imagen404.png"  width="450" height="450" title="error" />
				<p>¡Lo sentimos! No se pudo encontrar la página que buscabas</p>
				<p>Cualquier duda o aclaración favor de dirigirse con el encargado de los Horarios escolares de DATIC</p>


				<div class="copy-right">
					<p>&#169 Disponibilidad Horarios | <a href="http://www.utez.edu.mx/">utez.edu.mx</a></p>
				</div>
   			</div>
			<!--End-Cotent------>
		</div>
		<!--End-wrap--->
	</body>
</html>

