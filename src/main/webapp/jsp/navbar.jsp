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

                <li class="active"><a href="home">Flowers</a></li>
                <li><a href="help">My Cart</a></li>

                <%--<li><a href="home">Home</a></li>--%>
                <%--<li><a href="sqlcmd">SQLcmd</a></li>--%>
                <%--<li class="active"><a href="help">Help</a></li>--%>

                <%--<li class="active"><a href="home">Home</a></li>--%>
                <%--<li><a href="sqlcmd">SQLcmd</a></li>--%>
                <%--<li><a href="help">Help</a></li>--%>

            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>