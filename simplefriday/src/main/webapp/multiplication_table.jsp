<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 28/10/2566
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MultiplicationTable</title>
    <style>
        td {
            border-spacing: 5px;
            padding: 1px;
            height: 16px;
            text-align: center;
        }
        table {
            border: 1px solid salmon;
        }
        .number {
            text-align: center;


        }

    </style>
</head>
<body>
    <h3>Multiplication Table::</h3><hr>
    <c:if test="${error == null}">
    <table style="width: 30%">
        <tr>
            <td colspan="5" style="background-color: darksalmon">MT for${param.number}</td>
        </tr>
    <c:forEach begin="1" end="12" var="n">
        <tr>
            <td class="number"> ${param.number} </td>
            <td> x </td>
            <td class="number"> ${n} </td>
            <td> = </td>
            <td class="number"> ${n * param.number} </td>
        </tr>

    </c:forEach>
    </table>
    </c:if>
    <c:if test="${error != null}">
<h3 style="color: crimson">
    Error: ${requestScope.error} (${parem.number != null || parem.number == '' ? "Null/Empty" :param.number })
</h3>
        <br>
        Your browser: ${header['User-Agent']}
    </c:if>

</body>
</html>
