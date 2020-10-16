<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-10-15
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <style type="text/css">
        td {
            text-align: center;
            width: 100px;
        }
    </style>
    <title>所有用户</title>
    <script type="text/javascript" src="<%=basePath%>/js/jquery.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="<%=basePath%>/js/jquery-3.5.1.min.js"charset="UTF-8"></script>
    <script type="text/javascript">
        searbt = function() {
                var searchInpt= document.getElementById("searchbox2").value;
                alert(searchInpt);
                $.post('<%=basePath%>user/findById' ,{id : searchInpt},function (data,status) {
                    if(status=="success"){
                        alert("成功"+status);
                        window.location.href="<%=basePath%>user/findById?id="+searchInpt;
                    }else {
                       alert("失败"+status);
                    }
                },'text')}
    </script>
</head>
<body>
<h1>用户列表</h1>
<div align="right">
    welcome:[<font color="#7fff00">${sessionScope.user.username}</font>]
    | <a href="logout">退出</a>
</div>
<div align="left">
    <label>检索</label>
    <input type="text" name="searchbox1" id="searchbox2">
    <input type="button" value="搜索" onclick="searbt();"/>
</div>
 <center>
     <table border="1">
         <tr>
             <th>id</th>
             <th>姓名</th>
             <th>密码</th>
             <th>性别</th>
             <th>年龄</th>
             <th colspan="2">操作</th>
         </tr>
    <c:if test="${!empty userList}">
        <c:forEach var="user" items="${userList}">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>${user.sex}</td>
                <td>${user.age}</td>
                <td><a href="toUpdate?id=${user.id}">修改</a></td>
                <td><a href="delete?id=${user.id}">删除</a></td>
            </tr>
        </c:forEach>
    </c:if>
     </table>
 </center>
   <div align="center">
       <a href="toAddUser">
           新增用户
       </a>
   </div>
</body>
</html>
