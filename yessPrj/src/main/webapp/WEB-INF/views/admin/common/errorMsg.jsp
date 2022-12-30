<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러...</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<script>
    var msg = "<c:out value='${msg}'/>";
    Swal.fire({
            icon: 'error',                         // Alert 타입
            title: '문제가 있어요',         // Alert 제목
            text: msg,  // Alert 내용
        });

    //alert(msg);
    history.back();
</script>
</html>