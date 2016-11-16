<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="jsp/head_js.jsp" flush="true"/>
</head>
<body>
<jsp:include page="jsp/navbar.jsp" flush="true"/>
<jsp:include page="jsp/header.jsp" flush="true"/>

<c:choose>
    <c:when test="${flag eq 'login' || flag eq 'flowers'}">
        <jsp:include page="jsp/flowers/flowers.jsp" flush="true"/>
    </c:when>
    <c:when test="${flag eq 'my_cart'}">
        <jsp:include page="jsp/my_catr/my_cart.jsp" flush="true"/>
    </c:when>
    <c:otherwise>
        <jsp:include page="jsp/login/login.jsp" flush="true"/>
    </c:otherwise>
</c:choose>

<jsp:include page="jsp/footer_js.jsp" flush="true"/>
<jsp:include page="jsp/footer.jsp" flush="true"/>
</body>
</html>
