<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Recommendations</title>
    <style>
        <%@include file="/WEB-INF/views/css/style.css"%>
    </style>
 </head>
 <body id="recommendations">
    <jsp:include page="_menu.jsp"></jsp:include>
 
    <h1>Best Seller</h1>
 
    <p style="color: red;">${errorString}</p>
 	
    <div class="flightsData">
    	<h2> ${bestSeller.depCity} to ${bestSeller.arrCity} </h2>
    		${bestSeller.departAirport} to ${bestSeller.arrivalAirport} $${bestSeller.fare} <br>
			
			<fmt:formatDate value="${bestSeller.departDate}" pattern="yyyy-MM-dd" />
			to 
			<fmt:formatDate value="${bestSeller.arrivalDate}" pattern="yyyy-MM-dd" />
			<br>
			<fmt:formatDate value="${bestSeller.departDate}" pattern="HH:mm:ss" />
			to
			<fmt:formatDate value="${bestSeller.arrivalDate}" pattern="HH:mm:ss" />
			<div class="chooseFlight"> <a href="${pageContext.request.contextPath}/makeReservation">Choose Flight</a></div>
	</div>
           
    <h1> Personalized Flight Suggestions </h1>       
    <div class="flightsData">
    	<c:forEach items="${personalizedFlights}" var="flight">
    		<h2> ${flight.depCity} to ${flight.arrCity} </h2>
    		${flight.departAirport} to ${flight.arrivalAirport} $${flight.fare} <br>
			
			<fmt:formatDate value="${flight.departDate}" pattern="yyyy-MM-dd" />
			to 
			<fmt:formatDate value="${flight.arrivalDate}" pattern="yyyy-MM-dd" />
			<br>
			<fmt:formatDate value="${flight.departDate}" pattern="HH:mm:ss" />
			to
			<fmt:formatDate value="${flight.arrivalDate}" pattern="HH:mm:ss" />
			<div class="chooseFlight"> <a href="${pageContext.request.contextPath}/makeReservation">Choose Flight</a></div>
    	</c:forEach>
    
    </div>
 </body>
</html>