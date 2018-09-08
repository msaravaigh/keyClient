<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="shared" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<shared:header></shared:header>
<body>
<shared:menu></shared:menu>

	<div class="wrapper">
		<div class="content">
			
	   <div class="container">
	    
	   	<c:if test="${not empty message}">
			<div class="row">
				<div class="col-xs-12 col-md-offset-2 col-md-8">
					<div class="alert alert-danger fade in">${message}</div>
				</div>
			</div>
		</c:if>
	         
	   	<c:if test="${not empty logout}">
			<div class="row">
				<div class="col-xs-12 col-md-offset-2 col-md-8">
					<div class="alert alert-success">${logout}</div>
				</div>
			</div>
		</c:if>
	       
	    <div class="row">
	     
	     <div class="col-md-offset-3 col-md-6">
	      
	      <div class="panel panel-primary">
	       
	       <div class="panel-heading">
	        <h2>Please Login</h2>
	       </div>
	       
	       <div class="panel-body">
	        <form action="/login" method="POST" class="form-horizontal" id="loginForm">
	         <div class="form-group">
	          <label for="username" class="col-md-4 control-label">Email: </label>
	          <div class="col-md-8">
	           <input type="text" name="email" id="email" class="form-control"/>
	          </div>
	         </div>
	         <div class="form-group">
	          <label for="password" class="col-md-4 control-label">Password: </label>
	          <div class="col-md-8">
	           <input type="password" name="password" id="password" class="form-control"/>
	          </div>
	         </div>
	         <div class="form-group"> 
	          <div class="col-md-8">
	           <input type="submit" value="Login" class="col-md-4 button"/>
	          </div>
	         </div>
	        </form>
	       
	       </div>     
	      
	      </div>     
	     </div>
	     
	    </div>    
	   
	   </div>
			
		</div>

	</div>

</body>

</html>