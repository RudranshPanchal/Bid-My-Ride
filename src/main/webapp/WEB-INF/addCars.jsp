<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta charset="ISO-8859-1">

		<title>Car Portal</title>
		<meta name="description" content="Free Bootstrap 4 Template by uicookies.com">
		<meta name="keywords" content="Free website templates, Free bootstrap themes, Free template, Free bootstrap, Free website template">

    <link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600|Montserrat:200,300,400" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/fonts/law-icons/font/flaticon.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/slick.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/slick-theme.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/helpers.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/landing-2.css">
</head>
<body>
<jsp:include page="${Header}"/>

<section class=" bg-color cover-bg-opacity text-left" id="section-home">
  <div class="container">
    <div class="row align-items-center justify-content-center">
       <div class="col-md-6 relative align-self-center m-5 p-5">
          <form:form action="#" class="bg-white rounded pb_form_v1" modelAttribute="addCars" style="background-image:  linear-gradient(#9a7d36, #000000);">
         <h4 class="text-center bg-success">${CarAdded}</h4>
          <h2 class="titular">Add Car</h2>
          <div class="form-group">
            <form:input path="carMake" required="required" type="text" class="form-control pb_height-50 reverse" placeholder="Car Make"/>
          </div>
          <div class="form-group">
            <form:input path="carModel" required="required" type="text" class="form-control pb_height-50 reverse" placeholder="Car Model"/>
          </div>
          <div class="form-group">
            <form:input path="registrationYear" required="required" type="text" class="form-control pb_height-50 reverse" placeholder="Registration Year"/>
          </div>
          <div class="form-group">
            <form:input path="price" required="required" type="text" class="form-control pb_height-50 reverse" placeholder="Price"/>
          </div>
          <div class="form-group">
            <form:textarea rows="5" path="description" required="required" type="text" class="form-control reverse" placeholder="Description"/>
          </div>
          <div class="form-group">
          	<form:input path="userCars" type="hidden" value="${userId}"/>
          	<form:input path="carId" type="hidden" />
            <input type="submit" class="btn btn-primary btn-lg btn-block pb_btn-pill  btn-shadow-orange" value="Post Car" style="
    background-color: #a66402;">
          </div>
        </form:form>
       </div>
     </div>
    </div>
</section>


<%@include file="footer.jsp" %>
</body>
</html>