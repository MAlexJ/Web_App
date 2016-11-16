<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--NavBar--%>
<div class="navbar navbar-inverse navbar-fixed-top headroom">
    <div class="container">
        <div class="navbar-header">
            <!-- Button for smallest screens -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="home"><img src="${pageContext.request.contextPath}/resources/images/logo.png"></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav pull-right" id="text_header">

                <c:choose>
                    <c:when test="${flag eq 'login' || flag eq 'flowers'}">
                        <li class="active"><a href="flowers">Flowers</a></li>
                        <li><a href="my_cart">My Cart</a></li>
                        <li><a class="btn-block" href="login">Logout</a></li>
                    </c:when>
                    <c:when test="${flag eq 'my_cart'}">
                        <li><a href="flowers">Flowers</a></li>
                        <li class="active"><a href="my_cart">My Cart</a></li>
                        <li><a class="btn-block" href="login">Logout</a></li>
                    </c:when>
                </c:choose>

            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>