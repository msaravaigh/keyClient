
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" 
        aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
          <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            
            <li id ="home" class="nav-item">
              <a class="nav-link" href="/home">ABC Company</a>
            </li>
            
            <li id ="about" class="nav-item">
              <a class="nav-link" href="/about">About</a>
            </li>
            
            
            <li id ="contact" class="nav-item">
              <a class="nav-link" href="/contact">Contact</a>
            </li>
            <c:if test="${not empty token}"> 
			    	<li id="master">
	                	<a class="nav-link" href="/master">Master</a>
	             	</li> 
	             	<li id="transaction">
	                	<a class="nav-link" href="/transaction">Transaction</a>
	             	</li>
	             	<li id="settings">
	                	<a class="nav-link" href="/settings">Settings</a>
	             	</li>
			    	<li id="reports">
	                	<a class="nav-link" href="/reports">Reports</a>
	             	</li>
		         </c:if>
		         
          </ul>
          
          <ul class="nav navbar-nav navbar-right">
	           
	            <c:if test="${ empty token}">
	            <!--  
	             <li id="signup">
	                <a href="/register">Sign Up</a>
	             </li> 
	             --> 
				<li id="login">
	               <a href="/login">Login</a>
	              </li> 			    	
			    </c:if>  
			    <c:if test="${not empty token}"> 
			    	
			    	<li class="divider"></li>
			    		<h3 style='color:#fff;font-size:17px;'> Welcome ${userfullname}  </h3>
			     <li class="divider"></li>	                                   
					<li id="logout">
		            	<a href="/logout">Logout</a>
		         	</li> 
		         </c:if>                   			    	
			 </ul>		
			    
        </div>
      </div>
    </nav>