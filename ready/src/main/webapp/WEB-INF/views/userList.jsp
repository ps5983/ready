<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="document.userList.submit();">

<table align = "center" >
<thead>
<h1 align="center">ȸ�� ���</h1>

<tr>
<th>ȸ�� ���̵�</th>
<th>ȸ�� �̸�</th>
<th>�̸���</th>
<th>����ó</th>
</tr>
</thead>


<tbody>
<c:choose>
<c:when test="${usermodel.size()>0 }">
<c:forEach var="ABC" items="${usermodel}">
<tr>
<td>${ABC.USER_ID}</td>

<form name = hacking action="userView?user_id=${ABC.USER_ID}" method="post">
<td colspan="2" >${ABC.USER_NAME}</td>
<%-- onclick="location.href='userView?user_id=${ABC.USER_ID}'" --%>
</form>


<td>${ABC.USER_EMAIL}</td>
<td>${ABC.USER_TEL}</td>
</tr>

</c:forEach>
</c:when>
</c:choose>

<tr>
<td colspan="2">
<input class="btn" type="button" value="���" onclick="location.href = 'userInsert'"/>
</td>
</tr>
</tbody>
</table>


</body>
</html>