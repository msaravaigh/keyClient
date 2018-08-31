<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

  
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Key Client -${title} </title>

<!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

	<!-- Bootstrap Readable Theme -->
	<link href="css/bootstrap-readable-theme.css" rel="stylesheet">
	<link href="css/myapp.css" rel="stylesheet">
	
  </head>

  <body>
	
	<div class ="wrapper">
   
    <!-- Navigation -->
    <%@include file="./common/header.jsp" %>

    <!-- Page Content or Home Content-->    
    <div class="content">	  
	    					
	  </div>      
    
    <!-- Footer -->
   <%@include file ="./common/footer.jsp" %>  
		
	</div>
	
  </body>

</html>