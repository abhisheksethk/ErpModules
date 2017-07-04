<%@page import="org.apache.taglibs.standard.lang.jstl.test.PageContextImpl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.text.* ,java.util.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
     <jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp" />
     <title>Employee Index</title>
  </head>
  <body>
     <jsp:include page="../layout/navbar-header.jsp" />
 <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header" >
      <a  class="btn btn-success buttom-middle" href="new" role="button">AddEmpPerDetail</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="#">View</a></li>
    </ul>
    <form class="navbar-form navbar-right">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
  </div>
</nav>
 
 <div class="container"> 
 <h2 class="text-center">Employee Personal Details</h2>
 
  <table class="table table-hover table-bordered " id="footer-margin1">
     <thead class="thead-inverse">
      <tr>   
        <th>Employee Name</th>
        <th>Gender</th>
        <th>Father<br>Name</th>
        <th>Mother<br>Name</th>
        <th>Martial<br>Status</th>
        <th>Spouse<br>Name</th>
        <th>Children</th>
        <th>Birth<br>Date</th>
        <th>Religion</th>
        <th>Identification</th>
        <th>Highest<br>Qualification</th>
        <th>Designation</th>
        <th>Joining<br>Date</th>
        <th>Total<br>WorkExperience</th>
        <th>Starting<br>ScalePay</th>
        <th>Starting<br>GrossPay</th>
        <th>Current<br>ScalePay</th>
        <th>Current<br>GrossPay</th>
        <th>Bank<br>Details</th>
        <th>Mobile<br>Number</th>
        <th>Address</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      
        <c:forEach var="temp" items="${empPerDetails}">
        <tr>
             <!-- construct an "update" link with EmpPersonalDetail id -->
				<c:url var="updateLink" value="/empPerDetail/update">
					<c:param name="empPerDetailId" value="${temp.empId}" />
				</c:url>
				<!-- construct an "delete" link with EmpPerDetail id -->
				<c:url var="deleteLink" value="/empPerDetail/delete">
					<c:param name="empPerDetailId" value="${temp.empId}" />
				</c:url>
				<c:set var="joinDate" value="${temp.joiningDate}" />
		        <c:set var="DOB" value="${temp.DOB}"></c:set> 
		        <c:set var="employee" value="${temp.empName}"></c:set>
         <td>${employee}</td>
		 <td>${temp.gender}</td>
		  <td>${temp.fatherName}</td>
		 <td>${temp.motherName}</td>
		  <td>${temp.martialStatus}</td>
		 <td>${temp.spouseName}</td>
		 <td>${temp.children}</td>
		 <td><fmt:formatDate type="date" pattern="dd-MM-YYYY" value="${DOB}" /></td>
		  <td>${temp.religion}</td>
		 <td>${temp.identification}</td>
		  <td>${temp.highestQualification}</td>
		 <td>${temp.designation}</td>
		 <td><fmt:formatDate type="date" pattern="dd-MM-YYYY" value="${joinDate}" /></td>
		 <td>${temp.totWorkExp}</td>
		  <td>${temp.startingScalePay}</td>
		 <td>${temp.startingGrossPay}</td>
		  <td>${temp.currentScalePay}</td>
		 <td>${temp.currentGrossPay}</td>
		 <td>${temp.bankDetail}</td>
		 <td>${temp.contactNumber}</td>
		 <td>${temp.address}</td>
	     <td>
			<!-- display the update link --> <a href="${updateLink}">Update</a>
			<a href="${deleteLink}"
			onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
		</td>	
		</tr>  
        </c:forEach>
      
    </tbody>
  </table>
   
</div>
    <jsp:include page="../layout/footer.jsp" />
  </body>
  </html>