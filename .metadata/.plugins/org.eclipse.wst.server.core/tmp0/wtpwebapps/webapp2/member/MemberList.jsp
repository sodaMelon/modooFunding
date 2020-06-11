<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 목록</title>
</head>
<body>
	<center>
	<table border='3'>
	<tr>
	<td>회원번호</td>
	<td>이메일</td>
	<td>이름</td>
	<td>가입일</td>
	</tr>

	<c:forEach var="member" items="${members}">
	<tr>
		<td>${member.no}</td>
		<td>${member.email}</td>
		<td><a href='IndexCtr?command=update_form&no=${member.no}'>${member.name}</a></td>
		<td>
		<td><a href='IndexCtr?command=delete&no=${member.no}'>[삭제]</a></td>
	</tr>
	</c:forEach>
	</table>
	<a href='IndexCtr?command=add'>회원가입하기</a>
	</center>
</body>
</html>