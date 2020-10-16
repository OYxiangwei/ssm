<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-10-15
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增用户</title>
</head>
<body>
    <FORM name="addUserForm" method="post" action="add">
        <table border="1">
            <tr>
                <th>姓名</th>
                <th>密码</th>
                <th>性别</th>
                <th>年龄</th>
            </tr>
            <tr>
                <td>
                    <input type="text" name="username" id="username">
                </td>
                <td>
                    <input type="password" name="password">
                </td>
                <td>
                    <input type="text" name="sex">
                </td>
                <td>
                    <input type="text" name="age">
                </td>
            </tr>
            <tr>
                <td colspan="5">
                    <input type="submit" value="新增">
                </td>
            </tr>

        </table>
    </FORM>
</body>
</html>
