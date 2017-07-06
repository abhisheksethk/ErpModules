<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp" />
</head>
<body>
  
	<jsp:include page="../layout/navbar-header.jsp" />
     <c:if test="${sessionScope.employee ==0}">
     <div class="container">
        <div class="alert alert-success alert-dismissable fade in">
         <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        
          <strong>Successfully Employee Created</strong>
        
        </div>
     </div> 
     </c:if> 
     <% String name=request.getParameter("userName");
       session.setAttribute("User",name); 
     %>
   <c:if test="${(sessionScope.employee !=0)&&(session.serial !=0)}">  
<div class="container">
  <p>You are here</p>         
  <table class="table table-bordered">
    <thead >
      <tr> 
        <th>Items</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="bold">EmpPerDetail</td>
        <td>Here You can see the Personal detail about an Employee</td>
      </tr>
      <tr>
       <td class="bold">EmpExpDetail</td>
        <td>Here You can see the Experience detail about an Employee</td>
      </tr>
      <tr>
        <td class="bold">EmpChildDetail</td>
        <td>Here You can see the Child detail of an Employee</td>
      </tr>
      <tr>
        <td class="bold">EmpAcadmicDetail</td>
        <td>Here You can see the Acadmic detail of an Employee</td>
      </tr>
    </tbody>
  </table>
</div>
    </c:if> 
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>
