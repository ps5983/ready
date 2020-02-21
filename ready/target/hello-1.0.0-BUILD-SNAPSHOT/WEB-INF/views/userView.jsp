<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<h3 align="center">회원정보 상세보기</h3>
</head>
<body>


<table class="table table-boarded" align = "center">

<tr>
<td width="15%">번호</td>
<td>${usermodel.USER_ID}</td>
</tr>

<tr>
<td width="15%">이름</td>
<td>${usermodel.USER_NAME}</td>
</tr>

<tr>
<td width="15%">이메일</td>
<td>${usermodel.USER_EMAIL}</td>
</tr>


<tr>
<td width="15%">전화번호</td>
<td>${usermodel.USER_TEL}</td>
</tr>

<tr>
<td colspan="2" style="white-space: pre-wrap;">${board.bo_content}</td>
</tr>


<tr>
<td colspan="2">
<input class="btn btn-success" type="button" value="목록" onclick="location.href='userList'"/><!-- 주소창 파라미터안쓰고 /형태썻기때문에 절대 경로로 넣어줘야 정상적으로 리스트로 넘어감 -->
<input class="btn btn-success" type="button" value="수정" onclick="location.href='userUpdate?user_id=${usermodel.USER_ID}'"/>
<input class="btn btn-success" type="button" value="삭제" onclick="location.href='userDelete?user_id=${usermodel.USER_ID}'"/>
</td>
</tr>

</table>


</body>
</html>