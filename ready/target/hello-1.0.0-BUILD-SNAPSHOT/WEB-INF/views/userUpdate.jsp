<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>

<script type="text/javascript">

function fn_save(){
	
	if(!validate()){
		
		return;
	}
	
	var frm = document.userUpdate;
	
	frm.submit();
	
}
function validate(){
	var frm = document.userUpdate;
	
	if(frm.USER_NAME.value == ""){
		alert("이름을 입럭하세요");
		return false;
	}
	if(frm.USER_EMAIL.value == ""){
		alert("이메일을 입럭하세요");
		return false;
	}
	if(frm.USER_TEL.value == ""){
		alert("전화번호을 입럭하세요");
		return false;
	}
	return true;
}

</script>


<title>Insert title here</title>
</head>
<body>

<form class="form" name="userUpdate" action="userUpdate" method="post">

<table class="table table-boarded">

<thead>
<h3>유저 정보 수정</h3>
</thead>
<tbody>

<tr>
<td>유저 이름</td>
<td><input class="form-control" type="text" name="USER_NAME" value="${usermodel.USER_NAME}"/></td>
</tr>

<tr>
<td>유저 이메일</td>
<td><input class="form-control" type="text" name="USER_EMAIL" value="${usermodel.USER_EMAIL}"/></td>
</tr>

<tr>
<td>유저 전화번호</td>
<td><input class="form-control" type="text" name="USER_TEL" value="${usermodel.USER_TEL}"/></td>
</tr>

<tr>
<td colspan="2">
<input class="btn" type="button" value="등록" onclick="fn_save()"/>
<input class="btn" type="button" value="목록" onclick="location.href = 'userList'"/>
</td>
</tr>



</tbody>
</table>


</form>

</body>
</html>