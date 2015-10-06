<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false" %>
<jsp:useBean id="now" class="java.util.Date" scope="request" />

<!DOCTYPE html>   

<head>
	<meta charset="utf-8">
	
	<script type="text/javascript" src="<%=request.getContextPath()%>/index/js/libs/jquery.min.js"></script>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Union Peruana</title>
	<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/index/css/isr-screen.css?v=1">	
	<style>
	#pw_hint {
	position: absolute;
	top: 13px;
	left: 210px;
	}
	.ie7 #pw_hint {left: 215px;}
  </style>

</head>
<!-- !Body -->
<body class="login" >
	<div class="wrapper-header">
		<header class="container_12">
			<form class="row-fluid form-signin" id="form-login" action="<%=request.getContextPath() %>/j_spring_security_check" method="post" AUTOCOMPLETE="off">
				<label for="username">Ingrese: </label>	
				<input type="text" name="j_username" id="username" class="textInput" placeholder="Email" autocomplete="off">
				<input type="password" name="j_password" id="password" class="textInput" autocomplete="off">
				<input type="text" id="passwordPlaceholder" class="textInput" placeholder="Password" style="display: none;"/>
				<input type="submit" name="submit" class="button" value="Ingresar" />
			</form>
		</header>
	</div><!--/ div.wrapper-header /-->
		
</body>
</html>

