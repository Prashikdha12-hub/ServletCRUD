<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Management Application</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

   <header>
       <nav class="navbar navbar-expand-md navbar-dark" style="background-color:#AB46D2">
       <div>
          <a href="http://www.violet-cat-415996.hostingersite.com/" class="navbar-brand">User Management</a> 
       
       </div>
       </nav>
   </header>
     <br>
      <div class="row">
      <div class="container">
       <h3 class="text-centre">List of Users </h3>
       <hr>
       <div class="container text-left">
         
         <a href="<%=request.getContextPath()%>/new" class="btn btn-success" style="background-color:#F65A83">Add New User</a>
       </div>
       <br>
       <table class="table table-boarded">
        <thead>
           <tr>
             <th>Name</th>
             <th>Email</th>
             <th>Country</th>
             <th>Actions</th>
            </tr>
         </thead>
         <tbody>
         <c:forEach var="user" items="${listUser}">
         
         <tr>
           <td>
             <c:out value="${user.name}"/>
           </td>
           <td>
             <c:out value="${user.email}"/>
           </td>
           <td>
             <c:out value="${user.country}"/>
           </td>
           <td><a href="edit?id=<c:out value='${user.id}'/>">Edit</a>
           <a href="delete?id=<c:out value='${user.id}'/>">Delete</a>
           </td>
           </tr>
           </c:forEach>
           </tbody>
       </table>    
      </div>     
     </div>
   

</body>
</html>