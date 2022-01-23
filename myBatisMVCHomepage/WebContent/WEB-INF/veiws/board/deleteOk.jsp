<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 삭제 획인</title>
</head>
<body>
	<c:set var ="root" value="${pageContext.request.contextPath}"/>
	<c:if test="${check > 0}">
		<script type="text/javascript">
			alert("게시글이 삭제 되었습니다.");
			location.href="${root}/board/list.do";
		</script>
	</c:if>
	<c:if test="${check == 0}">
		<script type="text/javascript">
			alert("게시글삭제에 실패하였습니다.\n비밀번호를 확인하세요");
			location.href="${root}/board/delete.do?boardNumber=${boardNumber}&pageNumber=${pageNumber}";
		</script>
	</c:if>
</body>
</html>