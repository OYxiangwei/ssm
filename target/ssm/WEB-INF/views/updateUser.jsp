<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-10-15
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>更新用户</title>
</head>
<body>
    <form name="updateForm" action="update" method="post">
        <table border="1">
            <tr>
                <th>id</th>
                <th>姓名</th>
                <th>密码</th>
                <th>性别</th>
                <th>年龄</th>
            </tr>
            <c:if test="${!empty userList}">
                <c:forEach items="${userList}" var="user">
                    <c:if test="${user_id eq user.id}">
                    <tr>
                        <td>
                            <input type="text" name="id" id="id" value=${user_id} readonly="readonly">
                        </td>

                        <td>
                            <input type="text" name="username" id="username" value=${user.username}>
                        </td>
                        <td>
                            <input type="password" name="password" id="password" value=${user.password}>
                        </td>
                        <td>
                            <input type="text" name="sex" id="sex" value=${user.sex}>
                        </td>
                        <td>
                            <input type="text" name="age" id="age"value=${user.age}>
                        </td>
                    </tr>
                    </c:if>
                </c:forEach>
            </c:if>
            <tr>
                <td colspan="5">
                    <input type="submit" value="更新" align="center">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
