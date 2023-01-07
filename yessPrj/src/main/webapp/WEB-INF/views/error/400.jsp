<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<script src="https://kit.fontawesome.com/56e4f2c89f.js" crossorigin="anonymous"></script>
	<title>ERROR</title>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var = "root" value = "${pageContext.request.contextPath}" />
	<link rel="shortcut icon" href="${root}/resources/img/common/eLogo.png"/>
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Fredoka+One" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet">
	
	
<style>
* {
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
}

body {
  padding: 0;
  margin: 0;
}

#notfound {
  position: relative;
  height: 100vh;
}

#notfound .notfound {
  position: absolute;
  left: 50%;
  top: 50%;
  -webkit-transform: translate(-50%, -50%);
      -ms-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}

.notfound {
  max-width: 710px;
  width: 100%;
  text-align: center;
  padding: 0px 15px;
  line-height: 1.4;
}

.notfound .notfound-404 {
  height: 200px;
  line-height: 200px;
}

.notfound .notfound-404 h1 {
  font-family: 'Fredoka One', cursive;
  font-size: 168px;
  margin: 0px;
  color: #ff508e; 
  text-transform: uppercase;
}

.notfound h2 {
  font-family: 'Raleway', sans-serif;
  font-size: 22px;
  font-weight: 400;
  text-transform: uppercase;
  color: #222;
  margin: 0;
}

.notfound a {
  font-family: 'Raleway', sans-serif;
  display: inline-block;
  font-weight: 700;
  border-radius: 15px;
  text-decoration: none;
  color: #5C9AC1;
  margin-top: 50px;
}

.notfound a>.arrow {
  position: relative;
  top: -2px;
  border: solid #5C9AC1;
  border-width: 0 3px 3px 0;
  display: inline-block;
  padding: 3px;
  -webkit-transform: rotate(135deg);
      -ms-transform: rotate(135deg);
          transform: rotate(135deg);
}

@media only screen and (max-width: 767px) {
  .notfound .notfound-404 {
    height: 122px;
    line-height: 122px;
  }
  .notfound .notfound-404 h1 {
    font-size: 122px;
  }
}
.steady {
  animation: steady 0.5s infinite;
}

@keyframes steady {
  0% {
    transform: scale (1, 1);
  }
  75% {
    transform: scale(0.95, 1.05);
  }
}

.energy {
  animation: energy 0.5s infinite;
}

@keyframes energy {
  0% {
    transform: scale (1, 1);
  }
  25% {
    transform: scale(0.9, 1.1);
  }
  50% {
    transform: scale(1.2, 0.8);
  }
  75% {
    transform: scale(0.95, 1.05);
  }
}

.squish {
  animation: squish 2s ease-in infinite;
}

@keyframes squish {
  5% {
    transform: scale(1.2, 0.9);
  }
  10% {
    transform: scale(0.9, 1.2) translate(0, -4px);
  }
  15% {
    transform: scale(1);
  }
}
</style>
</head>

<body>
	<div id="notfound">
		<div class="notfound">
			<div class="notfound-404">
				<h1 class="energy">4 <i class="fa-solid fa-earth-americas"></i> 0</h1>
			</div>
			<h2>Oops, The Page you are looking for can't be found!</h2>

			<a href="${root}/main"><span class="arrow"></span>Return To Main</a>
		</div>
	</div>

</body>

</html>
