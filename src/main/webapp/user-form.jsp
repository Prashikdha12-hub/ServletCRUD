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
       
       <ul class="navbar-nav" style="background-color:#F65A83">
        <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li> 
       </ul>
       </nav>
   </header>
     <br>
       <div class="container col-md-5">
         <div class="card">
           <div class="card-body">
             <c:choose>
                <c:when test="${user != null}">
                  <form action="update" method="post">
                    <caption>
                      <h2>Edit User</h2>
                    </caption>
                    <input type="hidden" name="id" value="<c:out value='${user.id}'/>"/>
                    <fieldset class="form-group">
                      <label>User Name</label>
                      <input type="text" value="<c:out value='${user.name}'/>" class="form-control" name="name" required="required">
                    </fieldset>    
                    <fieldset class="form-group">
                      <label>User Email</label>
                      <input type="text" value="<c:out value='${user.email}'/>" class="form-control" name="email">
                    </fieldset> 
                    <fieldset class="form-group">
                      <label>User Country</label>
                      <input type="text" value="<c:out value='${user.country}'/>" class="form-control" name="country">
                    </fieldset> 
                    <button type="submit" class="btn btn-success" style="background-color:#AB46D2">Save</button>         
                  </form>
                </c:when>
                <c:otherwise>
                  <form action="insert" method="post">
                    <caption>
                      <h2>Add New User</h2>
                    </caption>
                    <fieldset class="form-group">
                      <label>User Name</label>
                      <input type="text" class="form-control" name="name" required="required">
                    </fieldset>    
                    <fieldset class="form-group">
                      <label>User Email</label>
                      <input type="text" class="form-control" name="email">
                    </fieldset> 
                    <fieldset class="form-group">
                      <label>User Country</label>
                      <input type="text" class="form-control" name="country">
                    </fieldset> 
                    <button type="submit" class="btn btn-success" style="background-color:#AB46D2">Save</button>         
                  </form>
                </c:otherwise>
             </c:choose>    
           </div>      	
         </div>    
       </div>
   

</body>
</html>
