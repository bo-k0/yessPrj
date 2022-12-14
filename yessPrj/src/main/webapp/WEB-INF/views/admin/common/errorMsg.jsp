<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<script>
	window.onload=function(){
    Swal.fire({
            icon: 'warning',     // Alert 타입
            title: "${msg}",// Alert 제목
            text: '제대로 좀 해봐요', 		   // Alert 내용
   		   	confirmButtonText: '다시하기', // confirm 버튼 텍스트 지정
        }).then(result => {
    		   // 만약 Promise리턴을 받으면,
    		   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면           		   
    		      window.history.back();
    		   }
   		});;
	}
</script>
</html>