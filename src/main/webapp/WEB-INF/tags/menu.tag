<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="navbar navbar-static-top">
	<div class="navbar-inner">
		<div class="container">
			<ul class="nav">		
			<span class="brand">
				<a href="/home">ABC Company</a>
			</span>
			 <li id ="about" >
              <a  href="/about">About</a>
            </li>
            
            
            <li id ="contact" >
              <a href="/contact">Contact</a>
            </li>
           <c:if test="${not empty token}"> 
			<li id="master">
	                	<a  href="/master">Master</a>
	         </li> 
	         <li id="transaction">
	                	<a  href="/transaction">Transaction</a>
	             	</li>
	             	<li id="settings">
	                	<a  href="/settings">Settings</a>
	             	</li>
			    	<li id="reports">
	                	<a  href="/reports">Reports</a>
	             	</li>
		     </c:if>  
		         
          </ul>
          
         <ul class="nav pull-right">
	           
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
			    	<li id="uinfo">
		            	<h4 style='color:#7d7979;font-size:17px;'> Welcome ${userfullname}  </h4>
		         	</li>
		         	
			    		
					<li id="logout">
		            	<a href="/logout">Logout</a>
		         	</li> 
		         </c:if>                   			    	
			 </ul>	
		</div>
	</div>
</div>
