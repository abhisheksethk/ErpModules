<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp" />
</head>
<body>
  
	<jsp:include page="../layout/empIndexheader.jsp" />
     <div class="container">
        <div class="alert alert-success alert-dismissable fade in">
         <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Success!</strong> Successfully LogIn.
        </div>
     </div>
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
     
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>
