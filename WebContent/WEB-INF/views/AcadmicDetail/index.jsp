<%@page import="org.apache.taglibs.standard.lang.jstl.test.PageContextImpl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.text.* ,java.util.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
     <jsp:include page="../layout/bootstrapCdn&ExternalCSS&JavaScript.jsp" />
     <title>Employee Acadmic Detail</title>
  </head>
  <body>
     <jsp:include page="../layout/navbar-header.jsp" />
 <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header" >
      <a  class="btn btn-success buttom-middle" href="new" role="button">AddAcadmicDetail</a>
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
 <h2 class="text-center">Employee Acadmic Details</h2>
 
  <table class="table table-hover table-bordered " id="footer-margin1">
     <thead class="thead-inverse">
      <tr>   
        <th>Acadmic ID</th>
        <th>Serial</th>
        <th>CertifiedDegree</th>
        <th>Discipline</th>
        <th>BoardUniversity</th>
        <th>PassingYear</th>
        <th>MarksObtained</th>
        <th>TotalMarks</th>
        <th>CGPA / % </th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      
        <c:forEach var="temp" items="${acadmicDetails}">
        <tr>
             <!-- construct an "update" link with childDetail id -->
				<c:url var="updateLink" value="/acadmicDetail/update">
					<c:param name="acadmicDetailId" value="${temp.acadmicId}" />
				</c:url>
				<c:set var="passingYear" value="${temp.passingYear}" />
         <td>${temp.acadmicId}</td>
		 <td>${temp.serial}</td>
		  <td>${temp.certifiedDegree}</td>
		 <td>${temp.discipline}</td>
		 <td>${temp.boardUniversity}</td>
		  <td><fmt:formatDate type="date" pattern="dd-MM-YYYY" value="${passingYear}" /></td>
		   <td>${temp.marksObtained}</td>
		   <td>${temp.totalMarks}</td>
		   <td>${temp.cgpaOrPercentange}</td>
	     <td>
			<!-- display the update link --> <a href="${updateLink}">Update</a>
		</td>	
		</tr>  
        </c:forEach>
      
    </tbody>
  </table>
   <ul class="pager">
       <li class="previous"><a href="${pageContext.request.contextPath}/empExpDetail/index">Previous</a></li>
      <li class="next"><a href="${pageContext.request.contextPath}/childDetail/index">Next</a></li>
      </ul>
</div>
    <jsp:include page="../layout/footer.jsp" />
  </body>
  </html>