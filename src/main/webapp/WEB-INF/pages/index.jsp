
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>springMVC留言板</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="<c:url value='/static/main.css'/>" >
</head>
<body>
<h1>留言板</h1>
<div class="wrap">
    <form:form modelAttribute="message" method="post">
        <form:textarea path="message"/>
        <c:if test="${ifLogin==true}">
            <input type="submit" value="提交"/>
        </c:if>
        <c:if test="${ifLogin==false}">
            <div>
                您还未登录，请先
                <a href="/user/login">登录</a>
                或
                <a href="/user/register">注册</a>
            </div>
        </c:if>

    </form:form>
    <table>
        <thead>
        <td>用户名：</td>
        <td>评论：</td>
        </thead>
        <c:forEach var="message" items="${messages}">
            <tr>
                <td>${message[0]}</td>
                <td>${message[1]}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
