<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Key Client - ${title}</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="css/bootstrap-readable-theme.css" rel="stylesheet">
<link href="css/myapp.css" rel="stylesheet">



<script>
	window.menu = '${title}';
	
	window.contextRoot = '${contextRoot}'
	
</script>
</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
	    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	        <div class="container">
	            <!-- Brand and toggle get grouped for better mobile display -->
	            <div class="navbar-header">
	                <a class="navbar-brand" href="/home">Key Client</a>
	            </div>
			</div>
		</nav>		

		<!-- Page Content -->

		<div class="content">		
	<div class="container">
		
		
		<div class="row">
			
			<div class="col-md-6 col-md-offset-3">
				
				<div class="panel panel-primary">
				
					<div class="panel-heading">
						<h4>Sign Up</h4>
					</div>
					
					<div class="panel-body">
										
						<form action="/register" method="POST" class="form-horizontal"
         					id="loginForm" >
						
							
							<div class="form-group">
								<label class="control-label col-md-4">First Name</label>
								<div class="col-md-8">
									<input type="text" name="firstName" class="form-control"
										placeholder="First Name" />
								</div>
							</div>


							<div class="form-group">
								<label class="control-label col-md-4">Last Name</label>
								<div class="col-md-8">
									<input type="text" name="lastName" class="form-control"
										placeholder="Last Name" />
								</div>
							</div>
						
							<div class="form-group">
								<label class="control-label col-md-4">Email</label>
								<div class="col-md-8">
									<input type="text" name="email" class="form-control"
										placeholder="abc@zyx.com" />
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4">Contact Number</label>
								<div class="col-md-8">
									<input type="text" name="contactNumber" class="form-control"
										placeholder="XXXXXXXXXX" maxlength="10" />
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4">Password</label>
								<div class="col-md-8">
									<input type="password" name="password" class="form-control"
										placeholder="Password" />
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4">Confirm Password</label>
								<div class="col-md-8">
									<input type="password" name="confirmPassword" class="form-control"
										placeholder="Re-type password" />
								</div>
							</div>
							
								

							<div class="form-group">
								<div class="col-md-offset-4 col-md-8">
									<button type="submit" name="_eventId_billing" class="btn btn-primary">
										Register <span class="glyphicon glyphicon-chevron-right"></span>
									</button>																	 
								</div>
							</div>
						
						
						</form>					
					
					
					</div>
				
				
				</div>
			
			
			</div>
		
		
		</div>
		
		
	</div>
</div>


		<!-- Footer comes here -->
		<%@include file="./common/footer.jsp"%>

		<!-- jQuery -->
		<script src="js/jquery.js"></script>

		

		<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>
		
		

	</div>

</body>

</html>