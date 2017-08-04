<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%String context = request.getContextPath();%>
<s:if test="#session.login!='true' || #session.userType != 'Super'">
    <script>
        window.location.replace("<%=context%>/views/Login.jsp");
    </script>
</s:if>
