<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="bc" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sb" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="ISO-8859-1">

<title>Car Portal</title>
<meta name="description" content="Free Bootstrap 4 Template by uicookies.com">
<meta name="keywords" content="Free website templates, Free bootstrap themes, Free template, Free bootstrap, Free website template">

<link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600|Montserrat:200,300,400" rel="stylesheet">
<link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="assets/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="assets/fonts/law-icons/font/flaticon.css">
<link rel="stylesheet" href="assets/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/slick-theme.css">
<link rel="stylesheet" href="assets/css/helpers.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/landing-2.css">
</head>
<body>
<jsp:include page="${Header}"/>

<section class="row bg-color cover-bg-opacity text-left pb_gradient_v3 " id="section-home">
<div class="container">
  <div class="col-md-11 m-5 p-4">
  
    <div class="card rounded" style="background-image: linear-gradient(286deg, #020101, #ac8787);">
        <div class="card-body" style="background-image: linear-gradient(286deg, #020101, #ac8787);">
            <div class="row">
                <div class="col-lg-5 col-md-5 col-sm-6">
                    <div class="white-box text-center"><img src="https://img.freepik.com/free-vector/front-car-concept-illustration_114360-7978.jpg?w=1060&t=st=1661581767~exp=1661582367~hmac=30259ebd11653a07f99205c189292d3abae098e66cacca437f6a06591d1ceeff" class="img-responsive" style="height:350px; width:350px;"></div>
                </div>
                <div class="col-lg-7 col-md-7 col-sm-6">
                    <h4 class="box-title mt-5">${carDet.carMake} ${carDet.carModel} ${carDet.registrationYear}</h4>
                    <p>${carDet.description}</p>
                    <p class="font-italic">posted by ${carDet.userCars.getFullName()}</p>
                    <h2 class="mt-5">
                        $${carDet.price}
                    </h2>
					<bc:form modelAttribute="carBid" method="post" action="/bidCars">
						<label>Bid Price</label><br>
						<bc:input path="bidId" type="hidden" />
						$<bc:input path="bidPrice" required="required" type="text" pattern="[0-9]+" placeholder="${carDet.price}" />
						<bc:input path="userBid" type="hidden" value="${userId}" />
						<bc:input path="carsBid" type="hidden" value="${carDet.carId}" />
	                    <button class="btn btn-primary btn-rounded">
	                    	<i class="fa fa-shopping-cart"></i> Bid Now
	                    </button>
					</bc:form>
					<br>
					<form action="/updateCars/${carDet.carId}">		
						<button ${editProfile} class="btn btn-primary btn-rounded" style="width:100px;">Edit</button>
					</form>
					<form action="/deleteCars/${carDet.carId}">		
						<button ${editProfile} class="btn btn-danger btn-rounded" style="width:100px;">Delete</button>
					</form>
                </div>
            </div>
        </div>
    </div>
    
    <div class="card rounded">
        <div class="card-body">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                  <h1 class="h3">-- Bidding List --</h1>
			      <table class="table text-center">
		            <thead class="u-align-center u-grey-10 u-table-header u-table-header-1">
		              <tr style="height: 66px;">
		                <th class="h4 u-border-2 u-border-palette-1-light-1 u-palette-2-light-1 u-table-cell u-table-cell-1">Bid Price</th>
		                <th class="h4 u-border-2 u-border-palette-1-light-1 u-palette-2-base u-table-cell u-table-cell-2">Name</th>
		              </tr>
		            </thead>
		            <tbody class="u-align-center u-grey-90 u-table-alt-grey-80 u-table-body u-table-body-1">
		            <sb:forEach items="${carBidding}" var="b">
		              <tr>
		                <td class="h6 u-border-2 u-border-grey-75 u-table-cell u-table-cell-5">$${b.getBidPrice()}</td>
		                <td class="h6 u-border-2 u-border-grey-75 u-table-cell u-table-cell-6">${b.getUserBid().getFullName()}</td>
		              </tr>
		              </sb:forEach>
		            </tbody>
		          </table>
                </div>
            </div>
        </div>
    </div>
    
  </div>
</div>
</section>

<%@include file="footer.jsp" %>
</body>
</html>