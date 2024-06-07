<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <%@include file="links.jsp" %>
</head>
<body>
 
	
	
	
	
	
	
	
	
	 <div class="container-fluid ">
    <%@include file="navbar.jsp" %>
   
    
    <div class="card my-2 py-5">
   
    <h1 class="text-primary text-uppercase text-center mt-3">hello ${data.name} welcome to page</h1>
        <br>
        
     <span class="border" style="margin-right:400px;margin-left:400px" >
        <div style="padding-left: 100px;padding-top:30px;padding-bottom:30px;">
         <form action="edit/${data.id}" method="post">
	
	
	<!-- id <input type="hidden" name=id value=${data.id }><br><br> - -->
	Name  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name=name value=${data.name }><br><br> 
	 
	Email&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name=email value=${data.email }><br><br> 
	password &nbsp&nbsp&nbsp&nbsp<input type="text" name=password value=${data.password }><br><br> 
	
	<br>  
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		 <button  type="submit" class="btn btn-outline-primary text-center">Submit</button>
	
	</form>
         </div>
	</span> 
         
         
         
    </div>
    </div>
    </div>
 
 
	
	
	
	
</body>
</html>