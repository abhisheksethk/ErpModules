<%@page import="org.apache.taglibs.standard.lang.jstl.test.PageContextImpl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.text.* ,java.util.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
     <jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp" />
     <title>Employee Experience Detail</title>
  </head>
  <body>
     <jsp:include page="../layout/navbar-header.jsp" />
 <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header" >
      <a  class="btn btn-success buttom-middle" href="new" role="button">AddEmpExpDetail</a>
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
 <h2 class="text-center">Employee Experience Details</h2>
 
  <table class="table table-hover table-bordered " id="footer-margin1">
     <thead class="thead-inverse">
      <tr>   
        <th>JOB ID</th>
        <th>Serial</th>
        <th>JobType</th>
        <th>Designation</th>
        <th>Company<br>Name</th>
        <th>Company<br>Detail</th>
        <th>Starting<br>ScalePay</th>
        <th>Starting<br>GrossPay</th>
        <th>Highest<br>ScalePay</th>
        <th>Highest<br>GrossPay</th>
        <th>Joining<br>Date</th>
        <th>Job<br>QuitDate</th>
        <th>Profession</th>
        <th>Specialization</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      
        <c:forEach var="temp" items="${empExpDetails}">
        <tr>
             <!-- construct an "update" link with EmpExperienceDetail id -->
				<c:url var="updateLink" value="/empExpDetail/update">
					<c:param name="empExpDetailId" value="${temp.jobId}" />
				</c:url>
				<c:set var="joinDate" value="${temp.jobJoiningDate}" />
		        <c:set var="jobQuitDate" value="${temp.jobQuitDate}"></c:set>
         <td>${temp.jobId}</td>
		 <td>${temp.serial}</td>
		  <td>${temp.jobType}</td>
		 <td>${temp.designation}</td>
		  <td>${temp.compName}</td>
		 <td>${temp.compDetail}</td>
		 <td>${temp.empStartingScalePay}</td>
		  <td>${temp.empStartingGrossPay}</td>
		 <td>${temp.empHighestScalePay}</td>
		  <td>${temp.empHighestGrossPay}</td>
		 <td><fmt:formatDate type="date" pattern="dd-MM-YYYY" value="${joinDate}" /></td>
		 <td><fmt:formatDate type="date" pattern="dd-MM-YYYY" value="${jobQuitDate}" /></td>
		 <td>${temp.profession}</td>
		  <td>${temp.specialization}</td>
	     <td>
			<!-- display the update link --> <a href="${updateLink}">Update</a>
		</td>	
		</tr>  
        </c:forEach>
      
    </tbody>
  </table>
    <ul class="pager">
      <li ><a href="${pageContext.request.contextPath}/acadmicDetail/index">Next</a></li>
      </ul> 
</div>
    <jsp:include page="../layout/footer.jsp" />
  </body>
  </html>