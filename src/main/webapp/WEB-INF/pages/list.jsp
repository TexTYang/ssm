<%@ page import="java.util.List" %>
<%@ page import="cn.itcast.domain.Account" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/6
  Time: 0:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

    <h3>查询所有的帐户</h3>
<script>
    let list = ${list};
</script>
    <div>
        <table border="1">

                <%
                    List<Account> lista = (List<Account>) request.getAttribute("list");

                    for (Account list : lista){
                        out.println("<tr>"+"<td>"+list.getId()+"</td>"+"<td>"+list.getName()+"</td>"+"<td>"+list.getMoney()+"</td>"+"</tr>");
                    }
                %>

        </table>
    </div>
    <c:forEach items="${list}" var="account">
        ${account.name}
    </c:forEach>

    <tr th:each="emp:${list}">
        <td th:text="${emp.id}"></td>
        <td th:text="${emp.name}"></td>
        <td th:text="${emp.money}"></td>
        <br/>
    </tr>
</body>
</html>
