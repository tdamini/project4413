<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Result</title>
<link rel="StyleSheet" href="pro.css" type="text/css"/>
</head>
<body>
	<jsp:include page="../fragment/header.jsp" flush="true" />
	
	<div class="mysidebar">
    	<jsp:include page="../fragment/side-category.jsp" flush="true" />
    </div>
    
    <div class="main">
     <h1>Search Result</h1>
     
      <div class="panel">
      	<c:forEach items="${bookList}" var="stu">
			<div style="display:inline-block; margin-right: -300px;">
				<a href="${initParam['param2']}?item=${stu.path}"><img src="../project/images/${stu.path}.jpg" />
			    <h3>${stu.title} </h3></a>
			    <p>Author: ${stu.author} </p>
			    <p>Rating: ${stu.rating} </p>
			    <p>Price: ${stu.price} </p>
			    
		    </div>
	    </c:forEach>
      </div>
   </div>

<jsp:include page="../fragment/footer.jsp" flush="true" />
</body>
</html>