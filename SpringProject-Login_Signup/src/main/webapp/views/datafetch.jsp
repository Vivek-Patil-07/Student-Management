<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
    
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
    
    <h1 class="text-primary text-uppercase text-center mt-3">ALL DATA</h1> <br>
        
        
           <table border="3" ;">
    
    <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Email</th>
    <th>Password</th> 
    <th>delete</th>
	<th>Update</th>   
    </tr>
    
    <c:forEach var="emp" items="${e_data}">
    
    <tr>
    <td>${emp.id}</td>
    <td>${emp.name}</td>
    <td>${emp.email}</td>
    <td>${emp.password}</td>
    	<td><a href="<c:url value='/Delete/${emp.id }'/>">Delete</a></td>
	<td><a href="<c:url value='/${emp.id }'/>">Update</a></td>

    </tr>
    
    
    
    </c:forEach>
 
    </table>

         
         
    </div>
    </div>
 


</body>
</html>