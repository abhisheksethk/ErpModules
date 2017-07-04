<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="bootstrapCdn&ExternalCSS&JavaScript.jsp" />
</head>
<body>
  
	<jsp:include page="navbar-header.jsp" />
    <c:forEach var="temp" items="${userDetails}">
         <p>${temp.serial}</p>  
    </c:forEach> 
	<jsp:include page="footer.jsp" />
</body>
</html>