<%--
  Created by IntelliJ IDEA.
  User: vegardguttormsen
  Date: 2017/09/18
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    </head>
<body>
    <h1>Min handleliste</h1>
    <form action="" method="post">
        <input type="submit" value="Legg til" name="add">
        <input type="text" name="searchField"><br>
    </form>

    <c:forEach var="item" items="${cart.items}">
        <form action="remove?item=${fn:escapeXml(item.name)}" method="post">
            <input type="submit" value="Slett">
           ${fn:escapeXml(item.name)}
        </form>
    </c:forEach>
</body>
