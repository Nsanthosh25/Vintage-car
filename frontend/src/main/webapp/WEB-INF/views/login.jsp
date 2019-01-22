<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vintage</title>
<style>
.formAlign
{
   width: 50%;
   position: relative;
   top: 20%;
   left:25%;
}

.background
{
   height: 1080px;
   background-image: url("resources/images/Login.jpg");
   background-repeat: no-repeat;
   background-size: 100%;
}

</style>
</head>
<body>
<div class="container-fluid">
<span style="color:red">${loginError}</span>
<span>${logoutSuccess}</span>
<form action="<c:url value='/j_spring_security_check'></c:url>" method="post">

<div class="background">
<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h3 class="title">Login Page</h3>
	               		<hr />
	               	</div>
	            </div> 
	            <div class="formAlign">
				<div class="main-login main-center">
					<form id="login-form" class="form-horizontal" action="perform_login" method="POST" role="form">
						<div class="form-group">
							<label for="UserName" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="j_username" id="username"  placeholder="Enter your EmailId"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="Password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
									<input type="password" class="form-control" id="password" name="j_password" placeholder="Enter your Password"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Login</button>
						</div>
					</form>
				</div>
				</div>
			</div>
		</div></div>
</form>
</div>

</body>
</html>
